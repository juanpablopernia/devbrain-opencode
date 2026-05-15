---
description: Crea estructura base para un flujo LangGraph con estado, nodos, edges y ejemplo inicial.
agent: backend-python
---

Crea una estructura base LangGraph usando la skill `langgraph-orchestration`.

Si el caso incluye tools o integraciones, combina con `langchain-tools`.
Si el caso incluye varios roles/agentes, combina con `langgraph-multi-agent`.

Antes de escribir:

1. Revisa `docs/brain/CONTEXT_INDEX.md` si existe.
2. Revisa `docs/brain/PROJECT_BLUEPRINT.md`.
3. Identifica si el flujo requiere:
   - memoria
   - tools
   - subagentes
   - human-in-the-loop
   - checkpointer

Entregables sugeridos:

- `app/agents/`
- `app/orchestrator/graph.py`
- `app/orchestrator/state.py`
- `app/orchestrator/nodes.py`
- ejemplo de ejecución
- notas en README

Argumentos:

$ARGUMENTS
