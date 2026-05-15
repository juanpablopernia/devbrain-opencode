---
description: Revisa cambios actuales, calidad, seguridad y consistencia técnica.
agent: qa-reviewer
---

Revisa el proyecto o los cambios actuales.

Usa:

- `git diff` si hay cambios.
- Si no existe Git, revisar el estado actual del proyecto y aclarar que la revisión no es incremental.
- `docs/brain/CONTEXT_INDEX.md` para ubicar contexto con bajo costo.
- `docs/brain/PROJECT_BLUEPRINT.md` para validar consistencia.
- La skill `qa-review`.

Entrega:

1. Resumen de lo revisado.
2. Hallazgos críticos.
3. Hallazgos altos.
4. Hallazgos medios.
5. Hallazgos bajos.
6. Recomendaciones concretas.
7. Veredicto: listo / listo con observaciones / no listo.

No modifiques archivos directamente.
