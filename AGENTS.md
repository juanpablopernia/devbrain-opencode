# AGENTS.md

Instrucciones del proyecto para OpenCode.

## Contexto del proyecto

Este proyecto usa el flujo DevBrain.

Antes de implementar cambios importantes:

- empezar por `docs/brain/CONTEXT_INDEX.md`
- leer `docs/brain/PROJECT_BLUEPRINT.md`, `docs/brain/DECISIONS.md`, `docs/brain/MEMORY.md` o `docs/brain/ERRORS_SOLVED.md` solo si hacen falta para la tarea

## Reglas generales

- No guardar secretos reales en archivos.
- No hardcodear API keys, passwords ni tokens.
- Usar `.env.example` para documentar variables.
- Mantener README actualizado.
- Guardar decisiones importantes en `docs/brain/DECISIONS.md`.
- Guardar errores resueltos en `docs/brain/ERRORS_SOLVED.md`.
- Usar `docs/brain/CONTEXT_INDEX.md` como puerta de entrada a la memoria.
- Ejecutar revisión con `/review` antes de cerrar cambios importantes.
- Antes de implementar, reconstruir contexto mínimo del proyecto para entender de qué trata, cómo funciona y qué parte se verá afectada.
- No hacer cambios a ciegas cuando el contexto del proyecto no esté claro o el trabajo se retome tras tiempo sin continuidad.
- Leer primero `docs/brain/CONTEXT_INDEX.md` y luego solo los archivos adicionales necesarios para entender la tarea.
- Al terminar una implementación, dejar claro qué se cambió, en qué archivos, para qué sirve y cuál es el impacto funcional esperado.
- Si hubo cambios en CSS, explicar qué estilos se agregaron o modificaron y qué objetivo visual o de UX cumplen.
- Si hubo cambios en JavaScript, Python o PHP, explicar qué funciones o bloques relevantes se crearon o modificaron y para qué sirven.
- Cuando el cambio introduzca comportamiento nuevo o estructura importante, actualizar documentación o memoria para que el proyecto pueda retomarse sin trabajar a ciegas.

## Preferencias técnicas

- Lenguaje preferido para proyectos personales: Python.
- Framework backend preferido: FastAPI.
- Para agentes y flujos con estado: LangGraph.
- Para tools, RAG e integraciones IA: LangChain.
- Para despliegue: Cloud Run o Firebase según el caso.
- Para PHP personal: usar versión moderna/última estable disponible.
- PHP legacy solo aplica si se indica que es trabajo, migración o sistema existente.

## Flujo de trabajo

1. `/intake` para levantar requisitos.
2. `/plan` para arquitectura.
3. `/implement` para construir por etapas.
4. `/review` para revisión.
5. `/document` para actualizar documentación.
