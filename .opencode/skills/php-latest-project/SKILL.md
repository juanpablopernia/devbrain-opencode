---
name: php-latest-project
description: Crea proyectos PHP personales usando PHP nativo moderno y última versión estable, no legacy.
compatibility: opencode
---

## Regla principal

Para proyectos personales nuevos, usar PHP moderno y la última versión estable disponible.

## Cuándo usar

- API o backend simple en PHP sin framework grande.
- Scripts, automatización o servicios ligeros.
- Proyecto personal o SaaS simple con bajo acoplamiento.

## Enfoque

- PHP nativo moderno.
- Tipado estricto.
- Composer autoload.
- PSR-12.
- `.env.example` sin secretos.
- PDO o librerías modernas cuando haga falta persistencia.

## No usar por defecto

- PHP 5.x.
- Sintaxis legacy.
- `mysql_*`.
- Patrones antiguos sin necesidad.

## Excepción

Solo considerar PHP legacy cuando el usuario indique:

- Trabajo asalariado.
- Servidor existente.
- Migración.
- Compatibilidad con PHP 5.x, 7.x u otra versión específica.
