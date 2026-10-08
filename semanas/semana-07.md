---
title: Semana 07 - Modelo de Negocio y Viabilidad Económica
layout: default
parent: Semanas
nav_order: 7
---

# Semana 07 - Modelo de Negocio y Viabilidad Económica

**Periodo:** Semana 7 del semestre
**Estado:** Bloques 2 (modelos de negocio) y 3 (costos) completos y verificados contra fuentes oficiales. Bloque 4 (matemáticas financieras) y Bloque 5 (taller en clase) quedan pendientes para una sesión posterior.

**Nota de privacidad:** esta página no incluye nombres completos de personas ni enlaces personales de nadie fuera de mí. Cuando menciono a mi profesor, lo hago sin su nombre, igual que en semanas anteriores.

## Lo que hice esta semana

El viernes en clase corrimos el ejercicio de modelos de negocio con benchmarking de competidores, usando Perplexity en vez de Claude. Después de clase me tocó la parte de viabilidad económica: adaptar el BOM del curso (pensado para hardware) a los servicios que realmente consume Vigilio, calcular el costo real de la IA con la fórmula del curso, calcular el costo de un ciclo de aprendizaje completo, y clasificar todos los costos con el criterio D/F/S — primero en su versión simple, y después en su versión extendida de crear vs. distribuir la oferta, donde encontré algo que no había quedado documentado en ningún lugar del proyecto hasta ahora.

## Modelos de negocio: lo que hace la competencia (y lo que Perplexity se equivocó)

Adapté el prompt genérico del curso —pensado para un producto de hardware + software— a un analista especializado en modelos de negocio de aplicaciones fintech de monitoreo y protección financiera. Como Vigilio es un producto bancario, agregué dos cosas que el prompt original no contemplaba: que la fricción relevante en fintech no es solo el pago, es el momento de dar acceso a datos bancarios; y una cuarta pregunta de cierre sobre qué modelo de ingresos alinea el incentivo de la empresa con que el producto realmente funcione, porque aquí que el producto no se use no es solo una suscripción perdida — es un fraude real sin detectar.

Perplexity analizó tres empresas: EverSafe, Greenlight (plan Family Shield) y Carefull, las tres de Estados Unidos — no encontró competidor directo mexicano o latinoamericano, consistente con lo que ya había encontrado en semanas anteriores. Su conclusión: predomina la suscripción B2C pagada por el cuidador, y propuso como oportunidades sin explotar a los bancos tradicionales mexicanos, las aseguradoras de gastos médicos, y CONDUSEF.

Antes de quedarme con esa conclusión, verifiqué las tres empresas directamente contra sus páginas oficiales de precios, no contra lo que citó Perplexity. La selección de empresas estaba bien, pero varias cifras y una afirmación central no:

| Dato | Perplexity dijo | Cifra real verificada |
|---|---|---|
| Carefull, mensual | $12.99/mes | **$29.99/mes** — más del doble |
| EverSafe Plus | $14.99/mes | **$16.99/mes** |
| EverSafe Gold | $24.99/mes | **$26.99/mes** |
| Greenlight, "plan con Family Shield" | $50/mes o $32/mes anual | **No existe ese plan** — Family Shield es el plan tope de 4 planes independientes ($5.99 a $19.98), no un paquete aparte |

El error más importante no fue de cifra: Perplexity afirmó que Carefull "no tiene evidencia de modelos B2B". Es falso — Carefull tiene un partnership confirmado con Nationwide, una aseguradora. Eso cambia la lectura estratégica de raíz: la oportunidad de "aseguradora como stakeholder sin explotar" que Perplexity propuso para Vigilio ya está probada por un competidor directo, no es un hueco de mercado — hay que presentarla como modelo validado, no como idea original.

También descarté una de las recomendaciones de Perplexity en vez de solo corregirla: que CONDUSEF pudiera subsidiar Vigilio como programa de inclusión financiera no se sostiene, porque CONDUSEF es un organismo de defensa del consumidor financiero, sin mandato ni presupuesto para subsidiar productos comerciales privados.

Lo que sí se sostuvo con la verificación: el patrón de que el cuidador paga y no el adulto mayor —coincide con mis propias entrevistas de Semana 3— y la recomendación de que un modelo con garantía o micro-seguro incluido alinea mejor el incentivo de la empresa con que el producto funcione de verdad, en vez de solo cobrar la suscripción y desentenderse.

## BOM adaptado: Vigilio no tiene piezas, tiene servicios

El BOM del curso asume componentes electrónicos, PCB y carcasa. Vigilio no tiene nada de eso, así que adapté la tabla reemplazando "componentes físicos" por los servicios que el sistema realmente consume, con la misma estructura de columnas que pide la rúbrica:

