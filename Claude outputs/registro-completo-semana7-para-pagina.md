---
layout: default
title: Semana 7 — Registro Completo de Prompts y Resultados
---

# Semana 7 — Registro Completo de Prompts y Resultados

Este documento reúne, en un solo lugar, todo el trabajo real de Semana 7: el ejercicio de modelos de negocio hecho en clase el viernes (benchmarking financiero, corrido en Perplexity y verificado contra fuentes oficiales) y el trabajo de viabilidad económica hecho después (BOM adaptado, costo de la IA, costo de desarrollo por ciclos de aprendizaje, y la diferenciación de costos D/F/S, incluyendo su versión extendida de crear vs. distribuir la oferta). Corresponde a los Bloques 2 y 3 de Semana 7, verificados contra la estructura real del curso (`raw.githubusercontent.com/Aristarco/Proyectos4/main/docs/semana7.md`). Quedan fuera de este documento el Bloque 4 (matemáticas financieras) y el Bloque 5 (taller en clase), por resolverse en una sesión posterior.

**Actualización 25-nov-2026:** las secciones 2, 4 y 6 (BOM, costo de desarrollo, D/F/S extendido) se corrigieron — el precio de Bubble bajó de $59 a $39 USD/mes (Bubble cambió su estructura de planes) y se agregó un costo real no documentado antes: Claude Pro ($20 USD/mes), el asistente que Axel usa para depurar errores durante el desarrollo, distinto del clasificador Claude Haiku (el motor de la app) y de la IA propia de Bubble (incluida gratis en el plan, no genera costo aparte). Detalle completo en `bom-costo-ia-semana7-vigilio.md`.

---

## 1. Modelos de negocio — Benchmarking financiero (clase del viernes)

**Adaptación del prompt original:** el prompt base del profesor asume un producto de "hardware + software" — igual que en Semana 6, se adaptó quitando esa referencia y especializando al analista en "modelos de negocio para aplicaciones fintech de monitoreo y protección financiera". Se agregaron dos elementos propios, por tratarse de un producto bancario: (1) en "momentos de fricción" se añadió el momento de dar acceso a datos bancarios, no solo el pago; (2) se añadió una cuarta pregunta de cierre sobre qué modelo de ingresos alinea el incentivo de la empresa con que el producto realmente funcione, dado que en este giro el costo de que el producto no se use o falle no es solo una suscripción perdida sino un fraude real sin detectar.

Placeholders llenados con datos reales del proyecto: descripción de Vigilio, propuesta de valor versión final de `canvas-mercado-semana4.md` (la que nombra a la banca tradicional como competidor, con el dato de los 12 meses de SoFi Tech Solutions, 2026), y segmento accionable de la sección 1 del mismo documento.

**Ejecución:** corrida por Axel en Perplexity, no en Claude.

### Resultado de Perplexity (verbatim, resumido en estructura)

3 empresas analizadas: EverSafe, Greenlight Family Shield, Carefull — las tres de EE.UU., sin competidor mexicano/LatAm directo encontrado (consistente con el propio hallazgo del proyecto de que no hay competidor directo en México — ver `descripcion-negocio-vigilio.md`).

Conclusión de Perplexity: predomina la suscripción B2C pagada por el cuidador (individual, familiar multi-generación, o patrocinio B2B2C selectivo); propone como oportunidades sin explotar a bancos tradicionales mexicanos, aseguradoras de gastos médicos, y CONDUSEF; y recomienda que Vigilio incluya una garantía/micro-seguro en vez de solo cobrar suscripción, citando a EverSafe y Greenlight como los modelos con mejor incentivo (ambos incluyen cobertura de seguro de fraude/identidad) frente a Carefull (solo suscripción, "sin evidencia de modelos B2B").

### Verificación de Claude contra fuentes oficiales

Se verificaron las 3 empresas directamente contra sus páginas de precios oficiales, no contra la cita de Perplexity. Resultado: la selección de empresas es correcta y relevante, pero varias cifras y una afirmación central están equivocadas.

