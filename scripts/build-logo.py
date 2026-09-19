#!/usr/bin/env python3
"""Vectoriza el isotipo ProLince (PNG de 2 tintas) a SVG.

Uso: python3 scripts/build-logo.py <origen.png> [dir_salida]

Marching squares con interpolación subpíxel sobre la cobertura de tinta,
simplificación Ramer-Douglas-Peucker y ajuste a cúbicas preservando esquinas.
Imprime el IoU frente al original como control de fidelidad.
"""
import math, os, sys, warnings
import numpy as np
from PIL import Image, ImageDraw

warnings.filterwarnings("ignore")

INK = (2, 67, 52)          # #024334
LEVEL, EPS, CORNER, K = 0.5, 0.3, 70.0, 0.32

def coverage(path, ink):
    arr = np.asarray(Image.open(path).convert("RGB"), dtype=np.float64) / 255.0
    den = 1.0 - np.array(ink, dtype=np.float64) / 255.0
    return np.clip(((1.0 - arr) / den) @ (den / den.sum()), 0.0, 1.0)

CASES = {1:[('L','B')], 2:[('B','R')], 3:[('L','R')], 4:[('T','R')], 6:[('T','B')],
         7:[('L','T')], 8:[('T','L')], 9:[('T','B')], 11:[('T','R')], 12:[('L','R')],
         13:[('B','R')], 14:[('L','B')]}

def marching_squares(F, level=LEVEL):
    B = F >= level
    tl, tr, bl, br = B[:-1,:-1], B[:-1,1:], B[1:,:-1], B[1:,1:]
    idx = (tl.astype(np.uint8)<<3)|(tr.astype(np.uint8)<<2)|(br.astype(np.uint8)<<1)|bl.astype(np.uint8)
    center = (F[:-1,:-1] + F[:-1,1:] + F[1:,:-1] + F[1:,1:]) / 4.0
    ii, jj = np.nonzero((idx != 0) & (idx != 15))
    pos = {}
    def H_(i, j):
        k = ('h', i, j)
        if k not in pos:
            a, b = F[i,j], F[i,j+1]
            t = 0.5 if a == b else (level-a)/(b-a)
            pos[k] = (j + min(max(t,0.0),1.0), float(i))
        return k
    def V_(i, j):
        k = ('v', i, j)
        if k not in pos:
            a, b = F[i,j], F[i+1,j]
            t = 0.5 if a == b else (level-a)/(b-a)
            pos[k] = (float(j), i + min(max(t,0.0),1.0))
        return k
    adj = {}
    for i, j in zip(ii.tolist(), jj.tolist()):
        c = int(idx[i,j])
        E = {'T': lambda: H_(i,j), 'B': lambda: H_(i+1,j), 'L': lambda: V_(i,j), 'R': lambda: V_(i,j+1)}
        if c == 5:
            segs = [('T','L'),('B','R')] if center[i,j] >= level else [('T','R'),('L','B')]
        elif c == 10:
            segs = [('T','R'),('L','B')] if center[i,j] >= level else [('T','L'),('B','R')]
        else:
            segs = CASES[c]
        for a, b in segs:
            n1, n2 = E[a](), E[b]()
            adj.setdefault(n1, []).append(n2)
            adj.setdefault(n2, []).append(n1)
    loops, seen = [], set()
    for start in adj:
        if start in seen:
            continue
        loop, cur, prev = [], start, None
        while cur is not None and cur not in seen:
            seen.add(cur); loop.append(cur)
            nxt = next((n for n in adj[cur] if n != prev and n not in seen), None)
            prev, cur = cur, nxt
        if len(loop) >= 4:
            loops.append([pos[k] for k in loop])
    return loops

def rdp(pts, eps):
    P = np.asarray(pts)
    if len(P) < 3:
        return [tuple(p) for p in P]
    keep = np.zeros(len(P), bool); keep[0] = keep[-1] = True
    stack = [(0, len(P)-1)]
    while stack:
        a, b = stack.pop()
        if b <= a + 1:
            continue
        seg = P[b] - P[a]; L = math.hypot(*seg)
        rel = P[a+1:b] - P[a]
        d = np.hypot(*rel.T) if L == 0 else np.abs(seg[0]*rel[:,1] - seg[1]*rel[:,0]) / L
        m = int(np.argmax(d))
        if d[m] > eps:
            k = a + 1 + m; keep[k] = True
            stack += [(a, k), (k, b)]
    return [tuple(p) for p in P[keep]]

