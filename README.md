# DevBrain OpenCode Kit

Kit personal de agentes, comandos, skills y plantillas para trabajar con proyectos de programación dentro de OpenCode.

La idea principal:

1. Clonar este repositorio.
2. Instalarlo globalmente o copiarlo dentro de un proyecto.
3. Usar comandos como `/intake`, `/plan`, `/implement`, `/review` y `/document`.
4. Mantener un "cerebro" por proyecto en `docs/brain/`.

## Stack preferido del kit

Este kit está optimizado para proyectos personales con:

- Python como lenguaje principal.
- FastAPI para APIs modernas.
- LangGraph para orquestación de agentes.
- LangChain para tools, RAG e integraciones.
- `.env` para desarrollo local.
- Secret Manager o variables seguras en producción.
- Cloud Run y Firebase como destinos principales de despliegue.

También incluye soporte para:

- PHP moderno.
- JavaScript.
- TypeScript.
- Node.js.

La skill `frontend` del kit cubre:

- interfaces web
- componentes UI
- landing pages
- widgets embebibles
- plantillas de email y newsletters

## Estructura

```text
devbrain-opencode-v2/
├── .opencode/
│   ├── agents/
│   ├── commands/
│   └── skills/
├── templates/
├── docs/
└── bin/
```

## Instalación global

Copia agentes, comandos y skills a tu configuración global de OpenCode:

```bash
./bin/install-global.sh
```

Por defecto funciona en modo seguro y no sobrescribe configuraciones globales existentes.
Si quieres reemplazarlas explícitamente:

```bash
./bin/install-global.sh --force
```

Esto copiará:

```text
.opencode/agents   -> ~/.config/opencode/agents
.opencode/commands -> ~/.config/opencode/commands
.opencode/skills   -> ~/.config/opencode/skills
```

## Dependencia auxiliar del kit

Dentro de `.opencode/package.json` se declara `@opencode-ai/plugin` como dependencia auxiliar del kit.

- Su uso es local a este repositorio.
- No forma parte de la plantilla mínima que se copia a proyectos generados.
- `init-project` copia `agents/`, `commands/`, `skills` y `opencode.jsonc`, no `node_modules` ni `package.json`.

Si trabajas el kit localmente y necesitas esa dependencia, instálala dentro de `.opencode/`.

## Scripts disponibles

- `./bin/init-project.sh <ruta>`: inicializa un proyecto nuevo en Bash
- `./bin/init-project.ps1 -TargetDir <ruta>`: inicializa un proyecto nuevo en PowerShell
- `./bin/update-project-kit.sh <ruta> [--force]`: copia o actualiza `.opencode/` en un proyecto existente

`init-project` crea la carpeta destino si no existe y no sobrescribe archivos o configuración local ya presentes.
`update-project-kit` también es seguro por defecto y solo sobrescribe si usas `--force`.

## Inicializar un proyecto nuevo

Dentro de una carpeta de proyecto:

```bash
/path/to/devbrain-opencode-v2/bin/init-project.sh .
```

En PowerShell:

```powershell
\path\to\devbrain-opencode-v2\bin\init-project.ps1 -TargetDir .
```

Esto crea:

```text
AGENTS.md
README.md
.gitignore
docs/brain/CONTEXT_INDEX.md
docs/brain/PROJECT_BLUEPRINT.md
docs/brain/DECISIONS.md
docs/brain/MEMORY.md
docs/brain/ERRORS_SOLVED.md
.opencode/
```

Luego ejecuta OpenCode dentro del proyecto:

```bash
opencode
```

Y usa:

```text
/intake
```

## Flujo recomendado

```text
/intake     -> levanta requisitos y crea ficha técnica
/plan       -> genera arquitectura y plan
/implement  -> implementa por etapas
/review     -> revisa seguridad, calidad y compatibilidad
/document   -> actualiza README y docs/brain
```

## Commands adicionales del kit

- `/new-project`: inicia el flujo completo para proyectos nuevos
- `/create-fastapi`: prepara una base FastAPI
- `/create-langgraph`: prepara una base LangGraph
- `/memory-save`: guarda una decisión, error o contexto estable en `docs/brain/`

Todos los commands del kit están alineados para empezar por `CONTEXT_INDEX.md` cuando existe y leer solo contexto adicional si hace falta.

## Política de memoria

El cerebro del proyecto vive en:

```text
docs/brain/
```

Estructura recomendada para bajo consumo de contexto:

```text
docs/brain/
├── CONTEXT_INDEX.md
├── PROJECT_BLUEPRINT.md
├── DECISIONS.md
├── MEMORY.md
└── ERRORS_SOLVED.md
```

Se debe guardar:

- Decisiones técnicas.
- Stack elegido.
- Rutas importantes.
- Errores resueltos.
- Variables `.env` esperadas, sin valores reales.
- Convenciones del proyecto.
- Comandos importantes.

No se debe guardar:

- API keys reales.
- Passwords.
- Tokens.
- Credenciales.
- Datos sensibles innecesarios.

Regla práctica:

- Empezar por `CONTEXT_INDEX.md`.
- Leer solo el archivo necesario según la tarea.
- Mantener `MEMORY.md` corto y estable.
- Guardar errores en `ERRORS_SOLVED.md` y no mezclar debugging con memoria general.

## `.env.example`

El archivo `.env.example` de este repo es una plantilla genérica para proyectos que se creen con el kit.
No describe la configuración real interna de `devbrain-opencode-v2`.

La misma aclaración aplica a `templates/ENV.example.template`.

## Verificación manual rápida

Después de inicializar un proyecto, valida al menos:

```bash
ls AGENTS.md docs/brain .opencode .env.example
```

Y confirma que existan:

- `docs/brain/CONTEXT_INDEX.md`
- `docs/brain/PROJECT_BLUEPRINT.md`
- `docs/brain/DECISIONS.md`
- `docs/brain/MEMORY.md`
- `docs/brain/ERRORS_SOLVED.md`

Verificación manual en PowerShell:

```powershell
Get-ChildItem AGENTS.md, docs/brain, .opencode, .env.example
```

Y luego:

```powershell
Set-Location .
opencode
```

## Nota sobre PHP

Para proyectos personales nuevos en PHP, usar siempre PHP moderno / última versión estable disponible.

El kit separa:

- `php-latest-project`: PHP nativo moderno
- `php-laravel-project`: Laravel moderno

PHP legacy, PHP 5.x, PHP 7.x o migraciones a PHP 8.2 solo se consideran cuando el usuario indique explícitamente que se trata de trabajo asalariado, servidor existente o proyecto legacy.
