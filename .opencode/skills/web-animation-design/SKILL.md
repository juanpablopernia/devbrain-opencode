---
name: web-animation-design
description: Diseña animaciones web naturales y útiles. Usa esta skill cuando el usuario mencione motion, easing, timing, transiciones, microinteracciones, hover effects, gestos o animaciones que se sienten torpes o pesadas.
compatibility: opencode
---

# Web Animation Design

Guía para motion web con buen criterio.

## Cuándo usarla

- Modales, drawers, tooltips, dropdowns.
- Microinteracciones.
- Transiciones entre estados.
- Ajuste de timing, easing y sensación visual.

## Reglas

- Para entrada/salida, prioriza `ease-out`.
- Para movimiento de elementos ya visibles, usa `ease-in-out`.
- Para hover y color, usa `ease`.
- Mantén la mayoría de animaciones UI bajo 300ms.
- Anima preferentemente `transform` y `opacity`.
- Respeta `prefers-reduced-motion`.
- No animes todo: anima solo lo que clarifica o mejora percepción.

## Checklist rápido

- ¿La animación comunica causa y efecto?
- ¿Es más rápida en salida que en entrada cuando conviene?
- ¿No bloquea interacción?
- ¿Evita layout thrashing y propiedades costosas?
- ¿Se siente natural en móvil y desktop?

## Complementos recomendados

- Usa `modern-web-guidance` para implementación moderna.
- Usa `ui-ux-pro-max` para coherencia visual general.

## Fuente de referencia

- Basada en `github/open-agents-main/.agents/skills/web-animation-design/SKILL.md`.
