# Project Blueprint

## Resumen

Ficha técnica viva del proyecto. Mantenerla breve, útil y alineada con la implementación real.

## Ficha técnica

```yaml
proyecto:
  nombre: "PENDIENTE"
  descripcion: "PENDIENTE"
  tipo: "api | web | saas | agente_ia | chatbot | widget | dashboard | automatizacion | otro"
  objetivo: "PENDIENTE"
  usuario_final: "PENDIENTE"
  contexto: "personal | cliente | laboral | experimento | producto_saas"

stack:
  lenguaje_principal: "python"
  framework_backend: "fastapi"
  framework_frontend: "PENDIENTE"
  css_ui: "PENDIENTE"
  preferencia_usuario:
    python_preferido: true
    fastapi_preferido: true
    php_personal_ultima_version: true

ia:
  usa_ia: false
  proveedor_modelo: "PENDIENTE"
  tipo_ia: "PENDIENTE"
  usa_langchain: false
  usa_langgraph: false
  usa_memoria: false
  usa_tools: false
  usa_subagentes: false

despliegue:
  destino: "local | cloud_run | firebase | vps | servidor_linux | hosting_php | otro"
  docker: false
  publico: false
  dominio: false
  https: true
  observaciones: ""

configuracion:
  usa_env: true
  archivo_env: ".env"
  variables_env_esperadas: []
  usa_secret_manager: false
  nota_seguridad: "No guardar valores reales de secretos en memoria."

base_datos:
  usa_base_datos: false
  motor: "firestore | postgresql | mysql | sqlite | mongodb | oracle | ninguno"
  guarda_usuarios: false
  guarda_archivos: false
  guarda_conversaciones: false
  usa_vector_db: false

integraciones:
  servicios_externos: []
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

agentes_recomendados: []
skills_recomendadas: []
preguntas_pendientes: []
```

## Notas

- No guardar secretos reales.
- Actualizar este archivo cuando cambie el alcance o stack real del proyecto.
