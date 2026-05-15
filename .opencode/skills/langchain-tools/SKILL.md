---
name: langchain-tools
description: Diseña tools e integraciones con LangChain para APIs, funciones, RAG y automatización.
compatibility: opencode
---

## Cuándo usar

- El agente necesita ejecutar funciones.
- El sistema consulta APIs externas.
- El agente debe buscar información en documentos.
- Se necesita componer chains o herramientas.

## Reglas

- No usar LangChain si una función simple basta.
- Mantener tools pequeñas y determinísticas.
- Validar inputs.
- Manejar errores claramente.
- No entregar secrets al modelo.
- Registrar qué tool se invoca y por qué.

## Diseño de tool

Cada tool debe tener:

- Nombre claro.
- Descripción concreta.
- Input schema.
- Output esperado.
- Errores posibles.
- Tests si aplica.

## Buen patrón

```text
tool -> service -> provider/client
```

No mezclar lógica de negocio con llamadas directas al proveedor.
