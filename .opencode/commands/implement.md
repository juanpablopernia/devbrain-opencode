---
description: Implementa una tarea por etapas según el blueprint y el plan.
agent: orchestrator
---

Implementa la tarea solicitada usando el flujo DevBrain.

Antes de modificar:

1. Lee `docs/brain/CONTEXT_INDEX.md` si existe.
2. Lee `docs/brain/PROJECT_BLUEPRINT.md` solo si hace falta validar stack o alcance.
3. Lee `docs/brain/DECISIONS.md` y `docs/brain/MEMORY.md` solo si la tarea lo requiere.
4. Determina qué subagente corresponde:
   - Python/FastAPI/LangChain/LangGraph: `backend-python`
   - Node/TypeScript: `backend-node`
   - PHP moderno: `backend-php`
   - Frontend: `frontend`
   - Cloud/Docker/Firebase/Cloud Run: `devops-cloud`

Reglas:

- Trabaja por pasos pequeños.
- Muestra resumen de cambios.
- Pide confirmación para cambios riesgosos.
- Al final recomienda ejecutar `/review`.

Tarea:

$ARGUMENTS
