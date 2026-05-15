---
name: cloud-run-deploy
description: Prepara despliegue de aplicaciones en Google Cloud Run con Docker, env vars y logs.
compatibility: opencode
---

## Cuándo usar

- API FastAPI.
- Microservicio Python/Node/PHP.
- Backend stateless.
- Proyecto con contenedor.
- Despliegue público o privado en Google Cloud.

## Reglas

- App debe escuchar en `PORT`.
- No depender de disco persistente local.
- Usar variables de entorno.
- No hardcodear secrets.
- Crear Dockerfile.
- Documentar `gcloud run deploy`.

## Checklist

- Dockerfile.
- `.dockerignore`.
- Health endpoint.
- Variables de entorno.
- Secret Manager si hay secretos.
- README con comandos.
- Logs revisables.

## Comando conceptual

```bash
gcloud run deploy NOMBRE_SERVICIO \
  --source . \
  --region REGION \
  --allow-unauthenticated
```
