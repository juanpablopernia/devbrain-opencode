---
name: modern-web-guidance
description: Frontend web moderno para HTML, CSS y JavaScript del lado cliente. Usa esta skill al iniciar tareas de UI web, layout, formularios, componentes, APIs web del navegador o performance frontend para evitar patrones obsoletos.
compatibility: opencode
---

# Modern Web Guidance

Usa esta skill al inicio de cualquier tarea de frontend web moderno.

## Cuándo usarla

- Layouts HTML/CSS.
- Componentes UI web.
- Formularios avanzados.
- APIs del navegador.
- Performance frontend.
- Patrones modernos de CSS y JavaScript cliente.

## Reglas

- Prioriza APIs y patrones web modernos antes de agregar librerías.
- Evita soluciones obsoletas si existe soporte moderno razonable.
- Prefiere mejora progresiva y degradación elegante.
- Considera compatibilidad del navegador solo si el proyecto lo requiere.
- Para performance, prioriza LCP, INP, CLS, carga diferida, imágenes optimizadas y reducción de trabajo en main thread.

## Checklist rápido

- ¿Existe una API nativa suficiente?
- ¿Puede resolverse con CSS moderno antes que con JS?
- ¿La animación usa `transform` y `opacity`?
- ¿El componente contempla teclado, foco y estados vacíos/error/loading?
- ¿La solución evita dependencias grandes innecesarias?

## Complementos recomendados

- Usa `ui-ux-pro-max` para dirección visual y UX.
- Usa `web-animation-design` para motion.
- Usa `vercel-react-best-practices` si el stack es React o Next.
- Usa `chrome-extensions` si la tarea es una extensión de navegador.

## Fuente de referencia

- Basada en `github/modern-web-guidance-main/skills/modern-web-guidance/SKILL.md`.
