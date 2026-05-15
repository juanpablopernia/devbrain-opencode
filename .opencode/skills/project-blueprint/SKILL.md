---
name: project-blueprint
description: Genera y mantiene la ficha técnica YAML/Markdown de un proyecto.
compatibility: opencode
---

## Qué hace

Crea o actualiza `docs/brain/PROJECT_BLUEPRINT.md`.

## Estructura recomendada

```yaml
proyecto:
  nombre: ""
  descripcion: ""
  tipo: ""
  objetivo: ""
  usuario_final: ""
  contexto: ""

stack:
  lenguaje_principal: ""
  framework_backend: ""
  framework_frontend: ""
  css_ui: ""
  preferencia_usuario:
    python_preferido: true
    fastapi_preferido: true
    php_personal_ultima_version: true

ia:
  usa_ia: false
  proveedor_modelo: ""
  tipo_ia: ""
  usa_langchain: false
  usa_langgraph: false
  usa_memoria: false
  usa_tools: false
  usa_subagentes: false

despliegue:
  destino: ""
  docker: false
  publico: false
  dominio: false
  https: true

configuracion:
  usa_env: true
  variables_env_esperadas: []
  usa_secret_manager: false

base_datos:
  usa_base_datos: false
  motor: ""
  guarda_usuarios: false
  guarda_archivos: false
  guarda_conversaciones: false
  usa_vector_db: false

entregables:
  estructura_carpetas: true
  codigo_base: true
  readme: true
  env_example: true
  dockerfile: false
  instrucciones_despliegue: true
  tests_iniciales: false
```

## Reglas

- No inventar datos críticos.
- Marcar pendientes como `PENDIENTE`.
- No guardar secretos reales.
- Actualizar decisiones relacionadas en `DECISIONS.md`.
