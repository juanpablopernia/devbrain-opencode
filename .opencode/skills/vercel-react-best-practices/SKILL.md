---
name: vercel-react-best-practices
description: Mejores prácticas de React y Next.js con foco en performance, waterfalls, bundle size, render y data fetching. Usa esta skill cuando el trabajo toque componentes React, rutas Next.js, hidratación, Suspense, server actions o rendimiento.
compatibility: opencode
---

# Vercel React Best Practices

Guía para React y Next modernos con foco en performance y coherencia.

## Cuándo usarla

- Componentes React.
- Páginas o rutas Next.js.
- Refactors de performance.
- Data fetching y Suspense.
- Optimización de bundle e hidratación.

## Reglas

- Elimina waterfalls; inicia promesas temprano y espera tarde.
- Usa `Promise.all()` cuando no haya dependencias.
- Minimiza bundle inicial y difiere componentes pesados.
- Evita pasar más datos de los necesarios a componentes cliente.
- Prioriza renderizado explícito, derivación de estado y menos efectos innecesarios.
- Usa patrones modernos de caché, memoización y carga diferida solo cuando aporten valor real.

## Checklist rápido

- ¿Hay awaits secuenciales evitables?
- ¿Puede dividirse o diferirse un bundle pesado?
- ¿Existe riesgo de hydration mismatch?
- ¿Se está serializando demasiada información al cliente?
- ¿Hay re-renders evitables o efectos innecesarios?

## Complementos recomendados

- Usa `frontend` para implementación general.
- Usa `modern-web-guidance` para APIs web y CSS/JS cliente.

## Fuente de referencia

- Basada en `github/open-agents-main/.agents/skills/vercel-react-best-practices/SKILL.md`.
