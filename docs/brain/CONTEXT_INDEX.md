# Context Index

## Proyecto
- Tipo: kit reutilizable para OpenCode
- Objetivo: iniciar y operar proyectos con agentes, commands, skills y memoria por proyecto
- Estado: estructura base funcional, memoria optimizada para bajo consumo de contexto

## Stack real del repo
- Markdown para documentación y memoria
- Bash/PowerShell para scripts de inicialización y actualización
- Configuración OpenCode en `.opencode/`
- Node.js solo para dependencia del plugin OpenCode

## Rutas clave
- `.opencode/agents/`
- `.opencode/commands/`
- `.opencode/skills/`
- `docs/brain/`
- `bin/`
- `templates/`

## Leer según tarea
- Cambios de arquitectura o alcance: `PROJECT_BLUEPRINT.md` y `DECISIONS.md`
- Implementación o continuidad de trabajo: `MEMORY.md`
- Debugging o regresiones: `ERRORS_SOLVED.md`
- Ubicación rápida de contexto: este archivo

## Estado actual
- Existe flujo base: `/intake -> /plan -> /implement -> /review -> /document`
- El repo actúa como kit base, no como app final
- La memoria fue separada en índice, contexto estable, decisiones y errores
- No se deben guardar secretos reales

## Regla de uso
- Leer solo el archivo necesario según la tarea
- Evitar cargar `docs/brain/*.md` completo si no hace falta
