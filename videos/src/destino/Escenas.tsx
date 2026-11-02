import {
  ArrowDown,
  Award,
  BookOpen,
  ChevronsUp,
  Flag,
  Flame,
  LogIn,
  MapPin,
  Search,
  Swords,
  Trophy,
} from "lucide-react";
import { AbsoluteFill, Easing, Img, interpolate, staticFile, useCurrentFrame, useVideoConfig } from "remotion";
import { momento } from "./locucion";
import { CAPTURAS, Pantalla, type Captura, type Encuadre } from "./Pantalla";
import { Etiqueta, Titular } from "./Piezas";
import { C, F, clamp } from "./tokens";

const useSegundos = () => {
  const frame = useCurrentFrame();
  const { fps } = useVideoConfig();
  return frame / fps;
};

const icono = (I: typeof Flame) => <I size={44} strokeWidth={2.8} />;

/** Escena tipo: chip arriba y captura con su movimiento de cámara en el centro. */
const ConCaptura: React.FC<{
  etiqueta: React.ReactNode;
  titular?: React.ReactNode;
  pantalla: React.ComponentProps<typeof Pantalla>;
  encima?: React.ReactNode;
}> = ({ etiqueta, titular, pantalla, encima }) => (
  <AbsoluteFill style={{ alignItems: "center", paddingTop: 170 }}>
    {etiqueta}
    {titular && <div style={{ marginTop: 30, padding: "0 70px" }}>{titular}</div>}
    <div style={{ position: "absolute", top: pantalla.tipo === "movil" ? 400 : 440, display: "flex", justifyContent: "center", width: "100%" }}>
      <Pantalla {...pantalla} />
    </div>
    {encima}
  </AbsoluteFill>
);

const navegador = (captura: Captura, claves: Encuadre[]) => ({
  captura,
  tipo: "navegador" as const,
  ancho: 960,
  alto: 780,
  claves,
});

const movil = (captura: Captura, claves: Encuadre[], ancho = 470, alto = 800) => ({
  captura,
  tipo: "movil" as const,
  ancho,
  alto,
  claves,
});

// ───────────────────────────── 0 · ¡PARA! ─────────────────────────────

export const Para: React.FC = () => {
  const frame = useCurrentFrame();
  const temblor = frame > 2 && frame < 14 ? Math.sin(frame * 2.7) * (14 - frame) * 1.6 : 0;
  return (
    <AbsoluteFill style={{ alignItems: "center", justifyContent: "center", translate: `${temblor}px ${-temblor / 2}px` }}>
      <Img
        src={staticFile(CAPTURAS.movilMapa.src)}
        style={{ position: "absolute", width: 1300, top: -120, filter: "blur(26px)", opacity: 0.35 }}
      />
      <div
        style={{
          fontFamily: F.titular,
          fontWeight: 800,
          fontSize: 360,
          color: C.texto,
          textShadow: `0 0 80px ${C.acento}`,
          scale: String(interpolate(frame, [0, 5], [2.6, 1], { ...clamp, easing: Easing.out(Easing.cubic) })),
        }}
      >
        ¡PARA!
      </div>
    </AbsoluteFill>
  );
};

// ───────────────────── 1 · ¿Cuál será tu primer destino? ─────────────────────

export const Gancho: React.FC = () => (
  <AbsoluteFill style={{ alignItems: "center", paddingTop: 150 }}>
    <div style={{ padding: "0 60px" }}>
      <Titular texto="¿Cuál será tu *primer* *destino?*" tamano={138} />
    </div>
    <div style={{ position: "absolute", top: 560 }}>
      <Pantalla
        {...movil(CAPTURAS.movilMapa, [
          { t: 0, cx: 195, cy: 440, cw: 390 },
          { t: 3.2, cx: 150, cy: 500, cw: 300 },
        ], 500, 820)}
      />
    </div>
  </AbsoluteFill>
);

// ───────────────────── 2 · Ya hay gente peleándolo ─────────────────────