def tangents(P, corner_deg):
    n = len(P); lim = math.cos(math.radians(180.0 - corner_deg)); out = []
    for i in range(n):
        p, a, b = P[i], P[(i-1) % n], P[(i+1) % n]
        v1, v2 = p - a, b - p
        n1, n2 = np.linalg.norm(v1), np.linalg.norm(v2)
        if n1 < 1e-9 or n2 < 1e-9 or float(np.dot(v1/n1, v2/n2)) < lim:
            out.append(np.zeros(2)); continue
        d = b - a; nd = np.linalg.norm(d)
        out.append(np.zeros(2) if nd < 1e-9 else d / nd)
    return out

def fmt(v):
    s = f"{v:.1f}"
    return s[:-2] if s.endswith(".0") else s

def to_path(P, tg, k=K):
    n = len(P)
    d = [f"M{fmt(P[0][0])} {fmt(P[0][1])}"]
    for i in range(n):
        p0, p1 = P[i], P[(i+1) % n]
        t0, t1 = tg[i], tg[(i+1) % n]
        if not t0.any() and not t1.any():          # tramo recto: L en vez de C
            d.append(f"L{fmt(p1[0])} {fmt(p1[1])}")
            continue
        seg = float(np.linalg.norm(p1 - p0))
        c1, c2 = p0 + t0 * (k*seg), p1 - t1 * (k*seg)
        d.append(f"C{fmt(c1[0])} {fmt(c1[1])} {fmt(c2[0])} {fmt(c2[1])} {fmt(p1[0])} {fmt(p1[1])}")
    return "".join(d) + "Z"

def flatten(P, tg, k=K, steps=14):
    n = len(P); out = []
    for i in range(n):
        p0, p1 = P[i], P[(i+1) % n]
        seg = float(np.linalg.norm(p1 - p0))
        c1, c2 = p0 + tg[i]*(k*seg), p1 - tg[(i+1) % n]*(k*seg)
        for s in range(steps):
            t = s/steps; u = 1-t
            out.append(tuple(u**3*p0 + 3*u*u*t*c1 + 3*u*t*t*c2 + t**3*p1))
    return out

def main():
    src = sys.argv[1]
    out = sys.argv[2] if len(sys.argv) > 2 else "public/brand"
    os.makedirs(out, exist_ok=True)
    F = coverage(src, INK)
    loops = marching_squares(F)
    simp = [s for s in (rdp(l + [l[0]], EPS)[:-1] for l in loops) if len(s) >= 4]
    allp = np.concatenate([np.asarray(s) for s in simp])
    mn, mx = allp.min(axis=0), allp.max(axis=0)
    w, h = mx - mn
    polys = [[np.array(p) - mn for p in s] for s in simp]
    tgs = [tangents(p, CORNER) for p in polys]
    d_all = "".join(to_path(p, t) for p, t in zip(polys, tgs))

    W0, H0 = int(round(w)), int(round(h))
    acc = np.zeros((H0, W0), bool)
    for p, t in zip(polys, tgs):
        m = Image.new("1", (W0, H0), 0)
        ImageDraw.Draw(m).polygon(list(flatten(p, t)), fill=1)
        acc ^= np.asarray(m, bool)
    og = (F >= LEVEL)[int(round(mn[1])):int(round(mn[1]))+H0, int(round(mn[0])):int(round(mn[0]))+W0]
    print(f"contornos={len(simp)} nodos={sum(len(s) for s in simp)} "
          f"IoU={(acc & og).sum()/(acc | og).sum():.4f} viewBox=0 0 {fmt(w)} {fmt(h)}")

    head = f'<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 {fmt(w)} {fmt(h)}" role="img" aria-label="ProLince"><title>ProLince</title>'
    for name, fill in (("prolince-isotipo.svg", f'#{INK[0]:02X}{INK[1]:02X}{INK[2]:02X}'),
                       ("prolince-isotipo-mono.svg", "currentColor")):
        with open(os.path.join(out, name), "w") as fh:
            fh.write(f'{head}<path fill="{fill}" fill-rule="evenodd" d="{d_all}"/></svg>\n')
        print(f"  {name}: {os.path.getsize(os.path.join(out, name))/1024:.1f} KB")

main()