| Componente | Especificación | Precio unitario |
|---|---|---|
| Agregador de open banking | Belvo, tier Sandbox — solo lectura, datos simulados | $0 USD/mes |
| Agregador de open banking (riesgo de escalamiento) | Belvo, tier Launch (producción) | ~$1,000 USD/mes ≈ $17,580 MXN/mes |
| Builder no-code | Bubble, plan Starter | $59 USD/mes ≈ $1,037 MXN/mes |
| Clasificador de IA | Claude Haiku 5.5 vía API | $0.10 USD input / $0.50 USD output por millón de tokens |
| Notificaciones push | Firebase Cloud Messaging | $0 USD |
| Correo (canal secundario) | SMTP vía Bubble (p. ej. SendGrid) | $0 USD dentro del tier gratuito |
| Landing page | GitHub Pages | $0 USD |

Al verificar precios encontré que el stack original (`plan-de-accion-stack-vigia.md`) listaba "Claude Haiku o GPT-4o-mini" como opciones, y ambos datos ya estaban desactualizados: el modelo vigente y más barato de Anthropic hoy es Haiku 5.5, y GPT-4o-mini ya ni aparece en la página de precios de OpenAI. No cambia la decisión de arquitectura, pero corrige el número que hay que usar de aquí en adelante.

## Cuánto cuesta la IA, con la fórmula del curso

La fórmula del curso es: costo mensual por usuario = llamadas/día × (tokens input + tokens output) por llamada × precio por token × 30 días. Con 1 llamada/día por cuenta (redondeando al alza desde mi propio estimado de Semana 6 de 20-40 transacciones/mes), ~2,000 tokens de entrada y ~100 de salida por clasificación, y el precio verificado de Haiku 5.5 dos veces de forma independiente contra la página oficial:

- Costo por clasificación: **$0.00025 USD**
- Costo mensual por cuenta: **$0.0075 USD** (~$0.13 MXN)
- A escala del piloto de 20-30 cuentas (RD-04): **$0.15 a $0.23 USD al mes en total** — menos de $4 MXN

Elegí Haiku y no Sonnet u Opus porque la propia guía de Anthropic recomienda Haiku justo para "tareas de alto volumen y sensibles a la latencia, como clasificación, extracción y enrutamiento" — exactamente el caso de uso del clasificador de Vigilio. Dejé documentadas dos cosas que no intenté forzar a una precisión falsa: no quedó claro si el cambio de tokenizador de Claude 4.7 en adelante (~30% más tokens para el mismo texto) aplica igual a toda la familia 5.x, así que lo trato como margen de error adicional; y la Batch API da 50% de descuento sobre Haiku 5.5, pero no aplica a Vigilio porque RD-01 exige que la alerta llegue en minutos, no procesada de forma asíncrona por lotes.

## Cuánto cuesta un ciclo de aprendizaje

Un "ciclo de aprendizaje" en Vigilio es diseñar un ajuste (por ejemplo, afinar el prompt few-shot del clasificador) → construirlo en los workflows de Bubble → probarlo en Sandbox con transacciones simuladas → aprender del resultado. Con la misma fórmula del curso (costo fijo + variable + indirecto al 15% + contingencia al 30%):

| Concepto | Monto |
|---|---|
| Horas de trabajo (15h × $200 MXN/h) | $3,000.00 MXN |
| Bubble Starter, prorrateado | $518.50 MXN |
| Pruebas en Sandbox | $5.00 MXN |
| Costos indirectos (15%) | $528.53 MXN |
| Reserva de contingencia (30%) | $1,215.61 MXN |
| **Costo total por ciclo** | **$5,267.63 MXN** |

Con eso, el rango va de $15,803 MXN (3 ciclos) a $42,141 MXN (8 ciclos). Recomiendo usar el escenario promedio de 5 ciclos (~$26,340 MXN) como base de presupuesto, no el mínimo: en Vigilio, "el primer concepto funciona bien" significaría que el clasificador no genera falsos positivos desde el primer ajuste, algo que ni mi propio RD-02 (tasa de falsos positivos) da por sentado todavía.

El 94% del costo de un ciclo es mi propio tiempo, no gasto en efectivo — se valora como costo de oportunidad a una tarifa de referencia de desarrollador junior freelance en México, no un sueldo que de verdad se esté pagando. El gasto en efectivo real de iterar es casi cero: la innovación en Vigilio es cara en tiempo, no en dinero, a diferencia del sensor agrícola que usa el curso como ejemplo.

