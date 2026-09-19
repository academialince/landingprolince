import {
  BookOpen,
  CalendarDays,
  CircleHelp,
  ClipboardCheck,
  Clock,
  Dumbbell,
  LineChart,
  ListChecks,
  Megaphone,
  Moon,
  RefreshCw,
  Search,
  ShieldCheck,
  Timer,
  Trophy,
  type LucideIcon,
} from "lucide-react";

const iconos: Record<string, LucideIcon> = {
  BookOpen,
  CalendarDays,
  ClipboardCheck,
  Clock,
  Dumbbell,
  LineChart,
  ListChecks,
  Megaphone,
  Moon,
  RefreshCw,
  Search,
  ShieldCheck,
  Timer,
  Trophy,
};

export function Icono({
  nombre,
  className,
  size = 20,
}: {
  nombre: string;
  className?: string;
  size?: number;
}) {
  const Componente = iconos[nombre] ?? CircleHelp;
  return <Componente className={className} size={size} strokeWidth={2} aria-hidden />;
}
