import Image from "next/image";
import { ArrowRight, Check, Truck } from "lucide-react";
import { Button } from "@/components/ui/button";
import { VisorEjemplo } from "@/components/temarios/visor-ejemplo";
import { site } from "@/content/site";
import { formatoPrecio } from "@/content/tienda";
import { ENTREGA, ENVIO, type ModalidadTemario } from "@/content/temarios";
import { rutas } from "@/lib/links";

/** Sin pasarela todavía: el pedido sale por WhatsApp con el producto ya escrito. */
function enlaceCompra(m: ModalidadTemario, curso: string) {
  if (m.compra) return m.compra;
  if (!site.contacto.whatsapp) return rutas.tienda;
  const texto = `Hola, quiero el ${m.nombre} del temario de ${curso} (actualizado 2027).`;
  return `https://wa.me/${site.contacto.whatsapp}?text=${encodeURIComponent(texto)}`;
}

/** Tarjeta de una modalidad de temario: la usan la sección Temarios y la página de cada curso. */
export function TarjetaTemario({ m, curso }: { m: ModalidadTemario; curso: string }) {
  return (
    <article
      className={`relative flex h-full flex-col rounded-2xl border bg-surface p-6 ${
        m.destacado ? "border-2 border-primary shadow-[0_14px_36px_color-mix(in_oklch,var(--color-primary)_14%,transparent)]" : "border-border"
      }`}
    >
      {m.destacado && (
        <span className="absolute -top-3 left-6 z-10 rounded-full bg-primary px-3 py-1 text-eyebrow uppercase text-primary-fg">{m.destacado}</span>
      )}
      <div className="flex gap-5">
        <div className="reflejo relative aspect-square w-36 shrink-0 overflow-hidden rounded-md border border-border bg-primary-deep shadow-[0_10px_24px_-12px_rgba(0,0,0,0.6)]">
          <Image src={m.miniatura} alt="" fill unoptimized sizes="144px" className="object-contain" />
        </div>
        <div className="min-w-0">
          <h3 className="text-h3">{m.nombre}</h3>
          <p className="mt-2 text-body-sm text-muted-foreground">{m.resumen}</p>
          <p className="mt-3 inline-flex items-center gap-1.5 rounded-full bg-primary-soft px-3 py-1 text-body-sm font-semibold text-primary-soft-fg">
            <Truck size={15} aria-hidden />
            {ENTREGA}
          </p>
        </div>
      </div>

      <ul className="mt-6 grid gap-2.5 text-body-sm">
        {m.incluye.map((item) => (
          <li key={item} className="flex gap-2.5">
            <Check size={17} className="mt-0.5 shrink-0 text-primary" aria-hidden />
            {item}
          </li>
        ))}
      </ul>

      <p className="mt-6">
        {m.precio !== null ? (
          <>
            <span className="text-h2 tabular">{formatoPrecio(m.precio)} €</span>
            {/* Con Stripe el envío es una línea más del pago: se dice antes, no al pagar. */}
            {m.compra && <span className="ml-2 text-body-sm text-muted-foreground">+ {formatoPrecio(ENVIO)} € de envío</span>}
          </>
        ) : (
          <span className="text-h3 text-muted-foreground">Precio próximamente</span>
        )}
      </p>

      <div className="mt-auto grid gap-3 pt-6 sm:grid-cols-2">
        <VisorEjemplo ejemplo={m.ejemplo} nombre={`${m.nombre} · ${curso}`} />
        <Button href={enlaceCompra(m, curso)} variante={m.destacado ? "primario" : "secundario"} className="w-full">
          Lo quiero
          <ArrowRight size={18} aria-hidden />
        </Button>
      </div>
    </article>
  );
}
