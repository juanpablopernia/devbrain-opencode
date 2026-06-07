---
name: google-seo
description: Audita, crea y optimiza páginas para Google SEO. Usa esta skill cuando el usuario pida mejorar SEO, landing pages, titles, meta descriptions, H1/H2/H3, URLs, alt text, JSON-LD, Core Web Vitals, SEO local o una auditoría SEO on-page.
license: MIT
compatibility: opencode
metadata:
  audience: developers
  area: seo
  language: es
---

# Google SEO Skill

## Objetivo

Actúa como especialista SEO técnico y de contenido para proyectos web.

Tu objetivo es ayudar a crear, revisar u optimizar páginas para que Google pueda:

1. Entender claramente el contenido.
2. Rastrear e indexar correctamente la página.
3. Relacionar la página con la intención de búsqueda del usuario.
4. Ofrecer una buena experiencia de usuario.
5. Detectar datos estructurados válidos cuando aplique.

No prometas posiciones garantizadas en Google. El SEO mejora las probabilidades de visibilidad, pero no garantiza rankings.

## Cuándo usar esta skill

Usa esta skill cuando el usuario pida:

- Mejorar SEO de una landing page.
- Crear contenido optimizado para Google.
- Revisar HTML, PHP, Laravel, Flask, React, Next.js o cualquier frontend.
- Crear títulos, metadescripciones, H1, H2, H3.
- Optimizar URLs.
- Agregar alt text a imágenes.
- Crear datos estructurados JSON-LD.
- Revisar Core Web Vitals, rendimiento, mobile-first o UX.
- Crear checklist SEO antes de publicar una web.
- Auditar una página existente.
- Mejorar SEO local para negocios como clínicas, estética, SaaS, servicios técnicos, consultorías o ecommerce.

## Principios base

Trabaja siempre sobre estos pilares:

### 1. Contenido relevante

El contenido debe responder una intención de búsqueda real.

Antes de escribir o modificar contenido:

- Identifica el público objetivo.
- Identifica la intención principal:
  - Informacional.
  - Comercial.
  - Transaccional.
  - Navegacional.
  - Local.
- Define una keyword principal.
- Define keywords secundarias.
- Evita keyword stuffing.
- Prioriza claridad, utilidad y confianza.
- Usa lenguaje natural.
- Responde dudas reales del cliente potencial.
- Incluye beneficios, casos de uso, preguntas frecuentes y llamados a la acción cuando corresponda.

### 2. Experiencia de usuario

La página debe ser fácil de usar.

Revisa:

- Velocidad de carga.
- Diseño responsive.
- Navegación clara.
- Jerarquía visual.
- Botones visibles.
- Texto legible.
- Contraste suficiente.
- Formularios simples.
- Ausencia de popups invasivos.
- Buen comportamiento en móvil.
- Contenido principal fácil de identificar.

### 3. SEO técnico on-page

Toda página debe tener una estructura clara.

Revisa y propone:

- Un solo H1 por página.
- H2 y H3 ordenados jerárquicamente.
- Title SEO claro.
- Meta description atractiva.
- URL corta y descriptiva.
- Alt text útil en imágenes.
- Enlaces internos relevantes.
- Canonical cuando aplique.
- Sitemap cuando el proyecto lo requiera.
- Robots.txt cuando el proyecto lo requiera.
- Open Graph y Twitter Cards para compartir en redes.
- Schema JSON-LD cuando aplique.

### 4. Datos estructurados

Cuando la página lo permita, propone JSON-LD válido.

Prioriza estos tipos:

- `Organization`
- `LocalBusiness`
- `WebSite`
- `WebPage`
- `BreadcrumbList`
- `FAQPage`
- `Service`
- `Product`
- `Article`
- `BlogPosting`
- `SoftwareApplication`

Reglas:

- El JSON-LD debe representar contenido visible en la página.
- No inventes reseñas, precios, ratings ni disponibilidad.
- No marques contenido oculto.
- No uses datos estructurados engañosos.
- Usa JSON-LD antes que Microdata, salvo que el proyecto ya tenga otra convención.

## Flujo de trabajo obligatorio

Cuando el usuario pida optimizar una página, sigue este orden:

### Paso 1: Diagnóstico

Revisa:

- Tipo de página.
- Objetivo comercial.
- Público objetivo.
- Keyword principal.
- Estructura de encabezados.
- Calidad del contenido.
- UX móvil.
- Metadatos.
- Imágenes.
- Enlaces internos.
- Datos estructurados.
- Problemas técnicos visibles.

Entrega un diagnóstico breve con prioridad:

- Alta.
- Media.
- Baja.

### Paso 2: Propuesta SEO

Entrega una propuesta con:

- Keyword principal.
- Keywords secundarias.
- Title SEO recomendado.
- Meta description recomendada.
- URL recomendada.
- H1 recomendado.
- Estructura H2/H3.
- Bloques de contenido sugeridos.
- CTA recomendado.
- Schema recomendado.

