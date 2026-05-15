---
name: firestore-database
description: Modela datos en Firestore para apps, agentes, memoria, conversaciones y documentos.
compatibility: opencode
---

## Cuándo usar

- Apps en Firebase/GCP.
- Memoria simple.
- Conversaciones.
- Configuración por proyecto.
- Logs de tareas.
- Historial de agentes.

## Reglas

- Diseñar colecciones por patrón de consulta.
- Evitar documentos gigantes.
- Usar timestamps.
- Separar datos sensibles.
- Crear reglas de seguridad si hay frontend.
- Considerar costos de lectura/escritura.

## Estructura conceptual para memoria

```text
projects/{projectId}
projects/{projectId}/memories/{memoryId}
projects/{projectId}/decisions/{decisionId}
projects/{projectId}/errors/{errorId}
```
