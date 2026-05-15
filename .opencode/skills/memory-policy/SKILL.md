---
name: memory-policy
description: Define qué guardar en memoria del proyecto y qué no guardar para reducir contexto.
compatibility: opencode
---

## Objetivo

Mantener un cerebro útil en `docs/brain/` sin contaminar contexto.

## Guardar

- Stack elegido.
- Decisiones técnicas.
- Comandos importantes.
- Errores resueltos.
- Rutas relevantes.
- Convenciones.
- Variables `.env` esperadas sin valores.
- Pendientes importantes.

## No guardar

- API keys.
- Passwords.
- Tokens.
- Credenciales.
- Secretos reales.
- Datos sensibles innecesarios.
- Conversaciones completas sin resumen.

## Archivos

- `PROJECT_BLUEPRINT.md`: ficha técnica.
- `DECISIONS.md`: decisiones.
- `MEMORY.md`: contexto estable.
- `ERRORS_SOLVED.md`: errores y soluciones.
- `CONTEXT_INDEX.md`: índice de contexto si el proyecto crece.

## Regla de contexto

Antes de responder, leer solo lo necesario.
No cargar todos los archivos si la tarea no lo requiere.
