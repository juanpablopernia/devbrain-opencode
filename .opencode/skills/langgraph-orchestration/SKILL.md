---
name: langgraph-orchestration
description: Diseña flujos LangGraph con estado, nodos, edges, rutas condicionales y checkpointers.
compatibility: opencode
---

## Cuándo usar

- Orquestación multi-paso.
- Agentes con estado.
- Delegación a subagentes.
- Human-in-the-loop.
- Procesos que requieren memoria persistente.
- Flujos con decisiones condicionales.

## Componentes

- State.
- Nodes.
- Edges.
- Conditional edges.
- Checkpointer si aplica.
- Tools.
- Human review si hay acciones riesgosas.

## Reglas

- Definir estado mínimo.
- Nombrar nodos por responsabilidad.
- Evitar grafos enormes al inicio.
- Registrar decisiones importantes.
- Separar flujo de negocio de detalles de infraestructura.

## Estructura sugerida

```text
app/orchestrator/
├── state.py
├── nodes.py
├── graph.py
└── handoff.py
```
