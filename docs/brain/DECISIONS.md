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

### 2026-06-01

- Decisión: Integrar habilidades externas de forma selectiva en `.opencode/skills/` y enlazarlas desde agentes existentes en vez de importar repos completos o mezclar todo dentro de una sola skill.
- Motivo: Mejorar capacidad del kit en frontend, UI/UX, planificación y review sin aumentar ruido ni acoplarse a productos ajenos.
- Alternativas consideradas: Importar todas las skills encontradas bajo `github/` o fusionar contenidos extensos dentro de `frontend` y `qa-review`.
- Impacto: El kit gana skills especializadas reutilizables (`modern-web-guidance`, `ui-ux-pro-max`, `web-animation-design`, `vercel-react-best-practices`, `chrome-extensions`, `code-review`, `plan-mode`) y los agentes cargan estas capacidades de forma más explícita.

### 2026-06-01

- Decisión: Reforzar el flujo para que toda implementación empiece reconstruyendo contexto mínimo del proyecto y termine explicando claramente qué cambió y para qué sirve.
- Motivo: Evitar cambios a ciegas al retomar proyectos sin contexto fresco y mejorar continuidad futura del trabajo.
- Alternativas consideradas: Dejar esta práctica como preferencia implícita del operador sin plasmarla en agentes, comandos y memoria.
- Impacto: `AGENTS.md`, `/implement`, el orquestador y el documentador ahora priorizan entender el proyecto antes de editar y dejar trazabilidad funcional de CSS, JS, Python y PHP cuando corresponda.