export const Peleando: React.FC = () => (
  <ConCaptura
    etiqueta={<Etiqueta texto="La pelea ya ha empezado" icono={icono(Flame)} color={C.aviso} />}
    pantalla={{
      ...navegador(CAPTURAS.sevilla, [
        { t: 0, cx: 640, cy: 430, cw: 760 },
        { t: 2.6, cx: 640, cy: 440, cw: 560 },
      ]),
      marca: { x: 602, y: 408, w: 84, h: 56, t: 1.1 },
    }}
  />
);

// ───────────────────── 3 · Esto es Mi primer destino ─────────────────────

export const EstoEs: React.FC = () => (
  <ConCaptura
    etiqueta={<Etiqueta texto="Mi primer destino" icono={icono(MapPin)} />}
    pantalla={navegador(CAPTURAS.portada, [
      { t: 0, cx: 420, cy: 330, cw: 720 },
      { t: 1.9, cx: 410, cy: 320, cw: 600 },
    ])}
  />
);

// ───────────────────── 4 · Todas las comandancias y puestos ─────────────────────

export const Mapa: React.FC = () => (
  <ConCaptura
    etiqueta={<Etiqueta texto="Toda España en un mapa" icono={icono(MapPin)} />}
    pantalla={navegador(CAPTURAS.mapa, [
      { t: 0, cx: 620, cy: 430, cw: 800 },
      { t: 3.1, cx: 600, cy: 450, cw: 640 },
    ])}
  />
);

// ───────────────────── 5 · 1318 destinos reales ─────────────────────

export const Contador: React.FC = () => {
  const s = useSegundos();
  const cifra = Math.round(interpolate(s, [0.1, 1.4], [0, 1318], { ...clamp, easing: Easing.out(Easing.cubic) }));
  const chip = (texto: string, d: number) => (
    <div
      style={{
        padding: "16px 30px",
        borderRadius: 999,
        border: `3px solid ${C.acento}`,
        background: `${C.superficie}e6`,
        color: C.texto,
        fontFamily: F.titular,
        fontWeight: 700,
        fontSize: 52,
        opacity: interpolate(s, [d, d + 0.2], [0, 1], clamp),
        translate: `0 ${interpolate(s, [d, d + 0.3], [30, 0], { ...clamp, easing: Easing.out(Easing.back(2)) })}px`,
      }}
    >
      {texto}
    </div>
  );
  return (
    <AbsoluteFill style={{ alignItems: "center", justifyContent: "center" }}>
      <Img
        src={staticFile(CAPTURAS.mapa.src)}
        style={{ position: "absolute", height: 1920, left: -560, filter: "blur(6px)", opacity: 0.22 }}
      />
      <div
        style={{
          fontFamily: F.cifras,
          fontWeight: 700,
          fontSize: 330,
          color: C.menta,
          lineHeight: 1,
          textShadow: `0 0 70px ${C.acento}`,
          scale: String(interpolate(s, [1.4, 1.55, 1.75], [1, 1.1, 1], clamp)),
        }}
      >
        {cifra}
      </div>
      <div style={{ fontFamily: F.titular, fontWeight: 800, fontSize: 140, color: C.texto, marginTop: 10 }}>
        DESTINOS REALES
      </div>
      <div style={{ display: "flex", gap: 24, marginTop: 50 }}>
        {chip("54 COMANDANCIAS", 1.5)}
        {chip("1264 PUESTOS", 1.7)}
      </div>
    </AbsoluteFill>
  );
};

// ───────────────────── 6 · Paso 1: entra ─────────────────────

export const Entra: React.FC = () => (
  <ConCaptura
    etiqueta={<Etiqueta texto="1 · Entra con tu cuenta" icono={icono(LogIn)} />}
    pantalla={{
      ...navegador(CAPTURAS.portada, [
        { t: 0, cx: 420, cy: 560, cw: 760 },
        { t: 1.2, cx: 400, cy: 575, cw: 560 },
      ]),
      cursor: { desde: { x: 720, y: 720 }, hasta: { x: 330, y: 574 }, mover: [0.2, 0.9], clic: 1.0 },
    }}
  />
);