**Errores de precio:**

| Dato | Perplexity dijo | Cifra real (fuente oficial) |
|---|---|---|
| Carefull, mensual | $12.99/mes | **$29.99/mes** — más del doble |
| Carefull, anual | $119.99/año (~$10/mes) | ~17% de descuento (~$24.89/mes), sin cifra fija publicada |
| EverSafe Plus | $14.99/mes | **$16.99/mes** |
| EverSafe Gold | $24.99/mes | **$26.99/mes** |
| EverSafe, descuento senior | "10-15%" | 10% (no se encontró el 15%) |
| Greenlight, "plan general con Family Shield" | $50/mes o $32/mes anual | **No existe ese plan** — Greenlight tiene 4 planes independientes (Core $5.99, Max $10.98, Infinity $15.98, Family Shield $19.98); Family Shield es el plan tope, no un paquete que lo incluya |

**Error de fondo (no solo de cifra):** Perplexity afirmó que Carefull "no tiene evidencia de modelos B2B o patrocinio institucional". Es falso — Carefull tiene un partnership confirmado con Nationwide, una aseguradora (Wealth Management, 2026), además de portales de partner adicionales (`partner.getcarefull.com/tcb`, `hcg.getcarefull.com`) que indican más de un canal B2B2C activo. Esto cambia la lectura estratégica: la oportunidad de "aseguradora como stakeholder sin explotar" que Perplexity propone para Vigilio **ya está probada por un competidor directo**, no es un hueco de mercado — hay que presentarla como modelo validado, no como idea original.

**Afirmación cuestionada, no solo corregida:** la sugerencia de que CONDUSEF podría subsidiar Vigilio como programa de inclusión financiera no se sostiene — CONDUSEF es un organismo de defensa y resolución de controversias del consumidor financiero en México, sin mandato ni presupuesto para subsidiar productos comerciales privados. Se recomienda retirar esta idea de cualquier entrega o presentarla explícitamente como especulación sin base, no como oportunidad real.

**Lo que sí se sostiene:** la selección de empresas (EverSafe ya estaba citado en `canvas-mercado-semana4.md`), el patrón de que el cuidador paga y no el adulto mayor (coincide con la evidencia propia de entrevistas — `resultado-validacion-semana3.md`), y la recomendación de que un modelo con garantía/seguro incluido alinea mejor el incentivo de la empresa con que el producto funcione — reforzada, no debilitada, por la corrección sobre Carefull: si ya existe un precedente real (Carefull + Nationwide) de este modelo funcionando en el mercado, es más fácil defenderlo frente al profesor que como idea sin precedente.

---

## 2. BOM adaptado — Vigilio (software, sin componente físico)

El BOM del curso asume hardware (componentes electrónicos, PCB, carcasa). Vigilio se adapta reemplazando "componentes físicos" por los servicios que el sistema consume, manteniendo la misma estructura de columnas exigida por la rúbrica.

