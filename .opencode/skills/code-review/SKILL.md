---
name: code-review
description: Revisa diffs, commits, ramas o PRs con foco en bugs, seguridad, estructura y riesgos reales. Usa esta skill cuando el usuario pida revisar cambios, hacer `/review`, revisar un PR o validar un diff.
compatibility: opencode
---

# Code Review

Skill de revisión técnica orientada a cambios concretos.

## Reglas

- Revisa cambios, no opiniones estéticas innecesarias.
- El foco principal son bugs reales, seguridad y riesgos concretos.
- Lee el archivo completo afectado cuando el diff por sí solo no baste.
- Si algo toca auth, inputs, storage, networking o secretos, sigue el límite de confianza extremo a extremo.
- No inventes problemas hipotéticos sin escenario plausible.

## Qué buscar

- Errores lógicos.
- Faltas de validación.
- Riesgos de auth/authz.
- Exposición de secretos.
- Manejo de errores incorrecto.
- Acoplamiento o complejidad innecesaria.
- Problemas claros de performance.

## Formato de salida

- Clasifica por criticidad.
- Explica escenario, causa e impacto.
- Propón corrección concreta.
- Si no hay hallazgos, di qué fue revisado.

## Complementos recomendados

- Usa `qa-review` para checklist global del proyecto.

## Fuente de referencia

- Basada en `github/open-agents-main/.agents/skills/code-review/SKILL.md`.
