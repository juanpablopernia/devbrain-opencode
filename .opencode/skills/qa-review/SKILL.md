---
name: qa-review
description: Revisa código, seguridad, estructura, secretos, compatibilidad y documentación antes de entregar.
compatibility: opencode
---

## Checklist

Usa `code-review` como complemento cuando exista un diff, commit, rama o PR específico que revisar.

### Seguridad

- No hay secrets hardcodeados.
- `.env` no debe estar versionado.
- `.env.example` no contiene valores reales.
- Inputs validados.
- Errores no filtran información sensible.

### Calidad

- Estructura consistente.
- Nombres claros.
- Funciones pequeñas.
- Responsabilidades separadas.
- Manejo de errores.
- Logs útiles.

### Proyecto

- README actualizado.
- Comandos de ejecución documentados.
- Ficha técnica consistente.
- Decisiones importantes guardadas.
- Tests o instrucciones de prueba.

### Compatibilidad

- Stack respeta `PROJECT_BLUEPRINT.md`.
- Python/FastAPI usa estructura moderna.
- PHP personal usa versión moderna, no legacy.
- Node nuevo prefiere TypeScript si corresponde.

## Salida

Clasificar hallazgos:

- Crítico.
- Alto.
- Medio.
- Bajo.
- Recomendación.

Para bugs o seguridad, describe:

- Escenario donde ocurre.
- Causa raíz.
- Impacto concreto.
- Corrección sugerida.
