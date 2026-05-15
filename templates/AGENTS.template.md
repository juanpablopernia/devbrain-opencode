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
