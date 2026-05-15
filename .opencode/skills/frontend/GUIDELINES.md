# Frontend Guidelines

Guía técnica extendida para revisar y construir interfaces web modernas, accesibles, rápidas y mantenibles.

Esta guía complementa la skill principal `frontend`.

## 1. Accesibilidad

### Reglas

- Botones solo ícono necesitan `aria-label`.
- Controles de formulario necesitan `<label>` o `aria-label`.
- Elementos interactivos deben funcionar con teclado.
- Usa `<button>` para acciones.
- Usa `<a>` o `<Link>` para navegación.
- No uses `<div onClick>` ni `<span onClick>` para acciones.
- Imágenes necesitan `alt`.
- Imágenes decorativas deben usar `alt=""`.
- Íconos decorativos deben usar `aria-hidden="true"`.
- Actualizaciones asíncronas importantes deben usar `aria-live="polite"`.
- Usa HTML semántico antes que ARIA.
- Mantén jerarquía correcta de headings: `h1` a `h6`.
- Agrega skip link si la página tiene navegación compleja.

### Revisar

- ¿Se puede navegar con teclado?
- ¿El foco es visible?
- ¿Los lectores de pantalla pueden entender la interfaz?
- ¿Los botones tienen texto o nombre accesible?
- ¿Los formularios tienen labels reales?

## 2. Focus states

### Reglas

- Todo elemento interactivo necesita foco visible.
- Usa `:focus-visible` cuando sea posible.
- No uses `outline: none` sin reemplazo visible.
- En Tailwind, usa clases como `focus-visible:ring-*`.
- Usa `:focus-within` para controles compuestos.

### Anti-patrones

```css
button:focus {
  outline: none;
}
```

Mejor:

```css
button:focus-visible {
  outline: 2px solid currentColor;
  outline-offset: 2px;
}
```

## 3. Formularios

### Reglas

- Inputs necesitan `name` significativo.
- Usa `autocomplete` cuando corresponda.
- Usa tipos correctos: `email`, `tel`, `url`, `number`, `password`, etc.
- Usa `inputmode` en móvil cuando ayude.
- No bloquees pegar texto.
- Labels deben ser clickeables.
- Checkboxes y radios deben compartir área clickeable con su label.
- Muestra errores inline.
- Enfoca el primer error al enviar.
- Muestra spinner o estado de carga durante el request.
- El botón submit debe deshabilitarse solo cuando el request ya inició.
- No uses placeholder como único label.
- Advierte antes de salir si hay cambios sin guardar.

### Ejemplo correcto

```html
<label for="email">Correo electrónico</label>
<input
  id="email"
  name="email"
  type="email"
  autocomplete="email"
/>
```

## 4. Animaciones

### Reglas

- Respeta `prefers-reduced-motion`.
- Anima preferentemente `transform` y `opacity`.
- Evita `transition: all`.
- Define propiedades específicas en las transiciones.
- Usa animaciones suaves, rápidas y no invasivas.
- Las animaciones deben poder interrumpirse por interacción del usuario.

Mal:

```css
.card {
  transition: all 0.3s ease;
}
```

Bien:

```css
.card {
  transition-property: transform, opacity, box-shadow;
  transition-duration: 200ms;
  transition-timing-function: ease;
}
```

## 5. Tipografía

### Reglas

- Usa `…` en vez de `...`.
- Estados de carga deben terminar con `…`: `Cargando…`, `Guardando…`.
- Usa `font-variant-numeric: tabular-nums` para columnas numéricas.
- Usa `text-wrap: balance` o `text-wrap: pretty` en headings cuando aporte.
- Mantén buen contraste.
- Evita tamaños de texto demasiado pequeños.
- Usa `line-height` cómodo.

## 6. Manejo de contenido

### Reglas

