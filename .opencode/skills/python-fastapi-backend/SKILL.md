---
name: python-fastapi-backend
description: Crea backend Python moderno con FastAPI, Pydantic, rutas, servicios y configuración .env.
compatibility: opencode
---

## Cuándo usar

- API REST.
- Backend Python.
- Microservicio para Cloud Run.
- Backend para agentes IA.
- Servicio con LangChain o LangGraph.

## Estructura recomendada

```text
app/
├── main.py
├── config.py
├── routes/
│   └── health.py
├── services/
├── schemas/
├── agents/
├── orchestrator/
└── utils/
tests/
.env.example
requirements.txt
README.md
```

## Reglas

- Usar type hints.
- Usar Pydantic para settings y schemas.
- No hardcodear secretos.
- Incluir endpoint `/health`.
- Separar rutas de lógica de negocio.
- Diseñar para despliegue stateless.
- Incluir instrucciones de ejecución local.

## Variables típicas

```text
APP_NAME
APP_ENV
OPENAI_API_KEY
GOOGLE_API_KEY
DATABASE_URL
FIRESTORE_PROJECT_ID
```

Solo documentar nombres, no valores reales.