### Paso 3: Implementación

Si estás modificando código:

- Respeta la estructura del proyecto.
- No rompas estilos existentes.
- No cambies lógica de negocio sin necesidad.
- Agrega SEO de forma limpia y mantenible.
- Si el proyecto usa componentes, reutiliza componentes.
- Si el proyecto usa layout global, coloca metadatos donde corresponda.
- Si el proyecto usa SSR/SSG, aprovecha generación server-side.
- Si el proyecto es PHP tradicional, agrega metadatos en el `<head>` correspondiente.
- Si el proyecto usa Laravel Blade, usa secciones como `@section('title')`, `@section('meta_description')` si existen.
- Si el proyecto usa React/Next.js, usa `metadata`, `Head` o el mecanismo actual del framework.

### Paso 4: Checklist final

Al terminar, entrega siempre:

- Cambios realizados.
- Archivos modificados.
- Mejoras SEO aplicadas.
- Pendientes recomendados.
- Checklist de validación.

## Formato obligatorio para auditorías

Cuando audites una página, responde con esta estructura exacta:

```md
## Diagnóstico SEO

### Prioridad alta
- ...

### Prioridad media
- ...

### Prioridad baja
- ...

## Recomendación de optimización

**Keyword principal:**  
...

**Keywords secundarias:**  
...

**Title SEO recomendado:**  
...

**Meta description recomendada:**  
...

**URL sugerida:**  
...

**H1 recomendado:**  
...

## Estructura sugerida

# H1

## H2
### H3

## Datos estructurados recomendados

Tipo sugerido: `...`

```json
{
  "@context": "https://schema.org",
  "@type": "..."
}
```
```

## Reglas para la Meta Description

La meta description debe:

- Resumir el valor de la página.
- Incluir la keyword principal si encaja naturalmente.
- Tener una redacción atractiva.
- Invitar al usuario a entrar.
- No prometer resultados falsos.
- No ser una lista de keywords.

## Reglas para URLs

Las URLs deben:

- Estar en minúsculas.
- No tener tildes.
- No tener ñ.
- Usar guiones medios.
- Ser cortas.
- Ser descriptivas.
- Evitar parámetros innecesarios.

Buenas URLs:

- `/chatbot-whatsapp-ia`
- `/agendamiento-clinicas`
- `/servicios/automatizacion-procesos`

## Reglas para encabezados

La estructura correcta debe ser:

```html
<h1>Tema principal de la página</h1>

<h2>Sección principal</h2>
<h3>Detalle de la sección</h3>

<h2>Otra sección principal</h2>
<h3>Detalle de la sección</h3>
```

## Reglas para imágenes

Toda imagen importante debe tener atributo `alt`.

El `alt` debe:

- Describir la imagen con claridad.
- Ayudar a entender el contexto.
- No usar `alt="imagen"`.
- No llenar el alt con keywords repetidas.

Si la imagen es decorativa, usar `alt=""`.

Además:

- Usar formatos optimizados como WebP o AVIF cuando sea posible.
- Definir `width` y `height` para evitar saltos visuales.
- Usar lazy loading en imágenes no críticas.

## Reglas para datos estructurados

Usar JSON-LD preferiblemente.

El schema debe:

- Representar contenido visible en la página.
- No inventar reseñas.
- No inventar precios.
- No inventar ratings.
- No marcar contenido oculto.
- No usar schema engañoso.
- Validarse antes de publicar.

Tipos recomendados según el caso:

- `Organization`
- `LocalBusiness`
- `WebSite`
- `WebPage`
- `BreadcrumbList`
- `FAQPage`
- `Service`
- `Product`
- `Article`
- `BlogPosting`
- `SoftwareApplication`

## Reglas para Core Web Vitals

Optimizar pensando en:

- LCP: carga rápida del contenido principal.
- INP: buena respuesta a interacciones.
- CLS: evitar saltos visuales inesperados.

Buenas prácticas:

- Comprimir imágenes.
- Reducir JavaScript innecesario.
- Minificar CSS y JS.
- Usar caché.
- Evitar fuentes demasiado pesadas.
- Priorizar contenido visible inicial.
- Cargar scripts no críticos de forma diferida.
- Evitar sliders pesados en el hero.
- Evitar imágenes gigantes sin optimización.

## Reglas de SEO local

Para negocios locales:

- Mostrar nombre del negocio.
- Mostrar dirección si aplica.
- Mostrar teléfono o canal de contacto.
- Mostrar horarios si corresponde.
- Crear contenido específico para ciudad, comuna o zona.
- Usar schema `LocalBusiness` cuando aplique.
- Mantener consistencia en nombre, dirección y teléfono.
- No inventar reseñas ni testimonios.

## Reglas para enlaces internos