- Textos largos deben manejarse con `truncate`, `line-clamp` o `break-words`.
- En flex, usa `min-w-0` cuando el texto deba truncarse.
- Considera datos vacíos.
- Considera textos muy cortos y muy largos.
- No permitas que el contenido rompa el layout.
- Para contenido generado por usuarios, considera saltos de línea, URLs largas y caracteres especiales.

## 7. Imágenes

### Reglas

- Toda imagen debe tener `alt`.
- Toda imagen debe tener `width` y `height` cuando sea posible.
- Imágenes no críticas deben usar `loading="lazy"`.
- Imágenes críticas above-the-fold pueden usar `fetchpriority="high"`.
- Optimiza peso y formato.
- Evita imágenes gigantes sin necesidad.
- Usa `object-fit` si necesitas controlar recortes.

### Ejemplo

```html
<img
  src="/img/hero.webp"
  alt="Panel de automatización con inteligencia artificial"
  width="1200"
  height="700"
  fetchpriority="high"
/>
```

## 8. Performance

### Reglas

- Evita dependencias pesadas para comportamientos simples.
- Evita renderizar listas grandes sin estrategia.
- Para listas mayores a 50 elementos, considera virtualización.
- Evita lecturas de layout en render: `getBoundingClientRect`, `offsetHeight`, `offsetWidth`, `scrollTop`.
- Agrupa lecturas y escrituras del DOM.
- Evita cálculos caros en cada pulsación de teclado.
- Usa lazy loading para recursos no críticos.
- Usa preconnect para dominios externos críticos.
- Usa `font-display: swap` en fuentes.
- Evita scripts bloqueantes.

## 9. Navegación y estado

### Reglas

- Los links deben ser `<a>` o `<Link>`.
- Las acciones deben ser `<button>`.
- El estado importante debería reflejarse en la URL cuando aplique:
  - filtros
  - tabs
  - paginación
  - búsqueda
  - paneles expandidos
- Las acciones destructivas necesitan confirmación o deshacer.
- Soporta Cmd/Ctrl click y click medio en navegación.
- Evita navegación con `onClick` si debería ser un link.

## 10. Touch e interacción móvil

### Reglas

- Usa objetivos táctiles cómodos.
- Usa `touch-action: manipulation` cuando corresponda.
- Controla `-webkit-tap-highlight-color` intencionalmente.
- En modales, usa `overscroll-behavior: contain`.
- Evita `autoFocus` en móvil salvo caso justificado.
- Evita elementos demasiado pequeños.
- Revisa menús móviles, modales y formularios en pantallas pequeñas.

## 11. Layout y safe areas

### Reglas

- Usa flex/grid antes que mediciones con JavaScript.
- Evita scroll horizontal no deseado.
- Usa `overflow-x-hidden` con cuidado, solo si corresponde.
- En diseños full-bleed móviles, considera `env(safe-area-inset-*)`.
- Evita layouts que dependan de alturas fijas rígidas.
- Asegura que los modales funcionen con teclado abierto en móvil.

## 12. Dark mode y theming

### Reglas

- En tema oscuro, usa `color-scheme: dark`.
- Define colores explícitos en inputs y selects.
- Usa buen contraste.
- Asegura estados hover/focus/active en ambos temas.
- Define `meta name="theme-color"` acorde al fondo.
- No dependas solo del color para comunicar estado.

## 13. Localización e internacionalización

### Reglas

- Fechas y horas deben usar `Intl.DateTimeFormat`.
- Números y monedas deben usar `Intl.NumberFormat`.
- No hardcodees formatos si la app puede tener distintos usuarios.
- No detectes idioma por IP.
- Para marcas, código o tokens, usa `translate="no"` cuando aplique.

### Ejemplo

```js
const precio = new Intl.NumberFormat('es-CL', {
  style: 'currency',
  currency: 'CLP'
}).format(25000);
```

## 14. Seguridad de hidratación

Aplica especialmente a React, Next.js o frameworks SSR.

### Reglas

- Inputs con `value` necesitan `onChange`.
- Usa `defaultValue` si el input no es controlado.
- Evita renderizar fechas distintas entre servidor y cliente.
- Usa `suppressHydrationWarning` solo cuando sea realmente necesario.
- No dependas de `window` durante render del servidor.