// ───────────────────── 7 · Paso 2: busca tu destino ─────────────────────

export const Busca: React.FC = () => (
  <ConCaptura
    etiqueta={<Etiqueta texto="2 · Busca tu destino" icono={icono(Search)} />}
    pantalla={{
      ...navegador(CAPTURAS.buscar, [
        { t: 0, cx: 640, cy: 300, cw: 820 },
        { t: 1.4, cx: 520, cy: 290, cw: 600 },
      ]),
      marca: { x: 285, y: 273, w: 353, h: 54, t: 0.8 },
      cursor: { desde: { x: 720, y: 430 }, hasta: { x: 400, y: 302 }, mover: [0.3, 1.0], clic: 1.15 },
    }}
  />
);

// ───────────────────── 8 · Planta tu bandera ─────────────────────

export const Bandera: React.FC = () => (
  <ConCaptura
    etiqueta={<Etiqueta texto="Planta tu bandera" icono={icono(Flag)} />}
    pantalla={{
      ...navegador(CAPTURAS.sevilla, [
        { t: 0, cx: 1000, cy: 500, cw: 640 },
        { t: 1.2, cx: 1020, cy: 520, cw: 540 },
      ]),
      cursor: { desde: { x: 940, y: 560 }, hasta: { x: 1186, y: 708 }, mover: [0.05, 0.6], clic: 0.7 },
      marca: { x: 1120, y: 697, w: 131, h: 22, t: 0.75 },
    }}
  />
);

// ───────────────────── 9 · Si llegas el primero, lo fundas tú ─────────────────────

export const Funda: React.FC<{ inicio: number }> = ({ inicio }) => (
  <ConCaptura
    etiqueta={<Etiqueta texto="Fundador/a" icono={icono(Award)} />}
    pantalla={{
      ...movil(CAPTURAS.movilFicha, [
        { t: 0, cx: 195, cy: 443, cw: 390 },
        { t: 2.2, cx: 192, cy: 494, cw: 336 },
      ]),
      marca: { x: 245, y: 660, w: 108, h: 24, t: momento(8, "fundas") - inicio },
    }}
  />
);

// ───────────────────── 10 · ¿Y cómo se defiende? Estudiando ─────────────────────

export const Defiende: React.FC<{ inicio: number }> = ({ inicio }) => {
  const s = useSegundos();
  const estudiando = momento(10, "estudiando") - inicio;
  const t = s - estudiando;
  return (
    <AbsoluteFill style={{ alignItems: "center", justifyContent: "center", padding: "0 70px" }}>
      {t < 0 ? (
        <Titular texto="¿Y cómo se *defiende?*" tamano={170} />
      ) : (
        <div style={{ display: "flex", flexDirection: "column", alignItems: "center", gap: 30 }}>
          <div
            style={{
              color: C.menta,
              scale: String(interpolate(t, [0, 0.15], [0.3, 1], { ...clamp, easing: Easing.out(Easing.back(2.5)) })),
            }}
          >
            <BookOpen size={200} strokeWidth={2.2} />
          </div>
          <div
            style={{
              fontFamily: F.titular,
              fontWeight: 800,
              fontSize: 220,
              color: C.menta,
              textShadow: `0 0 70px ${C.acento}`,
              scale: String(interpolate(t, [0, 0.14], [2.2, 1], { ...clamp, easing: Easing.out(Easing.cubic) })),
            }}
          >
            ESTUDIANDO
          </div>
        </div>
      )}
    </AbsoluteFill>
  );
};

// ───────────────────── 11 · Cada lección, test y día suman ─────────────────────