| Componente | Especificación | Precio unitario | Proveedor / tiempo de entrega |
|---|---|---|---|
| Agregador de open banking | Belvo, tier **Sandbox** — solo lectura, datos simulados ilimitados | $0 USD/mes | Belvo — alta inmediata, sin aprobación |
| Agregador de open banking (riesgo de escalamiento, no es costo actual del semestre) | Belvo, tier **Launch** (producción) | ~$1,000 USD/mes ≈ $17,580 MXN/mes | Belvo — requiere ventas + certificación técnica; semanas, no inmediato |
| Builder no-code (UI + backend + base de datos) | Bubble, plan **Starter** (app publicada "en vivo"; incluye 1,000 AI credits/mes para el asistente propio de Bubble, sin costo adicional) | $39 USD/mes ≈ $685.62 MXN/mes (**corregido 25-nov-2026**, Bubble reestructuró sus planes; antes $59 USD/mes) | Bubble Inc. — alta inmediata en línea |
| Clasificador de IA (motor de la app) | **Claude Haiku 5.5** vía API, few-shot, ~2,000 tokens input + ~100 tokens output por clasificación | $0.10 USD input / $0.50 USD output por millón de tokens (prompts ≤100,000 tokens) | Anthropic — inmediato (API) |
| **Asistente de desarrollo (depuración/errores) — nuevo, 25-nov** | **Claude Pro**, 1 asiento, usado por Axel para resolver errores durante el desarrollo — herramienta de productividad, no el motor de la app | $20 USD/mes ≈ $351.60 MXN/mes | Anthropic — alta inmediata |
| Notificaciones push | Firebase Cloud Messaging (FCM), vía plugin de Bubble o nativo de FlutterFlow | $0 USD (ilimitado en plan Spark/Blaze) | Google Firebase — inmediato |
| Correo electrónico (canal secundario) | SMTP integrado a Bubble (p. ej. SendGrid), tier gratuito ~100 correos/día | $0 USD dentro del límite — a verificar en la cuenta real | SendGrid u otro SMTP — inmediato |
| Dominio propio (opcional) | .com o .mx | ~$150-300 MXN/año, o $0 con subdominio de GitHub Pages | Cualquier registrador — 24h |
| Landing page | GitHub Pages | $0 USD | GitHub — inmediato |

**Por qué Claude Pro y no Team o Enterprise:** Claude Enterprise exige mínimo 20 asientos ($400 USD/mes, ~$7,032 MXN/mes — más del doble de lo que factura el piloto completo); Claude Team exige mínimo 2 asientos. Vigilio es, por RR-02, un equipo de una sola persona — pagar capacidad para una segunda persona que no existe todavía no tiene sentido. Se escalaría a Team el día que se sume una segunda persona, no antes.

**Corrección sobre el stack original:** `plan-de-accion-stack-vigia.md` listaba "Claude Haiku o GPT-4o-mini" como opciones del clasificador. Ambos datos estaban desactualizados al verificar precios: el modelo Haiku vigente y más barato de Anthropic hoy es Haiku 5.5, y GPT-4o-mini ya no aparece en la página de precios oficial de OpenAI — el modelo chico vigente es GPT-5.6 Luna ($0.20/$1.20 USD por millón de tokens, el doble de Haiku 5.5 y aun así trivial a esta escala). No cambia la decisión de arquitectura, cambia el número correcto a usar.

---

## 3. Costo de la IA — fórmula del curso aplicada

Costo mensual por usuario = llamadas/día × (tokens input + tokens output) por llamada × precio por token del modelo × 30 días

**Insumos, con origen documentado, no cifras genéricas:**

- Llamadas/día: 1 por cuenta, redondeado al alza desde el estimado de Semana 6: 20-40 transacciones/mes por cuenta ≈ 0.7-1.3 llamadas/día. Supuesto a validar con datos reales de Sandbox.
- Tokens por llamada: ~2,000 input + ~100 output. El input incluye la transacción nueva, el historial reciente de la cuenta como línea base, y los ejemplos few-shot. También supuesto a validar.
- Precio del modelo: Claude Haiku 5.5 — $0.10 USD input / $0.50 USD output por millón de tokens, verificado dos veces de forma independiente: por Claude vía WebFetch a `platform.claude.com/docs/en/about-claude/pricing`, y por Axel directamente en capturas de pantalla de la misma página oficial. Ambas verificaciones coinciden exactamente.

**Cálculo:**

- Costo por llamada: (2,000 × $0.10/1,000,000) + (100 × $0.50/1,000,000) = $0.0002 + $0.00005 = **$0.00025 USD por clasificación**
- Costo mensual por usuario: 1 llamada/día × $0.00025 × 30 días = **$0.0075 USD/mes por cuenta** ≈ $0.13 MXN/mes
- A escala del piloto (20-30 cuentas, RD-04): **$0.15 a $0.23 USD/mes en total** (~$2.6 a $4 MXN/mes).