## 15. Hover e interacción visual

### Reglas

- Botones y links necesitan feedback visual.
- Estados hover, active y focus deben ser claros.
- El estado focus debe tener más prioridad que hover.
- No uses solo color si el estado es importante.
- Mantén consistencia entre componentes.

## 16. Contenido y copy

### Reglas

- Usa textos específicos.
- Botones deben indicar la acción real.
- Mensajes de error deben explicar cómo corregir.
- Usa voz activa.
- Evita textos genéricos como:
  - `Continuar`
  - `Enviar`
  - `Click aquí`
- Prefiere:
  - `Guardar API Key`
  - `Enviar solicitud`
  - `Cotizar por WhatsApp`
  - `Crear usuario`
  - `Descargar reporte`

## 17. Estados UI obligatorios

Todo componente o pantalla debe considerar:

- Loading.
- Error.
- Empty.
- Success.
- Disabled.
- Hover.
- Focus.
- Active.

### Ejemplo

Una tabla de usuarios debe tener:

- Loading mientras carga.
- Empty si no hay usuarios.
- Error si falla la API.
- Success si se guarda un usuario.
- Disabled si una acción no está disponible.

## 18. Widgets embebibles

### Reglas

- Aislar estilos.
- Usar prefijos en clases.
- Evitar CSS global agresivo.
- Evitar dependencias pesadas.
- No bloquear la página anfitriona.
- Cargar de forma diferida si corresponde.
- Manejar errores sin romper el sitio.
- Debe funcionar en móvil.
- Debe ser fácil de insertar con un script.
- Evita modificar `body`, `html` o estilos globales salvo que sea necesario.

### Recomendación de prefijo

```css
.open24-widget {}
.open24-widget-button {}
.open24-widget-panel {}
```

## 19. Anti-patrones

Marca estos problemas durante una revisión:

- `user-scalable=no`.
- `maximum-scale=1`.
- `onPaste` con `preventDefault`.
- `transition: all`.
- `outline: none` sin reemplazo visible.
- Navegación con `onClick` en vez de `<a>`.
- `<div>` o `<span>` con click handlers.
- Imágenes sin dimensiones.
- Imágenes sin `alt`.
- Listas grandes con `.map()` sin virtualización.
- Inputs sin labels.
- Botones icon-only sin `aria-label`.
- Fechas o monedas hardcodeadas.
- `autoFocus` sin justificación.
- Formularios sin estados de error.
- Modales sin control de foco.
- Widgets que contaminan estilos globales.

## 20. Formato de revisión

Cuando revises archivos frontend, usa este formato:

```text
## src/Button.tsx

src/Button.tsx:42 - botón solo ícono sin aria-label
src/Button.tsx:55 - falta estado focus-visible
src/Button.tsx:67 - evitar transition: all; listar propiedades específicas

## src/Form.tsx

src/Form.tsx:18 - input sin label asociado
src/Form.tsx:36 - error no enfoca el primer campo inválido

## src/Card.tsx

✓ pass
```

### Reglas del reporte

- Agrupa por archivo.
- Usa `archivo:línea`.
- Sé directo.
- No agregues explicación larga si el problema es obvio.
- Da solución breve cuando no sea evidente.
- Marca `✓ pass` si el archivo cumple.

## 21. Checklist final antes de entregar

Antes de dar una implementación como terminada, revisar:

- HTML semántico.
- Accesibilidad básica.
- Foco visible.
- Navegación por teclado.
- Responsive móvil/tablet/escritorio.
- Estados loading/error/empty/success.
- Formularios con labels.
- Imágenes con alt.
- Imágenes con dimensiones.
- Sin `transition: all`.
- Sin dependencias innecesarias.
- Sin navegación con `<div onClick>`.
- Buen contraste.
- Botones claros.
- Código mantenible.
- Performance razonable.