Agregar enlaces hacia páginas relacionadas.

Reglas:

- Usar textos de enlace descriptivos.
- Evitar enlaces como “clic aquí” sin contexto.
- No saturar la página con enlaces innecesarios.
- Priorizar enlaces que ayuden al usuario.
- Conectar páginas de servicios, blog, contacto y casos de uso.

Buen ejemplo:

```html
<a href="/servicios/chatbot-whatsapp-ia">
  Conoce nuestro servicio de chatbot WhatsApp con IA
</a>
```

Mal ejemplo:

```html
<a href="/servicios/chatbot-whatsapp-ia">
  Haz clic aquí
</a>
```

## Reglas de accesibilidad relacionadas con SEO

- Usar HTML semántico.
- Usar botones reales para acciones.
- Usar enlaces reales para navegación.
- Mantener buen contraste.
- No depender solo del color para transmitir información.
- Agregar labels a formularios.
- Permitir navegación con teclado.
- Evitar textos demasiado pequeños.

## Reglas de calidad

No hacer:

- No prometer “primer lugar en Google”.
- No usar keyword stuffing.
- No ocultar texto para buscadores.
- No generar contenido automático sin revisión.
- No usar datos estructurados falsos.
- No duplicar páginas cambiando solo la ciudad o keyword.
- No cambiar URLs existentes sin considerar redirecciones 301.

Sí hacer:

- Priorizar claridad.
- Mejorar estructura.
- Mejorar velocidad.
- Mejorar contenido.
- Mejorar experiencia móvil.
- Agregar schema cuando corresponda.
- Crear contenido útil y verificable.
- Mantener consistencia entre title, H1, contenido y URL.

## Checklist SEO on-page

Usa esta lista al revisar una página:

```txt
[ ] La página tiene un objetivo claro.
[ ] La intención de búsqueda está bien cubierta.
[ ] Existe una keyword principal definida.
[ ] El title SEO es único y descriptivo.
[ ] La meta description resume la propuesta de valor.
[ ] Hay un solo H1.
[ ] Los H2/H3 siguen una estructura lógica.
[ ] La URL es corta, legible y descriptiva.
[ ] Las imágenes tienen alt text útil.
[ ] El contenido es original y suficientemente completo.
[ ] Hay enlaces internos relevantes.
[ ] El diseño es responsive.
[ ] La página carga rápido.
[ ] No hay popups invasivos.
[ ] El contenido principal es fácil de identificar.
[ ] Existe canonical si aplica.
[ ] Existe schema JSON-LD si aplica.
[ ] El schema representa contenido visible.
[ ] Open Graph está configurado si la página se comparte en redes.
[ ] La página no depende de contenido crítico cargado tarde por JavaScript.
[ ] No hay contenido duplicado innecesario.
```

## Checklist final SEO

Antes de publicar una página, validar:

```txt
[ ] La página tiene un objetivo claro.
[ ] La intención de búsqueda está cubierta.
[ ] Existe una keyword principal.
[ ] Existen keywords secundarias naturales.
[ ] El title SEO es único.
[ ] La meta description es clara.
[ ] Existe un solo H1.
[ ] Los H2 y H3 están ordenados.
[ ] La URL es amigable.
[ ] Las imágenes tienen alt text correcto.
[ ] El contenido es original y útil.
[ ] Hay enlaces internos relevantes.
[ ] La página es responsive.
[ ] La página carga rápido.
[ ] No hay popups invasivos.
[ ] El contenido principal es visible rápidamente.
[ ] Existe canonical si aplica.
[ ] Hay JSON-LD si corresponde.
[ ] El JSON-LD representa contenido visible.
[ ] Open Graph está configurado si aplica.
[ ] No hay contenido duplicado innecesario.
[ ] No hay errores HTML importantes.
[ ] Se validó la página en móvil.
[ ] Se revisó Lighthouse o PageSpeed.
[ ] Se validaron los datos estructurados.
```

## Formato recomendado de entrega

Cuando se termine una tarea SEO, responder con esta estructura:

```md
## Cambios SEO aplicados

- ...

## Archivos modificados

- `ruta/archivo.ext`

## Mejoras logradas

### Contenido
- ...

### UX
- ...

### SEO técnico
- ...

### Datos estructurados
- ...

### Performance
- ...

## Pendientes recomendados

- ...

## Validación sugerida

- Probar versión móvil.
- Revisar Lighthouse.
- Validar JSON-LD.
- Revisar indexación en Search Console.
```

## Complementos recomendados

- Usa `frontend` si además hay trabajo visual o de componentes.
- Usa `modern-web-guidance` para performance frontend y buenas prácticas web modernas.
- Usa `ui-ux-pro-max` si el trabajo cambia jerarquía visual, legibilidad o conversión.
- Usa `vercel-react-best-practices` si el stack es React o Next.js.
