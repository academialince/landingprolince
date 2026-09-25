"use client";

import { ArrowRight, BookOpen, Files } from "lucide-react";
import { useState } from "react";
import {
  formatoPrecio,
  packsSimulacros,
  temario,
  type FormatoMaterial,
} from "@/content/tienda";
import { links } from "@/lib/links";
import { Button } from "@/components/ui/button";

function SelectorFormato({
  nombre,
  valor,
  alCambiar,
}: {
  nombre: string;
  valor: FormatoMaterial;
  alCambiar: (formato: FormatoMaterial) => void;
}) {
  return (
    <fieldset>
      <legend className="text-body-sm font-semibold">Elige el formato</legend>
      <div className="mt-3 grid grid-cols-2 gap-2 rounded-lg bg-muted p-1.5">
        {(["digital", "fisico"] as const).map((formato) => (
          <label
            key={formato}
            className={`flex min-h-11 cursor-pointer items-center justify-center rounded-md border px-3 text-body-sm font-bold transition-colors ${
              valor === formato
                ? "border-primary bg-surface text-primary shadow-sm"
                : "border-transparent text-muted-foreground hover:text-foreground"
            }`}
          >
            <input
              className="sr-only"
              type="radio"
              name={nombre}
              value={formato}
              checked={valor === formato}
              onChange={() => alCambiar(formato)}
            />
            {formato === "digital" ? "Digital" : "Físico"}
          </label>
        ))}
      </div>
    </fieldset>
  );
}

export function MaterialesTienda() {
  const [formatoTemario, setFormatoTemario] = useState<FormatoMaterial>("digital");
  const [formatoSimulacros, setFormatoSimulacros] = useState<FormatoMaterial>("digital");
  const [cantidad, setCantidad] = useState<(typeof packsSimulacros)[number]["cantidad"]>(10);

  const pack = packsSimulacros.find((opcion) => opcion.cantidad === cantidad) ?? packsSimulacros[0];
  const total = pack.cantidad * pack.precioUnidad;

  return (
    <div className="grid items-stretch gap-6 lg:grid-cols-2">
      <article className="flex h-full flex-col rounded-2xl border border-border bg-surface p-7 sm:p-8">
        <span className="inline-flex size-11 items-center justify-center rounded-lg bg-primary-soft text-primary-soft-fg">
          <BookOpen size={21} aria-hidden />
        </span>
        <h3 className="mt-5 text-h3">{temario.nombre}</h3>
        <p className="mt-2 grow text-muted-foreground">{temario.descripcion}</p>

        <div className="mt-6">
          <SelectorFormato
            nombre="formato-temario"
            valor={formatoTemario}
            alCambiar={setFormatoTemario}
          />
        </div>

        <div className="mt-6 flex items-end justify-between gap-4 border-t border-border pt-5">
          <div>
            <p className="text-body-sm text-muted-foreground">{temario.paginas}</p>
            <p className="mt-1 text-h2 tabular">{temario.precio}</p>
          </div>
          <p className="rounded-full bg-primary-soft px-3 py-1.5 text-body-sm font-semibold text-primary-soft-fg">
            {formatoTemario === "digital" ? "Online" : "En papel"}
          </p>
        </div>

        <Button href={links.compra} tamano="lg" className="mt-6 w-full">
          Comprar temario
          <ArrowRight size={18} aria-hidden />
        </Button>
      </article>

      <article className="flex h-full flex-col rounded-2xl border border-border bg-surface p-7 sm:p-8">
        <span className="inline-flex size-11 items-center justify-center rounded-lg bg-primary-soft text-primary-soft-fg">
          <Files size={21} aria-hidden />
        </span>
        <h3 className="mt-5 text-h3">Packs de simulacros</h3>
        <p className="mt-2 text-muted-foreground">
          Elige cuántos necesitas. Cuanto mayor sea el pack, menor será el precio por simulacro.
        </p>

        <div className="mt-6">
          <SelectorFormato
            nombre="formato-simulacros"
            valor={formatoSimulacros}
            alCambiar={setFormatoSimulacros}
          />
        </div>

        <fieldset className="mt-6">
          <legend className="text-body-sm font-semibold">Número de simulacros</legend>
          <div className="mt-3 grid gap-2 sm:grid-cols-3">
            {packsSimulacros.map((opcion) => (
              <label
                key={opcion.cantidad}
                className={`cursor-pointer rounded-lg border p-3 transition-colors ${
                  cantidad === opcion.cantidad
                    ? "border-primary bg-primary-soft"
                    : "border-border hover:border-border-strong"
                }`}
              >
                <input
                  className="sr-only"
                  type="radio"
                  name="cantidad-simulacros"
                  value={opcion.cantidad}
                  checked={cantidad === opcion.cantidad}
                  onChange={() => setCantidad(opcion.cantidad)}
                />
                <span className="block font-bold">{opcion.cantidad}</span>
                <span className="mt-0.5 block text-body-sm text-muted-foreground">
                  {formatoPrecio(opcion.precioUnidad)} €/ud.
                </span>
                <span className="mt-1 block min-h-4 text-[0.6875rem] font-semibold leading-4 text-success">
                  {opcion.descuento ?? "Precio base"}
                </span>
              </label>
            ))}
          </div>
        </fieldset>

        <div className="mt-6 flex items-end justify-between gap-4 border-t border-border pt-5" aria-live="polite">
          <div>
            <p className="text-body-sm text-muted-foreground">
              Pack de {cantidad} · {formatoSimulacros === "digital" ? "digital" : "físico"}
            </p>
            <p className="mt-1 text-h2 tabular">{formatoPrecio(total)} €</p>
          </div>
          {pack.descuento && (
            <p className="rounded-full bg-primary-soft px-3 py-1.5 text-body-sm font-semibold text-primary-soft-fg">
              {pack.descuento}
            </p>
          )}
        </div>

        <Button href={links.compra} tamano="lg" className="mt-6 w-full">
          Comprar pack
          <ArrowRight size={18} aria-hidden />
        </Button>
      </article>
    </div>
  );
}
