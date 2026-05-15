---
description: Inicia el flujo completo para un proyecto nuevo: intake, blueprint, arquitectura y próximos pasos.
agent: orchestrator
---

Inicia un nuevo proyecto usando el flujo DevBrain.

Pasos:

1. Revisa `AGENTS.md` y `docs/brain/CONTEXT_INDEX.md` si existen.
2. Llama primero al agente `project-intake` si no existe ficha técnica suficiente.
3. Asegura que exista o se cree `docs/brain/PROJECT_BLUEPRINT.md`.
4. Propón stack inicial, priorizando Python + FastAPI cuando el usuario no indique otro.
5. Si hay IA/agentes, considera LangGraph y LangChain.
6. Propón subagentes y skills.
7. No implementes todavía salvo que el usuario lo autorice.

Argumentos del usuario:

$ARGUMENTS
