import { Container } from "@/components/layout/container";
import { Reveal } from "@/components/layout/reveal";
import { EnlaceSeccion } from "@/components/ui/enlace-seccion";
import { oposicionPrincipal } from "@/content/oposiciones";
import { rutas } from "@/lib/links";

export function OposicionHome() {
  const { nombre, resumen, fases, convocatoria } = oposicionPrincipal;

  return (
    <section className="py-16 sm:py-24">
      <Container>
        <Reveal>
          <div className="overflow-hidden rounded-2xl border border-border bg-surface-tinted">
            <div className="grid gap-10 p-8 sm:p-12 lg:grid-cols-[1.2fr_1fr] lg:gap-16">
              <div>
                <p className="text-eyebrow uppercase text-primary">La oposición</p>
                <h2 className="text-h2 mt-3">{nombre}</h2>
                <p className="text-body-lg mt-4 text-muted-foreground">{resumen}</p>
                <div className="mt-8">
                  <EnlaceSeccion href={rutas.oposicion}>
                    Requisitos, fases y convocatoria
                  </EnlaceSeccion>
                </div>
              </div>

              <div className="grid content-start gap-3">
                {convocatoria && (
                  <div className="rounded-xl bg-surface p-5">
                    <p className="text-eyebrow uppercase text-muted-foreground">
                      Convocatoria {convocatoria.anio}
                    </p>
                    <p className="text-display-l mt-1 tabular">
                      {convocatoria.plazas.toLocaleString("es-ES")}
                      <span className="text-h3 text-muted-foreground"> plazas</span>
                    </p>
                  </div>
                )}
                {fases?.map((fase, i) => (
                  <div
                    key={fase.nombre}
                    className="flex items-center gap-3 rounded-xl bg-surface px-5 py-3.5"
                  >
                    <span className="inline-flex size-7 shrink-0 items-center justify-center rounded-full bg-primary-soft text-body-sm font-bold text-primary-soft-fg tabular">
                      {i + 1}
                    </span>
                    <span className="font-semibold">{fase.nombre}</span>
                  </div>
                ))}
              </div>
            </div>
          </div>
        </Reveal>
      </Container>
    </section>
  );
}
