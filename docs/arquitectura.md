# Arquitectura del DevBrain OpenCode Kit

## Objetivo

Tener un kit reutilizable para iniciar proyectos con OpenCode usando:

- Agentes especializados.
- Comandos recurrentes.
- Skills reutilizables.
- Memoria por proyecto en Markdown.

## Componentes

```text
.opencode/
├── agents/
├── commands/
└── skills/

docs/brain/
├── CONTEXT_INDEX.md
├── PROJECT_BLUEPRINT.md
├── DECISIONS.md
├── MEMORY.md
└── ERRORS_SOLVED.md
```

`CONTEXT_INDEX.md` debe ser la puerta de entrada para no cargar toda la memoria si no hace falta.

## Agentes

- `orchestrator`: dirige el flujo.
- `project-intake`: levanta requisitos.
- `architect`: diseña arquitectura.
- `backend-python`: implementa Python/FastAPI/LangGraph/LangChain.
- `backend-node`: implementa Node/TypeScript.
- `backend-php`: implementa PHP moderno.
- `frontend`: diseña frontend.
- `devops-cloud`: prepara despliegue.
- `qa-reviewer`: revisa.
- `documenter`: documenta.

## Flujo

```text
/intake -> /plan -> /implement -> /review -> /document
```
