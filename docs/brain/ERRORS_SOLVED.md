# Errores Resueltos

Registrar solo errores relevantes que valga la pena no volver a investigar.

## Formato corto

```text
Fecha:
Síntoma:
Causa raíz:
Solución:
Prevención:
Archivos afectados:
```

## Errores

### 2026-05-12 - Memoria demasiado genérica para reutilizar contexto

- Síntoma: La memoria del proyecto estaba en estado plantilla y obligaba a releer varios archivos sin prioridad clara.
- Causa raíz: No existía separación entre índice, contexto estable, decisiones y errores.
- Solución: Crear `CONTEXT_INDEX.md` y compactar `MEMORY.md`, `DECISIONS.md` y `ERRORS_SOLVED.md`.
- Prevención: Guardar cada dato en su archivo correcto y leer solo lo necesario según la tarea.
- Archivos afectados: `docs/brain/CONTEXT_INDEX.md`, `docs/brain/MEMORY.md`, `docs/brain/DECISIONS.md`, `docs/brain/ERRORS_SOLVED.md`
