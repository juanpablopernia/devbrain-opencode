---
name: plan-mode
description: Planificación previa para tareas no triviales, multiarchivo o con decisiones de arquitectura. Usa esta skill cuando el cambio tenga varias rutas posibles, afecte módulos distintos o convenga diseñar antes de implementar.
compatibility: opencode
---

# Plan Mode

Guía para planificar antes de construir.

## Cuándo usarla

- Nuevas features medianas o grandes.
- Refactors multiarchivo.
- Decisiones de arquitectura.
- Cambios con ambigüedad o varias soluciones posibles.

## Secuencia recomendada

1. Explora el sistema actual.
2. Identifica source of truth, límites y dependencias.
3. Aclara ambigüedades con el usuario.
4. Diseña la solución más pequeña que siga siendo coherente.
5. Define verificación antes de implementar.

## Preguntas obligatorias

- ¿Qué parte del sistema cambia realmente?
- ¿Dónde vive la fuente de verdad antes y después?
- ¿Qué nuevo estado o transición se introduce?
- ¿Qué dependencias o interfaces se ven afectadas?
- ¿Existe una solución más coherente que el parche local?

## Complementos recomendados

- Usa `project-blueprint` si el alcance del proyecto cambia.
- Usa `architect` para diseño modular.

## Fuente de referencia

- Basada en `github/open-agents-main/.agents/skills/plan-mode/SKILL.md`.
