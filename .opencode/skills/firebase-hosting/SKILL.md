---
name: firebase-hosting
description: Prepara Firebase Hosting, Functions, Auth o Firestore según el tipo de proyecto.
compatibility: opencode
---

## Cuándo usar

- Landing page.
- Frontend estático.
- SPA.
- App con Firebase Auth.
- Functions backend pequeñas.
- Firestore como base de datos.

## Reglas

- Separar Hosting, Functions, Auth y Firestore.
- No poner secrets en frontend.
- Usar `.env` o config segura para Functions.
- Documentar comandos `firebase init`, `firebase deploy`.

## Preguntas clave

- ¿Solo hosting?
- ¿Necesita Functions?
- ¿Necesita Auth?
- ¿Necesita Firestore?
- ¿Se conecta con Cloud Run?
