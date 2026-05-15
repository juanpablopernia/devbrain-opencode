# Memory

Contexto estable y reutilizable. No usar este archivo como historial largo.

## Propósito
- Mantener un kit reutilizable para OpenCode con agentes, commands, skills y memoria por proyecto.
- Servir como base para inicializar nuevos proyectos con una estructura consistente.

## Stack actual
- Documentación: Markdown
- Automatización: Bash y PowerShell
- Configuración operativa: OpenCode (`.opencode/`)
- Dependencia auxiliar: `@opencode-ai/plugin`

## Preferencias del proyecto
- Python como lenguaje preferido para proyectos personales
- FastAPI como backend preferido
- LangGraph para orquestación de agentes
- LangChain para tools, RAG e integraciones IA
- Cloud Run o Firebase para despliegue moderno según el caso
- `.env.example` para documentar variables sin valores reales

## Convenciones
- No guardar secretos reales en documentación ni memoria
- Guardar decisiones técnicas en `DECISIONS.md`
- Guardar errores relevantes en `ERRORS_SOLVED.md`
- Leer solo el archivo necesario según la tarea
- Ejecutar `/review` antes de cerrar cambios importantes

## Rutas clave
- `AGENTS.md`
- `.opencode/agents/`
- `.opencode/commands/`
- `.opencode/skills/`
- `docs/brain/`
- `templates/`
- `bin/`

## Comandos clave
- `/intake`
- `/plan`
- `/implement`
- `/review`
- `/document`
- `./bin/init-project.sh .`
- `./bin/install-global.sh`
- `./bin/update-project-kit.sh <ruta>`

## Restricciones
- No duplicar contexto entre archivos de `docs/brain/`
- No guardar conversaciones completas
- No convertir `MEMORY.md` en changelog

## Pendientes críticos
- Mantener la ficha técnica del repo alineada con su uso real
- Seguir documentando solo decisiones y errores con impacto futuro
