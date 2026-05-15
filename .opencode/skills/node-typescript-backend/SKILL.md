---
name: node-typescript-backend
description: Crea backend Node.js/TypeScript con Express o Fastify, estructura modular y env vars.
compatibility: opencode
---

## Cuándo usar

- Backend Node.js.
- API TypeScript.
- Firebase Functions.
- Cloud Run con Node.
- Integraciones JavaScript.

## Estructura sugerida

```text
src/
├── server.ts
├── config/
├── routes/
├── controllers/
├── services/
├── schemas/
└── utils/
```

## Reglas

- Preferir TypeScript si es proyecto nuevo.
- Crear `.env.example`.
- No hardcodear secrets.
- Validar inputs.
- Separar servicios de rutas.
- Documentar scripts npm.
