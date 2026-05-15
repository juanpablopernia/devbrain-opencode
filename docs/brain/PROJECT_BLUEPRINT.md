# Project Blueprint

## Resumen

Kit reutilizable para OpenCode orientado a iniciar proyectos con agentes, commands, skills y memoria técnica compacta.

## Ficha técnica

```yaml
proyecto:
  nombre: "devbrain-opencode-v2"
  descripcion: "Kit reutilizable para OpenCode con agentes, commands, skills y memoria por proyecto"
  tipo: "automatizacion"
  objetivo: "Acelerar la creación y operación de proyectos con un flujo guiado y memoria reusable"
  usuario_final: "desarrollador que usa OpenCode"
  contexto: "personal"

stack:
  lenguaje_principal: "markdown"
  framework_backend: "ninguno"
  framework_frontend: "ninguno"
  css_ui: "ninguno"
  herramientas_principales:
    - "OpenCode"
    - "Bash"
    - "PowerShell"
  preferencia_usuario:
    python_preferido: true
    fastapi_preferido: true
    php_personal_ultima_version: true

ia:
  usa_ia: true
  proveedor_modelo: "OpenCode / modelo configurado por entorno"
  tipo_ia: "orquestacion de agentes y asistencia de desarrollo"
  usa_langchain: true
  usa_langgraph: true
  usa_memoria: true
  usa_tools: true
  usa_subagentes: true

despliegue:
  destino: "local"
  docker: false
  publico: false
  dominio: false
  https: true
  observaciones: "El kit puede preparar proyectos para Cloud Run o Firebase, pero este repo funciona como base local reutilizable."

configuracion:
  usa_env: true
  archivo_env: ".env"
  variables_env_esperadas:
    - "Variables del proyecto destino, documentadas en .env.example cuando aplique"
  usa_secret_manager: false
  nota_seguridad: "No guardar valores reales de secretos en memoria."

base_datos:
  usa_base_datos: false
  motor: "ninguno"
  guarda_usuarios: false
  guarda_archivos: false
  guarda_conversaciones: false
  usa_vector_db: false

integraciones:
  servicios_externos:
    - "OpenCode plugin"
  webhooks: false
  emails: false
  pagos: false
  autenticacion: false

entregables:
  estructura_carpetas: true
  codigo_base: true
  readme: true
  env_example: true
  dockerfile: false
  instrucciones_despliegue: true
  tests_iniciales: false

agentes_recomendados:
  - "orchestrator"
  - "project-intake"
  - "architect"
  - "backend-python"
  - "documenter"
  - "qa-reviewer"
skills_recomendadas:
  - "memory-policy"
  - "project-blueprint"
  - "project-intake-general"
  - "python-fastapi-backend"
  - "langgraph-orchestration"
  - "langchain-tools"
preguntas_pendientes:
  - "Conviene añadir automatización para resumir memoria de forma periódica?"
```

## Notas

- Este repo es un kit base para otros proyectos, no una aplicación final.
- La memoria del proyecto fue optimizada para bajo consumo de contexto.
- Python y FastAPI siguen siendo preferencias para proyectos generados, no el stack real de este repo.