**Por qué Haiku y no Sonnet u Opus:** la propia guía de optimización de costos de Anthropic recomienda explícitamente "Haiku para tareas simples, Sonnet para la mayoría de las cargas de trabajo de producción y Opus para el razonamiento más complejo" (Anthropic, 2026), y describe a Haiku 5.5 como diseñado para "tareas de alto volumen y sensibles a la latencia, como clasificación, extracción y enrutamiento" — que es exactamente el caso de uso de Vigilio.

**Dos precisiones documentadas, no omitidas:**

- La nota de la página oficial sobre el tokenizador de "Claude 4.7 y posteriores" (≈30% más tokens que el tokenizador previo para el mismo texto) no deja del todo claro si aplica igual a toda la familia 5.x — se trata como margen de error adicional sobre el estimado de tokens, no como una cifra a corregir con precisión falsa.
- La Batch API da 50% de descuento sobre Haiku 5.5, pero **no aplica a Vigilio**: RD-01 exige que la alerta llegue en minutos, no que se procese de forma asíncrona por lotes.

---

## 4. Costo de desarrollo — ciclos de aprendizaje (adaptado)

Estructura del curso, sin cambios en la fórmula: Costo Total de Desarrollo = Costo Fijo Directo + Costo Variable Directo + Costo Indirecto (10-20% de los directos) + Reserva para Contingencias (25-40% en proyectos de innovación). Un "ciclo de aprendizaje" en Vigilio es diseñar un ajuste (p. ej. afinar el prompt few-shot del clasificador o el umbral de alerta) → construirlo en los workflows de Bubble → probarlo en Sandbox con transacciones simuladas → aprender del resultado.

```
COSTO DE UN CICLO DE APRENDIZAJE — Vigilio (actualizado 25-nov-2026)

Costos fijos directos (por ciclo):
  Horas de trabajo: 15h × $200 MXN/h           = $3,000.00 MXN
  Bubble Starter, prorrateado ($39 USD/mes)     = $342.81 MXN
  Claude Pro, prorrateado ($20 USD/mes) — NUEVO = $175.80 MXN
  Subtotal fijos directos                       = $3,518.61 MXN

Costos variables directos (pruebas de un ciclo):
  Clasificaciones de prueba en Sandbox
  (~50-100 transacciones simuladas)             = $5.00 MXN
  Subtotal variables directos                    = $5.00 MXN

Costos indirectos (15% de los directos):
  ($3,518.61 + $5.00) × 0.15                     = $528.54 MXN

Costo base por ciclo = $3,518.61 + $5.00 + $528.54 = $4,052.15 MXN

Reserva para contingencias (30%):
  $4,052.15 × 0.30                               = $1,215.65 MXN

COSTO TOTAL POR CICLO                             = $5,267.80 MXN
```

**Rango resultante:**

```
Escenario mínimo (3 ciclos):   $5,267.80 × 3 = $15,803.39 MXN
Escenario promedio (5 ciclos): $5,267.80 × 5 = $26,338.98 MXN
Escenario máximo (8 ciclos):   $5,267.80 × 8 = $42,142.38 MXN
```

**Recomendación de presupuesto:** usar el escenario promedio como base — **~$26,339 MXN** para 5 ciclos de aprendizaje. No se presenta el escenario mínimo: en Vigilio, "el primer concepto funciona bien" significaría que el clasificador no genera falsos positivos desde el primer ajuste del prompt few-shot, algo que ni el propio RD-02 (tasa de falsos positivos) da por sentado todavía.

**Notas honestas sobre los supuestos usados:**

- El **74%** del costo base por ciclo ($3,000.00 de $4,052.15 antes de la reserva) es solo el valor de las horas de trabajo de Axel, no gasto en efectivo — se valora a una tarifa de referencia de desarrollador junior freelance en México ($200-350 MXN/hora; se usó el piso, $200 MXN/h — Universe Page, 2026).
- El gasto en efectivo real de iterar ya no es cercano a cero: Bubble y Claude Pro son suscripciones reales que se pagan mes a mes — la innovación en Vigilio sigue siendo cara sobre todo en tiempo, no en dinero, a diferencia del sensor agrícola del curso.