const Suma: React.FC<{ texto: string; desde: number; x: number }> = ({ texto, desde, x }) => {
  const s = useSegundos();
  if (s < desde) return null;
  const t = s - desde;
  return (
    <div
      style={{
        position: "absolute",
        left: x,
        top: 1150,
        padding: "18px 30px",
        borderRadius: 24,
        background: C.acento,
        color: C.profundo,
        fontFamily: F.titular,
        fontWeight: 800,
        fontSize: 64,
        boxShadow: `0 20px 50px -10px rgba(0,0,0,0.7), 0 0 40px ${C.acento}`,
        scale: String(interpolate(t, [0, 0.25], [0.2, 1], { ...clamp, easing: Easing.out(Easing.back(2.6)) })),
        translate: `0 ${interpolate(t, [0, 0.25], [60, 0], clamp)}px`,
        rotate: `${interpolate(t, [0, 0.25], [-12, -3], clamp)}deg`,
      }}
    >
      {texto}
    </div>
  );
};

export const Puntos: React.FC<{ inicio: number }> = ({ inicio }) => (
  <ConCaptura
    etiqueta={<Etiqueta texto="3 · Suma puntos" icono={icono(Trophy)} />}
    pantalla={{
      ...navegador(CAPTURAS.ficha, [
        { t: 0, cx: 640, cy: 560, cw: 800 },
        { t: 3.5, cx: 640, cy: 590, cw: 750 },
      ]),
      marca: { x: 288, y: 553, w: 704, h: 94, t: 0.2 },
    }}
    encima={
      <>
        <Suma texto="+10 LECCIÓN" desde={momento(11, "lección") - inicio} x={70} />
        <Suma texto="+20 TEST" desde={momento(11, "test") - inicio} x={430} />
        <Suma texto="+5 DÍA" desde={momento(11, "día") - inicio} x={735} />
      </>
    }
  />
);

// ───────────────────── 12 · Racha: multiplicas ─────────────────────

export const Racha: React.FC<{ inicio: number }> = ({ inicio }) => {
  const s = useSegundos();
  const multiplica = momento(12, "multiplicas") - inicio;
  const valor = s < multiplica ? "×1" : s < multiplica + 0.45 ? "×1,1" : "×1,25";
  const cambio = s < multiplica ? 0 : s < multiplica + 0.45 ? multiplica : multiplica + 0.45;
  const fila = (texto: string, d: number) => (
    <div
      style={{
        fontFamily: F.titular,
        fontWeight: 700,
        fontSize: 60,
        color: C.texto,
        padding: "14px 30px",
        borderRadius: 999,
        border: `3px solid ${C.aviso}`,
        opacity: interpolate(s, [d, d + 0.2], [0, 1], clamp),
      }}
    >
      {texto}
    </div>
  );
  return (
    <AbsoluteFill style={{ alignItems: "center", paddingTop: 170 }}>
      <Etiqueta texto="Racha" icono={icono(Flame)} color={C.aviso} />
      <div style={{ position: "absolute", top: 470, display: "flex", flexDirection: "column", alignItems: "center" }}>
        <div style={{ color: C.aviso, filter: `drop-shadow(0 0 40px ${C.aviso})` }}>
          <Flame size={230} strokeWidth={2} />
        </div>
        <div
          style={{
            fontFamily: F.cifras,
            fontWeight: 700,
            fontSize: 250,
            color: C.aviso,
            lineHeight: 1.1,
            scale: String(interpolate(s - cambio, [0, 0.1, 0.25], [1.35, 0.95, 1], clamp)),
          }}
        >
          {valor}
        </div>
        <div style={{ display: "flex", flexDirection: "column", gap: 20, alignItems: "center", marginTop: 20 }}>
          {fila("7 DÍAS SEGUIDOS → ×1,1", multiplica)}
          {fila("30 DÍAS SEGUIDOS → ×1,25", multiplica + 0.45)}
        </div>
      </div>
    </AbsoluteFill>
  );
};

// ───────────────────── 13 · Compite contra toda España ─────────────────────