## Diferenciación de costos (D / F / S)

(D) Diferenciación: costos que dan vida a la propuesta de valor, no se recortan. (F) Flexibles: negociables o diferibles. (S) Establecidos: fuera de mi control.

| Costo | D/F/S |
|---|:---:|
| Clasificador de IA (Claude Haiku 5.5) | **D** |
| Lógica de escalamiento de alertas por severidad | **D** |
| Bubble (builder no-code) | **F** |
| Dominio propio | **F** |
| Belvo (agregador de open banking) | **S** |
| Firebase Cloud Messaging / SMTP | **S** |
| GitHub Pages | **S** |

Solo 2 de 7 costos caen en D, que según el propio criterio del curso es una señal sana. Si el presupuesto necesita recortarse, el primer candidato es Bubble —ya evaluado contra FlutterFlow como alternativa real—, nunca el clasificador ni la lógica de escalamiento, que son el producto en sí.

## Crear vs. distribuir: el hallazgo que no estaba documentado

El curso distingue entre los costos de construir la oferta y los costos de hacerla llegar al cliente. Al aplicar esa distinción a Vigilio, la mayoría de las filas de "crear" simplemente no aplican por no haber hardware (componentes, PCB, carcasa), pero en "distribuir" apareció algo que no había calculado en ninguna sección anterior del proyecto: la diferencia de costo entre publicar Vigilio como web/PWA o como app nativa en App Store/Google Play.

Con Stripe como pasarela de pago, el costo combinado de cobrar una suscripción es de aproximadamente 7% (3.6% + $3.00 MXN + 0.7% de Stripe Billing). Publicar nativo en las tiendas de apps agrega encima una comisión de plataforma de 15% a 30% sobre cada cobro — es decir, adoptar distribución nativa sin pensarlo multiplicaría por 3 a 5 veces el costo de cada cobro, sin ninguna mejora de producto a cambio a esta escala. Mi recomendación es mantener Vigilio como web/PWA, con la misma lógica que ya usé para Bubble sobre FlutterFlow y para Sandbox sobre Production de Belvo: menos piezas moviéndose. Lo documento como decisión tomada, no como pendiente — no cuesta nada decidirlo ahora, y si lo dejo sin decidir es fácil que termine publicando en las tiendas por default y pagando la comisión más alta sin darme cuenta.

## Lo que cambió

Esta semana el patrón de "verificar antes de confiar" se repitió, pero esta vez no fue sobre mi propio trabajo (como el boceto técnico de Semana 6), sino sobre la herramienta que usé en clase: Perplexity se equivocó en precios concretos y en una afirmación de fondo (Carefull sí tiene modelo B2B), y si no hubiera verificado contra las fuentes oficiales habría llevado a clase un argumento que un competidor real ya contradice. También me quedó más claro que en un producto bancario, el costo de que el producto "no se use" no es un problema de retención cualquiera — es un fraude real sin detectar, y eso cambia qué modelo de ingresos conviene preferir.

## Referencias (APA-7)

Anthropic. (2026). *Pricing*. Claude Developer Platform. https://platform.claude.com/docs/en/about-claude/pricing

Belvo. (2026). *Plans and pricing*. https://belvo.com/plans-and-pricing/

Bubble. (2026). *Pricing — Start free, scale as you grow*. https://bubble.io/pricing

Carefull. (2026). *Pricing*. https://getcarefull.com/pricing-nw-new

EverSafe. (2026). *Plans and pricing*. https://www.eversafe.com/pricing

Firebase. (2026). *Firebase pricing*. Google. https://firebase.google.com/pricing

Greenlight. (2026). *Compare plans*. https://greenlight.com/plans

OpenAI. (2026). *Pricing*. https://openai.com/api/pricing/

Stripe. (2026). *Precios de Stripe en México*. https://stripe.com/mx/pricing

Universe Page. (2026). *¿Cuánto cobrar por una página web en México en 2026? Precios reales y calculadora gratuita*. https://universepage.com.mx/blog/tarifa-desarrollador-web-freelance-mexico

Wealth Management. (2026). *Preventing elder fraud: Nationwide partners with Carefull*. https://www.wealthmanagement.com/financial-technology/preventing-elder-fraud-nationwide-partners-with-carefull

## Evidencia

Como evidencia documento el prompt real de modelos de negocio (con la adaptación que hice), el resultado completo de Perplexity, la verificación contra fuentes oficiales, y el desglose completo de las tablas de BOM, costo de la IA, ciclos de aprendizaje y diferenciación de costos.

[Ver el proceso completo (prompts y resultados) →](./evidencia-semana-07.html)
