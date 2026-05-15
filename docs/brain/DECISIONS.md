# Decisiones Técnicas

Registrar aquí solo decisiones con impacto futuro. Evitar notas triviales.

## Formato corto

```text
Fecha:
Decisión:
Motivo:
Alternativas consideradas:
Impacto:
```

## Decisiones

### 2026-05-12

- Decisión: Separar la memoria del proyecto en índice, contexto estable, decisiones y errores.
- Motivo: Reducir consumo de contexto y permitir lectura selectiva según la tarea.
- Alternativas consideradas: Mantener un único archivo de memoria largo.
- Impacto: `CONTEXT_INDEX.md` pasa a ser la puerta de entrada; `MEMORY.md` queda reservado para contexto estable.

### 2026-05-12

- Decisión: Mantener `ERRORS_SOLVED.md` como registro compacto de errores relevantes.
- Motivo: Evitar repetir debugging y preservar solo aprendizaje reutilizable.
- Alternativas consideradas: Guardar errores dentro de `MEMORY.md`.
- Impacto: La depuración futura consulta un archivo especializado en vez de cargar toda la memoria.