export const Compite: React.FC = () => (
  <ConCaptura
    etiqueta={<Etiqueta texto="4 · Compite" icono={icono(Trophy)} />}
    pantalla={{
      ...navegador(CAPTURAS.clasificacion, [
        { t: 0, cx: 640, cy: 420, cw: 800 },
        { t: 2.4, cx: 640, cy: 460, cw: 750 },
      ]),
      marca: { x: 272, y: 246, w: 736, h: 86, t: 0.7 },
    }}
  />
);

// ───────────────────── 14 · Derbi semanal ─────────────────────

export const Derbi: React.FC = () => (
  <ConCaptura
    etiqueta={<Etiqueta texto="Derbi semanal" icono={icono(Swords)} />}
    pantalla={{
      ...navegador(CAPTURAS.derbi, [
        { t: 0, cx: 640, cy: 330, cw: 800 },
        { t: 2.3, cx: 640, cy: 300, cw: 750 },
      ]),
      marca: { x: 290, y: 212, w: 700, h: 128, t: 0.6 },
    }}
  />
);

// ───────────────────── 15 · El destino en llamas ─────────────────────

export const EnLlamas: React.FC = () => (
  <ConCaptura
    etiqueta={<Etiqueta texto="En llamas" icono={icono(Flame)} color={C.aviso} />}
    pantalla={{
      ...navegador(CAPTURAS.sevilla, [
        { t: 0, cx: 1000, cy: 250, cw: 620 },
        { t: 2.5, cx: 1010, cy: 240, cw: 540 },
      ]),
      marca: { x: 1008, y: 149, w: 94, h: 22, t: 0.4 },
    }}
  />
);

// ───────────────────── 16 · Sube de empleo ─────────────────────

const EMPLEOS = [
  ["Aspirante", 0],
  ["Guardia alumno/a", 50],
  ["Guardia", 200],
  ["Guardia 1.º", 500],
  ["Cabo", 1000],
  ["Cabo 1.º", 2000],
  ["Cabo Mayor", 4000],
] as const;

export const Empleo: React.FC<{ inicio: number }> = ({ inicio }) => {
  const s = useSegundos();
  const desde = momento(15, "aspirante") - inicio;
  const hasta = momento(15, "cabo") - inicio;
  const nivel = interpolate(s, [desde, hasta], [0, EMPLEOS.length - 1], clamp);
  return (
    <AbsoluteFill style={{ alignItems: "center", paddingTop: 170 }}>
      <Etiqueta texto="Sube de empleo" icono={icono(ChevronsUp)} />
      <div style={{ position: "absolute", top: 380, width: 840, display: "flex", flexDirection: "column-reverse", gap: 16 }}>
        {EMPLEOS.map(([nombre, puntos], i) => {
          const alcanzado = nivel >= i - 0.01;
          const actual = Math.round(nivel) === i;
          const ultimo = i === EMPLEOS.length - 1;
          return (
            <div
              key={nombre}
              style={{
                display: "flex",
                alignItems: "center",
                justifyContent: "space-between",
                padding: "14px 34px",
                borderRadius: 22,
                background: actual ? (ultimo ? C.aviso : C.acento) : alcanzado ? `${C.acento}33` : C.superficie,
                border: `3px solid ${alcanzado ? C.acento : C.borde}`,
                color: actual ? C.profundo : alcanzado ? C.texto : C.apagado,
                scale: actual ? "1.06" : "1",
                boxShadow: actual ? `0 0 50px ${ultimo ? C.aviso : C.acento}` : "none",
              }}
            >
              <span style={{ fontFamily: F.titular, fontWeight: 800, fontSize: 60, textTransform: "uppercase" }}>{nombre}</span>
              <span style={{ fontFamily: F.cifras, fontWeight: 700, fontSize: 40 }}>{puntos} pt</span>
            </div>
          );
        })}
      </div>
      <div
        style={{
          position: "absolute",
          top: 1265,
          fontFamily: F.texto,
          fontWeight: 600,
          fontSize: 30,
          color: C.apagado,
        }}
      >
        Empleos de fantasía del juego, sin relación con la Guardia Civil.
      </div>
    </AbsoluteFill>
  );
};

