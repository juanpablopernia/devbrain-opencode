---
name: chrome-extensions
description: Crea, modifica o depura extensiones Chrome/Chromium con Manifest V3. Usa esta skill cuando el usuario mencione extensiones, `manifest.json`, content scripts, service worker, popup, side panel o publicación en Chrome Web Store.
compatibility: opencode
---

# Chrome Extensions

Guía para extensiones Chrome con Manifest V3.

## Cuándo usarla

- Crear una extensión Chrome.
- Arreglar `manifest.json`.
- Implementar content scripts, popup, side panel o background/service worker.
- Publicar en Chrome Web Store.

## Reglas obligatorias

- Usa Manifest V3.
- No referencies iconos inexistentes.
- Si defines side panel, proporciona una forma real de abrirlo.
- No dependas de estado en memoria del service worker; persiste en `chrome.storage`.
- Si lees `tab.url`, declara permisos correctos.
- Usa `async/await`, no cadenas innecesarias de `.then()`.
- Considera CSP: evita `eval` salvo contextos sandbox controlados.
- No asumas que `activeTab` sirve para cualquier flujo.

## Checklist rápido

- ¿Los permisos son mínimos pero suficientes?
- ¿El service worker sobrevive a reinicios?
- ¿La UI tiene feedback visible?
- ¿La extensión funciona con accesibilidad básica?
- ¿Los archivos referenciados en el manifest existen realmente?

## Complementos recomendados

- Usa `modern-web-guidance` para APIs y UI web general.
- Usa `ui-ux-pro-max` si la extensión requiere mejor UX visual.

## Fuente de referencia

- Basada en `github/modern-web-guidance-main/skills/chrome-extensions/SKILL.md`.
