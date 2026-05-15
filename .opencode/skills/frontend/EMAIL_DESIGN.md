# Email Design

Diseño de emails de alto rendimiento con foco en layout, conversión, renderizado robusto, mobile y deliverability.

Esta guía complementa la skill principal `frontend` para newsletters, campañas, secuencias automatizadas y emails transaccionales.

## Quick start conceptual

Usa esta guía cuando necesites:

- welcome emails
- newsletters
- drip campaigns
- emails promocionales
- changelogs
- emails transaccionales
- banners/header para correo

## Email width y layout

| Restricción | Valor | Motivo |
|---|---:|---|
| Max width | 600px | estándar en Gmail/Outlook |
| Mobile width | 320-414px | fallback responsive |
| Single column | preferido | mejor compatibilidad |
| Two column | con moderación | se rompe en varios clientes |
| Body font | 14-16px | menos de 14px es pobre en móvil |
| Heading font | 22-28px | debe ser escaneable |
| Line height | 1.5 | legibilidad |

### Layout recomendado: pirámide invertida

1. Header visual
2. Headline de una línea
3. 2-3 frases de valor
4. Una CTA principal
5. Footer con unsubscribe

## Subject lines

### Fórmulas útiles

- Número + beneficio
- Pregunta
- How-to
- Urgencia real
- Personalización
- Curiosity gap

### Reglas

- 30-50 caracteres idealmente
- Diseña preview text intencional
- Máximo 1 emoji si aplica
- Nunca usar ALL CAPS
- Evita spam words obvias en subject

### Preview text

No desperdicies el preview text.

Mal:

- `View this email in your browser`
- `Having trouble viewing this?`

Bien:

- Subject: `5 formas de reducir tiempo`
- Preview: `La número 3 nos ahorró 6 horas por semana`

## Tipos de email

### Welcome email

- Subject: `Bienvenido a [Producto] — esto sigue`
- Body: qué obtuvo, qué esperar, primer quick win
- CTA: `Completa tu configuración`

### Promocional

- Problema → solución → oferta → deadline real
- Una CTA clara

### Product update

- Qué cambió
- Por qué importa
- Cómo probarlo

### Transaccional

- Subject con propósito claro
- Diseño mínimo
- Info clave above-the-fold
- Casi nada de contenido promocional

## Header image design

Para banners/header:

- ancho visual de 600px
- entregar idealmente a 2x si se exporta imagen
- usar jerarquía visual clara
- evitar texto demasiado pequeño incrustado en imagen

## CTA buttons

| Regla | Valor |
|---|---|
| Width | 200-300px |
| Height | 44-50px mínimo |
| Color | alto contraste |
| Texto | verbo + resultado |
| Shape | radio 4-8px |
| Quantity | una CTA principal |

### Bulletproof buttons

En email, los botones deben resistir diferencias entre clientes. Prefiere estructura HTML segura y simple.

```html
<table cellpadding="0" cellspacing="0" border="0">
  <tr>
    <td align="center" bgcolor="#22c55e" style="border-radius:6px;">
      <a href="https://yoursite.com/action" target="_blank"
         style="font-size:16px;font-family:sans-serif;color:#ffffff;
                text-decoration:none;padding:12px 24px;display:inline-block;
                font-weight:bold;">
        Start Free Trial
      </a>
    </td>
  </tr>
</table>
```

## Mobile optimization

- single column
- body mínimo 14px
- CTA mínimo 44px alto
- imágenes al 100% de ancho si aplica
- evitar side-by-side frágil
- probar en Gmail app, Apple Mail y Outlook

## Deliverability checklist

- image/text ratio razonable
- alt text en imágenes
- unsubscribe link visible
- from name reconocible
- reply-to real, no `no-reply@`
- higiene de listas
- SPF/DKIM/DMARC cuando aplique

## Errores comunes

- no preview text
- email solo imagen
- múltiples CTAs principales
- texto diminuto
- remitente `no-reply@`
- falta de prueba móvil
- falta de unsubscribe
- sobre-diseño con CSS frágil
- urgencia falsa

## Reglas de implementación

- Prioriza compatibilidad sobre modernidad visual extrema.
- Prefiere inline styles o HTML robusto cuando el contexto sea email real.
- Evita depender de CSS complejo, JS o layouts poco soportados.
- Usa una CTA principal por email.
- Mantén la plantilla fácil de editar y reutilizar.

## Formato de revisión

```text
## emails/welcome.html

emails/welcome.html:22 - falta preview text intencional
emails/welcome.html:48 - CTA principal compite con un segundo botón
emails/welcome.html:80 - imagen sin alt

## emails/receipt.html

✓ pass
```