---

## 5. Diferenciación de costos (D / F / S)

(D) Diferenciación — costos que dan vida a la propuesta de valor, recortarlos destruye el diferencial; (F) Flexibles — importantes pero negociables o diferibles; (S) Establecidos — fuera del control del equipo. Guía de uso: los costos S no se recortan, los F son los primeros candidatos a reducir, los D son los últimos en tocar.

| Costo | D/F/S | Por qué |
|---|:---:|---|
| Clasificador de IA (Claude Haiku 5.5, few-shot de fraude) | **D** | Es el mecanismo central de la propuesta de valor. Sin él, Vigilio es solo un visor de movimientos. |
| Lógica de escalamiento de alertas por severidad | **D** | Diferencia a Vigilio de una alerta genérica de banco. |
| Bubble (builder no-code) | **F** | Herramienta de construcción, no el diferenciador en sí — sustituible por FlutterFlow si el presupuesto aprieta. |
| **Claude Pro (asistente de desarrollo) — nuevo** | **F** | Herramienta de productividad del desarrollador, no el motor de la app — negociable/cancelable sin afectar el producto. |
| Dominio propio | **F** | Opcional y diferible. |
| Belvo (agregador de open banking) | **S** | Infraestructura regulada de un tercero (IFPE ante la CNBV), sin control sobre precio ni condiciones. |
| Firebase Cloud Messaging / SMTP | **S** | Infraestructura de notificación estándar, gratuita, sin margen de negociación. |
| GitHub Pages | **S** | Hosting gratuito y estándar, sin diferenciación posible. |

**Lectura del resultado:** solo 2 de 8 costos caen en D — señal sana según el propio criterio del curso. Si el presupuesto necesita recortarse, los primeros candidatos son Bubble o Claude Pro (F), nunca el clasificador ni la lógica de escalamiento.

---

## 6. Costos de crear vs. distribuir la oferta (D/F/S extendido)

Distinción adicional del curso entre costos de **construir** Vigilio y costos de **hacerlo llegar al cliente**.

### Crear la oferta

| Costo | D/F/S | Costo estimado | Unidad de medida | Unidades que produce | Costo unitario (calculado) | Por qué |
|---|:---:|---|---|---|---|---|
| Componentes electrónicos / PCB / carcasa | N/A | — | — | — | — | Vigilio no tiene hardware — no aplica, no se fuerza un equivalente. |
| Clasificador de IA (Claude Haiku 5.5) | **D** | $0.00025 USD/clasificación | 1 clasificación | 1 transacción evaluada | $0.00025 USD ≈ $0.0044 MXN | Da vida al diferenciador. |
| Belvo — Sandbox | **S** | $0 USD/mes | 1 mes | Hasta 30-40 llamadas de prueba/cuenta | $0 | Infraestructura regulada de terceros, sin costo en esta etapa. |
| Belvo — Production (riesgo, no vigente) | **S** | ~$17,580 MXN/mes | 1 mes | 304-608 hogares (SOM) | ~$29-58 MXN/hogar/mes | Tarifa fija de un tercero regulado por la CNBV, no se negocia. |
| Bubble (builder no-code) | **F** | $685.62 MXN/mes (**corregido 25-nov**, antes $1,037) | 1 mes | 20-30 cuentas (piloto) | ≈$23-34 MXN/cuenta/mes | Negociable; primer candidato a recorte. |
| **Claude Pro (asistente de desarrollo) — nuevo** | **F** | $351.60 MXN/mes | 1 mes | Uso ilimitado de Axel para depurar errores | ≈$12-18 MXN/cuenta/mes (a 20-30 cuentas) | Herramienta de productividad, negociable/cancelable. |
| Personal (horas por ciclo de aprendizaje) | **F** | $5,267.80 MXN/ciclo | 1 ciclo | 1 ajuste completo construido y probado | $5,267.80 MXN/ciclo | El ritmo de ciclos se puede alargar o acortar; no es el diferenciador en sí. |
| Licencias (FCM, SMTP) | **S** | $0 USD/mes | 1 mes | Notificaciones ilimitadas dentro de tier gratuito | $0 | Infraestructura estándar de terceros, sin costo actual. |