// ───────────────────── 17 · ¿Qué destino vas a defender tú? ─────────────────────

export const Llamada: React.FC<{ inicio: number }> = ({ inicio }) => {
  const s = useSegundos();
  const comenta = momento(18, "leo") - inicio;
  const t = s - comenta;
  return (
    <AbsoluteFill style={{ alignItems: "center", paddingTop: 150 }}>
      <div style={{ padding: "0 60px" }}>
        <Titular texto="¿Qué destino vas a *defender* tú?" tamano={132} />
      </div>
      <div style={{ position: "absolute", top: 560 }}>
        <Pantalla
          {...movil(CAPTURAS.movilMapa, [
            { t: 0, cx: 160, cy: 500, cw: 290 },
            { t: 3.8, cx: 195, cy: 440, cw: 390 },
          ], 400, 620)}
        />
      </div>
      {t >= 0 && (
        <div
          style={{
            position: "absolute",
            top: 1330,
            display: "flex",
            alignItems: "center",
            gap: 18,
            padding: "22px 40px",
            borderRadius: 999,
            background: C.acento,
            color: C.profundo,
            fontFamily: F.titular,
            fontWeight: 800,
            fontSize: 76,
            boxShadow: `0 0 60px ${C.acento}`,
            scale: String(interpolate(t, [0, 0.25], [0.3, 1], { ...clamp, easing: Easing.out(Easing.back(2.4)) })),
          }}
        >
          COMENTA TU DESTINO
          <span style={{ display: "flex", translate: `0 ${Math.abs(Math.sin(t * 7)) * 14}px` }}>
            <ArrowDown size={70} strokeWidth={3.4} />
          </span>
        </div>
      )}
    </AbsoluteFill>
  );
};

// ───────────────────── 18 · Cierre de marca ─────────────────────

export const Cierre: React.FC = () => {
  const s = useSegundos();
  const aparece = (d: number) => ({
    opacity: interpolate(s, [d, d + 0.25], [0, 1], clamp),
    translate: `0 ${interpolate(s, [d, d + 0.35], [40, 0], { ...clamp, easing: Easing.out(Easing.back(1.6)) })}px`,
  });
  return (
    <AbsoluteFill style={{ alignItems: "center", justifyContent: "center", gap: 56, padding: "0 80px" }}>
      <Img
        src={staticFile("prolince-logo-horizontal-negativo.svg")}
        style={{
          width: 760,
          scale: String(interpolate(s, [0, 0.4], [0.6, 1], { ...clamp, easing: Easing.out(Easing.back(1.8)) })),
          opacity: interpolate(s, [0, 0.2], [0, 1], clamp),
        }}
      />
      <div style={aparece(0.15)}>
        <Titular texto="Mi primer *destino*" tamano={170} />
      </div>
      <div
        style={{
          ...aparece(1.2),
          padding: "18px 40px",
          borderRadius: 999,
          background: C.acento,
          color: C.profundo,
          fontFamily: F.titular,
          fontWeight: 800,
          fontSize: 62,
        }}
      >
        SOLO PARA ALUMNOS DE PROLINCE
      </div>
      <div style={{ ...aparece(1.6), fontFamily: F.texto, fontWeight: 700, fontSize: 42, color: C.texto }}>
        Entra con tu cuenta de la academia
      </div>
      <div
        style={{
          ...aparece(1.9),
          position: "absolute",
          bottom: 300,
          maxWidth: 880,
          textAlign: "center",
          fontFamily: F.texto,
          fontWeight: 500,
          fontSize: 28,
          lineHeight: 1.35,
          color: C.apagado,
        }}
      >
        Juego de formación de la Academia Prolince. Empleos de fantasía, sin vinculación oficial con la Guardia Civil.
      </div>
    </AbsoluteFill>
  );
};
