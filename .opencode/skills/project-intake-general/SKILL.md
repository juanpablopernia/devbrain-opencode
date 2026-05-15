---
name: project-intake-general
description: Levanta requisitos técnicos para proyectos nuevos antes de diseñar o implementar.
compatibility: opencode
---

## Qué hace

Guía el levantamiento inicial de un proyecto nuevo.

## Cuándo usar

- El usuario quiere crear una app, API, SaaS, bot, agente, dashboard, widget o automatización.
- Falta claridad sobre stack, despliegue, base de datos o IA.
- No existe `docs/brain/PROJECT_BLUEPRINT.md`.

## Preguntas obligatorias

### Identidad

- Nombre del proyecto.
- Qué se quiere construir.
- Qué problema resuelve.
- Usuario final.
- Contexto: personal, cliente, laboral, SaaS o experimento.

### Stack

- Lenguaje principal.
- Framework backend.
- Framework frontend, si aplica.
- Preferencia por Python + FastAPI si el usuario no decide.

### IA

- Si usa IA.
- Proveedor: OpenAI, Gemini, local u otro.
- LangChain, LangGraph o ambos.
- Memoria, RAG, tools o subagentes.

### Despliegue

- Local, Cloud Run, Firebase, VPS, servidor Linux u otro.
- Docker.
- Dominio.
- HTTPS.
- Público o privado.

### Configuración

- Uso de `.env`.
- Variables esperadas, sin valores reales.
- Estrategia de secretos en producción.

### Datos

- Base de datos.
- Usuarios.
- Archivos.
- Historial/conversaciones.
- Vector DB si aplica.

## Salida

Entregar resumen y ficha técnica YAML.
