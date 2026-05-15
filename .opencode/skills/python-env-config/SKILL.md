---
name: python-env-config
description: Define configuración Python usando .env, pydantic-settings y secretos seguros.
compatibility: opencode
---

## Objetivo

Estandarizar configuración por variables de entorno.

## Reglas

- Crear `.env.example`.
- No crear `.env` con secretos reales.
- Usar `pydantic-settings` si el proyecto usa FastAPI moderno.
- Separar configuración local y producción.
- En producción, preferir variables del entorno o Secret Manager.

## Ejemplo conceptual

```python
from pydantic_settings import BaseSettings

class Settings(BaseSettings):
    app_name: str = "DevBrain App"
    app_env: str = "local"
    openai_api_key: str | None = None

    class Config:
        env_file = ".env"
```

## Checklist

- `.env.example` existe.
- README explica variables.
- No hay secrets hardcodeados.
- `.env` está en `.gitignore`.