### Distribuir la oferta

| Costo | D/F/S | Costo estimado | Unidad de medida | Unidades que produce | Costo unitario (calculado) | Por qué |
|---|:---:|---|---|---|---|---|
| Empaque/logística física | N/A | — | — | — | — | No aplica — no hay producto físico. |
| Canal de venta y cobro (pasarela de pago) | **S** | 3.6% + $3.00 MXN por transacción, + 0.7% sobre volumen con Stripe Billing (Stripe México, 2026) | 1 cobro mensual | 1 cliente cobrado | ≈$7.25 MXN/cliente/mes sobre $99 MXN/mes | Tarifa fija de un tercero, no negociable a esta escala. |
| **Hallazgo nuevo — canal de distribución de la app** | **F** | Web/PWA: solo el costo de Stripe (~7% combinado). Nativo en App Store/Google Play: +15-30% de comisión sobre cada cobro | 1 mes | — | — | No documentado antes en el proyecto. Se recomienda mantener **web/PWA**, consistente con la filosofía de minimizar piezas moviéndose (misma lógica que Bubble-sobre-FlutterFlow y Belvo-Sandbox-sobre-Production). Es F, no S: el propio equipo controla esta decisión. |
| Soporte técnico al cliente | **F** | $0 presupuestado hoy (lo atiende Axel directamente) | 1 mes | Piloto (20-30 cuentas) | $0 por ahora | Negociable/diferible a esta escala. |
| Marketing digital | **F** | $0 presupuestado hoy | 1 mes | — | — | Diferible — el piloto depende de red de contactos directa, no de campañas pagadas. |
| Actualizaciones OTA | N/A | — | — | — | — | Concepto de firmware de hardware; en Bubble las actualizaciones son automáticas al publicar, sin costo distinto que documentar. |

**Lectura del resultado:** la fila nueva —web/PWA vs. tienda de apps nativa— es la pieza de información que más cambia la economía del proyecto si se ignora: adoptar distribución nativa multiplicaría por 3-5 veces el costo de cada cobro (de ~7% a 22-37% combinado), sin ninguna mejora de producto a cambio a esta escala. Mantenerse en web/PWA se documenta como decisión tomada, no como pendiente.

---

## Referencias (APA-7)

Anthropic. (2026). *Pricing*. Claude Developer Platform. https://platform.claude.com/docs/en/about-claude/pricing

Anthropic. (2026). *Claude pricing*. https://claude.com/pricing

Belvo. (2026). *Plans and pricing*. https://belvo.com/plans-and-pricing/

Bubble. (2026). *Pricing — Start free, scale as you grow*. https://bubble.io/pricing

Bubble. (2026). *AI credits*. Bubble Manual. https://manual.bubble.io/help-guides/ai/ai-credits

Carefull. (2026). *Pricing*. https://getcarefull.com/pricing-nw-new

EverSafe. (2026). *Plans and pricing*. https://www.eversafe.com/pricing

Firebase. (2026). *Firebase pricing*. Google. https://firebase.google.com/pricing

Greenlight. (2026). *Compare plans*. https://greenlight.com/plans

OpenAI. (2026). *Pricing*. https://openai.com/api/pricing/

Stripe. (2026). *Precios de Stripe en México*. https://stripe.com/mx/pricing

Universe Page. (2026). *¿Cuánto cobrar por una página web en México en 2026? Precios reales y calculadora gratuita*. https://universepage.com.mx/blog/tarifa-desarrollador-web-freelance-mexico

Wealth Management. (2026). *Preventing elder fraud: Nationwide partners with Carefull*. https://www.wealthmanagement.com/financial-technology/preventing-elder-fraud-nationwide-partners-with-carefull
