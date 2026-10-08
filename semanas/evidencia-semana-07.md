---
title: Evidencia — Modelo de Negocio y Viabilidad Económica (Semana 07)
layout: default
parent: Semanas
nav_exclude: true
---

# Evidencia — Modelo de Negocio y Viabilidad Económica (Semana 07)

**Nota de privacidad:** este registro no incluye nombres completos ni enlaces personales de nadie fuera de mí. Mi profesor se menciona sin nombrarlo, igual que en semanas anteriores.

**Nota de fidelidad:** el prompt adaptado del Paso 1 es texto real, verbatim. El resultado de Perplexity se documenta como síntesis estructurada de su respuesta real, no como copia literal carácter por carácter — así quedó registrado desde el origen. El resto del documento (BOM, cálculos de costo, tablas D/F/S) es trabajo propio, 🟢.

## Paso 1 — Modelos de negocio: prompt adaptado y benchmarking 🟢

**Prompt base del curso** (genérico, para producto de hardware + software, sin adaptar):

> "Actúa como analista de inteligencia competitiva especializado en modelos de negocio para productos de hardware + software en mercados latinoamericanos y globales. [...] Investiga 3 empresas o productos con oferta similar a la nuestra [...] Para cada empresa entrega: EMPRESA, Qué ofrece, Modelo de ingresos, Rango de precio, Momentos de fricción, Otros stakeholders. Al terminar las 3 empresas, responde: ¿Qué modelo de ingresos predomina en este espacio...? ¿Hay algún stakeholder que nadie está cobrando actualmente...?"

**Prompt adaptado a Vigilio (verbatim, el que realmente corrí):**

> "Actúa como analista de inteligencia competitiva especializado en modelos de negocio para aplicaciones fintech de monitoreo y protección financiera (no de hardware) en mercados latinoamericanos y globales. Tu metodología consiste en identificar cómo empresas con ofertas similares están capturando valor — no solo su precio de lista, sino el modelo completo: quién paga, cuándo, bajo qué condición, y qué fricción existe tanto en el pago como en la confianza necesaria para dar acceso a datos bancarios.
>
> Somos emprendedores en México con el siguiente producto: Vigilio: una app (sin hardware propio) que se conecta en modo solo lectura a las cuentas bancarias del padre/madre vía open banking (Belvo), clasifica las transacciones con un modelo de lenguaje y alerta al hijo/a cuidador cuando detecta un cargo pequeño sospechoso (card testing, suscripción no reconocida) que el banco no marca como fraude.
>
> Propuesta de valor: "A diferencia de la banca tradicional en México, que tarda hasta 12 meses en lanzar una función nueva, Vigilio ya te avisa hoy de los cargos chicos que a ellos les toma años empezar a detectar — sin quitarle a tu papá o mamá el control de su cuenta."
>
> Segmento objetivo: hijos/hijas de 24 años en adelante con ingreso propio (el que paga), cuyo padre o madre de 60 a 70 años, en zona urbana, usa banca tradicional y no revisa su cuenta de forma proactiva.
>
> Investiga 3 empresas o productos con oferta similar a la nuestra — pueden ser competidores directos (fintech de monitoreo/alertas), indirectos (seguridad bancaria, protección contra fraude), o productos que resuelven el mismo tipo de problema en otro mercado (por ejemplo, EverSafe en EE.UU.).
>
> Para cada empresa entrega: EMPRESA, Qué ofrece, Modelo de ingresos, Rango de precio, Momentos de fricción [incluyendo el momento de dar acceso a cuentas bancarias, no solo el pago], Otros stakeholders [bancos, aseguradoras, agregadores de open banking, instituciones de protección al consumidor].
>
> Al terminar las 3 empresas, responde: ¿Qué modelo de ingresos predomina en este espacio y por qué crees que es el elegido por la mayoría? ¿Hay algún stakeholder que nadie está cobrando actualmente y que podría ser una oportunidad de ingresos para un nuevo entrante? Y, dado que este es un producto financiero donde el costo de que NO se use o de que falle en su propósito no es solo una suscripción perdida sino un fraude real sin detectar: ¿qué modelos de ingresos de los 3 analizados generan el incentivo correcto para que la empresa se preocupe por que el producto realmente se use y funcione, en vez de solo cobrar la suscripción y desentenderse?"

**Qué cambié respecto al prompt genérico, y por qué:**

- Quité "hardware + software" de la especialidad del analista — Vigilio no tiene componente físico, mismo ajuste honesto que ya se viene haciendo desde Semana 6.
- Agregué el punto sobre lo sensible del giro bancario en dos lugares: en "momentos de fricción", especificando que la fricción relevante en fintech no es solo el checkout, es el momento de dar acceso a datos bancarios — el punto real donde se cae la conversión según mi propia síntesis de entrevistas de Semana 3 (`canvas-mercado-semana4.md`, cita de María sobre sentirse "fiscalizada"). Y agregué una cuarta pregunta de cierre, que el prompt original no tenía, sobre el riesgo específico de que el producto no se use o falle: en la mayoría de SaaS eso es solo un problema de retención; aquí significa que un fraude real pasó sin que nadie lo viera, lo cual cambia qué modelo de ingresos conviene preferir.

**Ejecución:** corrida por mí en Perplexity, no en Claude.

### Resultado de Perplexity

3 empresas analizadas: EverSafe, Greenlight (plan Family Shield), Carefull — las tres de EE.UU., sin competidor mexicano/LatAm directo encontrado (consistente con el hallazgo ya documentado en `descripcion-negocio-vigilio.md` de que no hay competidor directo en México).

Conclusión de Perplexity: predomina la suscripción B2C pagada por el cuidador (individual, familiar multi-generación, o patrocinio B2B2C selectivo); propuso como oportunidades sin explotar a los bancos tradicionales mexicanos, las aseguradoras de gastos médicos, y CONDUSEF; y recomendó que Vigilio incluya una garantía o micro-seguro en vez de solo cobrar suscripción, citando a EverSafe y Greenlight como los modelos con mejor incentivo (ambos incluyen cobertura de seguro de fraude/identidad) frente a Carefull, que describió como "solo suscripción, sin evidencia de modelos B2B".

### Verificación contra fuentes oficiales

Verifiqué las 3 empresas directamente contra sus páginas de precios oficiales, no contra la cita de Perplexity.

**Errores de precio encontrados:**

| Dato | Perplexity dijo | Cifra real (fuente oficial) |
|---|---|---|
| Carefull, mensual | $12.99/mes | **$29.99/mes** — más del doble |
| Carefull, anual | $119.99/año (~$10/mes) | ~17% de descuento (~$24.89/mes), sin cifra fija publicada |
| EverSafe Plus | $14.99/mes | **$16.99/mes** |
| EverSafe Gold | $24.99/mes | **$26.99/mes** |
| EverSafe, descuento senior | "10-15%" | 10% (no se encontró el 15%) |
| Greenlight, "plan general con Family Shield" | $50/mes o $32/mes anual | **No existe ese plan** — Greenlight tiene 4 planes independientes (Core $5.99, Max $10.98, Infinity $15.98, Family Shield $19.98); Family Shield es el plan tope, no un paquete que lo incluya |

**Error de fondo, no solo de cifra:** Perplexity afirmó que Carefull "no tiene evidencia de modelos B2B o patrocinio institucional". Es falso — Carefull tiene un partnership confirmado con Nationwide, una aseguradora (Wealth Management, 2026), además de portales de partner adicionales (`partner.getcarefull.com/tcb`, `hcg.getcarefull.com`) que indican más de un canal B2B2C activo. Esto cambia la lectura estratégica: la oportunidad de "aseguradora como stakeholder sin explotar" que Perplexity propuso para Vigilio ya está probada por un competidor directo, no es un hueco de mercado — hay que presentarla como modelo validado, no como idea original.

**Afirmación cuestionada, no solo corregida:** la sugerencia de que CONDUSEF podría subsidiar Vigilio como programa de inclusión financiera no se sostiene — CONDUSEF es un organismo de defensa y resolución de controversias del consumidor financiero en México, sin mandato ni presupuesto para subsidiar productos comerciales privados. La retiro de cualquier entrega, o la presento explícitamente como especulación sin base, no como oportunidad real.

**Lo que sí se sostiene:** la selección de empresas (EverSafe ya estaba citado en `canvas-mercado-semana4.md`), el patrón de que el cuidador paga y no el adulto mayor (coincide con la evidencia propia de entrevistas de `resultado-validacion-semana3.md`), y la recomendación de que un modelo con garantía/seguro incluido alinea mejor el incentivo de la empresa con que el producto funcione — reforzada, no debilitada, por la corrección sobre Carefull: si ya existe un precedente real (Carefull + Nationwide) de este modelo funcionando en el mercado, es más fácil defenderlo frente a mi profesor que como idea sin precedente.

## Paso 2 — BOM adaptado (software, sin componente físico) 🟢

El BOM del curso asume hardware (componentes electrónicos, PCB, carcasa). Lo adapté reemplazando "componentes físicos" por los servicios que el sistema consume, manteniendo la misma estructura de columnas exigida por la rúbrica.

| Componente | Especificación | Precio unitario | Proveedor / tiempo de entrega |
|---|---|---|---|
| Agregador de open banking | Belvo, tier Sandbox — solo lectura, datos simulados ilimitados | $0 USD/mes | Belvo — alta inmediata, sin aprobación |
| Agregador de open banking (riesgo de escalamiento, no es costo actual) | Belvo, tier Launch (producción) | ~$1,000 USD/mes ≈ $17,580 MXN/mes | Belvo — requiere ventas + certificación técnica; semanas, no inmediato |
| Builder no-code | Bubble, plan Starter (app publicada "en vivo", no solo editor) | $59 USD/mes ≈ $1,037 MXN/mes | Bubble Inc. — alta inmediata en línea |
| Clasificador de IA | Claude Haiku 5.5 vía API, few-shot, ~2,000 tokens input + ~100 tokens output por clasificación | $0.10 USD input / $0.50 USD output por millón de tokens | Anthropic — inmediato (API) |
| Notificaciones push | Firebase Cloud Messaging (FCM), vía plugin de Bubble | $0 USD (ilimitado en plan Spark/Blaze) | Google Firebase — inmediato |
| Correo electrónico (canal secundario) | SMTP integrado a Bubble (p. ej. SendGrid), tier gratuito ~100 correos/día | $0 USD dentro del límite | SendGrid u otro SMTP — inmediato |
| Dominio propio (opcional) | .com o .mx | ~$150-300 MXN/año, o $0 con subdominio de GitHub Pages | Cualquier registrador — 24h |
| Landing page | GitHub Pages | $0 USD | GitHub — inmediato |

**Corrección sobre el stack original:** `plan-de-accion-stack-vigia.md` listaba "Claude Haiku o GPT-4o-mini" como opciones del clasificador. Ambos datos estaban desactualizados al verificar precios: el modelo Haiku vigente y más barato de Anthropic hoy es Haiku 5.5 (no el Haiku 3.5/4.5 que existía cuando se escribió el plan original), y GPT-4o-mini ya no aparece en la página de precios oficial de OpenAI — el modelo chico vigente es GPT-5.6 Luna ($0.20/$1.20 USD por millón de tokens, el doble de Haiku 5.5 y aun así trivial a esta escala). No cambia la decisión de arquitectura, cambia el número correcto a usar.

## Paso 3 — Costo de la IA, fórmula del curso aplicada 🟢

Costo mensual por usuario = llamadas/día × (tokens input + tokens output) por llamada × precio por token del modelo × 30 días.

**Insumos, con origen documentado:**

- Llamadas/día: 1 por cuenta, redondeado al alza desde el estimado de Semana 6: 20-40 transacciones/mes por cuenta ≈ 0.7-1.3 llamadas/día. Supuesto a validar con datos reales de Sandbox.
- Tokens por llamada: ~2,000 input + ~100 output. El input incluye la transacción nueva, el historial reciente de la cuenta como línea base, y los ejemplos few-shot (`arquitectura-sistema-semana5-vigilio.md`).
- Precio del modelo: Claude Haiku 5.5 — $0.10 USD input / $0.50 USD output por millón de tokens, verificado dos veces de forma independiente: vía WebFetch a `platform.claude.com/docs/en/about-claude/pricing`, y por mí directamente en capturas de pantalla de la misma página oficial. Ambas verificaciones coinciden exactamente.

**Cálculo:**

- Costo por llamada: (2,000 × $0.10/1,000,000) + (100 × $0.50/1,000,000) = $0.0002 + $0.00005 = **$0.00025 USD por clasificación**
- Costo mensual por usuario: 1 llamada/día × $0.00025 × 30 días = **$0.0075 USD/mes por cuenta** ≈ $0.13 MXN/mes
- A escala del piloto (20-30 cuentas, RD-04): **$0.15 a $0.23 USD/mes en total** (~$2.6 a $4 MXN/mes)

**Por qué Haiku y no Sonnet u Opus:** la propia guía de optimización de costos de Anthropic recomienda explícitamente "Haiku para tareas simples, Sonnet para la mayoría de las cargas de trabajo de producción y Opus para el razonamiento más complejo" (Anthropic, 2026), y describe a Haiku 5.5 como diseñado para "tareas de alto volumen y sensibles a la latencia, como clasificación, extracción y enrutamiento" — exactamente el caso de uso de Vigilio.

**Dos precisiones que quedan documentadas, no omitidas:**

- La nota de la página oficial sobre el tokenizador de "Claude 4.7 y posteriores" (≈30% más tokens que el tokenizador previo para el mismo texto) no deja del todo claro si aplica igual a toda la familia 5.x — se trata como margen de error adicional sobre el estimado de tokens, no como una cifra a corregir con precisión falsa.
- La Batch API da 50% de descuento sobre Haiku 5.5, pero no aplica a Vigilio: RD-01 exige que la alerta llegue en minutos, no que se procese de forma asíncrona por lotes.

## Paso 4 — Costo de desarrollo: ciclos de aprendizaje 🟢

Estructura del curso, sin cambios en la fórmula: Costo Total de Desarrollo = Costo Fijo Directo + Costo Variable Directo + Costo Indirecto (10-20% de los directos) + Reserva para Contingencias (25-40% en proyectos de innovación). Un ciclo de aprendizaje en Vigilio es diseñar un ajuste → construirlo en los workflows de Bubble → probarlo en Sandbox con transacciones simuladas → aprender del resultado.

```
COSTO DE UN CICLO DE APRENDIZAJE — Vigilio

Costos fijos directos (por ciclo):
  Horas de trabajo: 15h × $200 MXN/h           = $3,000.00 MXN
  Bubble Starter, prorrateado (~2 ciclos/mes)   = $518.50 MXN
  Subtotal fijos directos                       = $3,518.50 MXN

Costos variables directos (pruebas de un ciclo):
  Clasificaciones de prueba en Sandbox
  (~50-100 transacciones simuladas)             = $5.00 MXN
  Subtotal variables directos                    = $5.00 MXN

Costos indirectos (15% de los directos):
  ($3,518.50 + $5.00) × 0.15                     = $528.53 MXN

Costo base por ciclo = $3,518.50 + $5.00 + $528.53 = $4,052.03 MXN

Reserva para contingencias (30%):
  $4,052.03 × 0.30                               = $1,215.61 MXN

COSTO TOTAL POR CICLO                             = $5,267.63 MXN
```

**Rango resultante:**

```
Escenario mínimo (3 ciclos):   $5,267.63 × 3 = $15,802.89 MXN
Escenario promedio (5 ciclos): $5,267.63 × 5 = $26,338.15 MXN
Escenario máximo (8 ciclos):   $5,267.63 × 8 = $42,141.04 MXN
```

**Recomendación de presupuesto:** usar el escenario promedio como base — ~$26,340 MXN para 5 ciclos de aprendizaje. No se presenta el escenario mínimo: en Vigilio, "el primer concepto funciona bien" significaría que el clasificador no genera falsos positivos desde el primer ajuste del prompt few-shot, algo que ni el propio RD-02 (tasa de falsos positivos) da por sentado todavía.

**Notas honestas sobre los supuestos usados:**

- El 94% del costo por ciclo ($3,518.50 de $4,052.03 antes de la reserva) es el valor de mi propio tiempo, no gasto en efectivo — se valora como costo de oportunidad a una tarifa de referencia de desarrollador junior freelance en México ($200-350 MXN/hora; se usó el piso, $200 MXN/h — Universe Page, 2026).
- El gasto en efectivo real de iterar es casi cero — la innovación en Vigilio es cara en tiempo, no en dinero, a diferencia del sensor agrícola que usa el curso como ejemplo.
- Los tres supuestos (15h por ciclo, $200 MXN/h, 2 ciclos/mes de Bubble) son ajustables y quedan marcados como tal, no como cifras cerradas.

## Paso 5 — Diferenciación de costos (D/F/S) 🟢

(D) Diferenciación — costos que dan vida a la propuesta de valor, recortarlos destruye el diferencial; (F) Flexibles — importantes pero negociables o diferibles; (S) Establecidos — fuera del control del equipo.

| Costo | D/F/S | Por qué |
|---|:---:|---|
| Clasificador de IA (Claude Haiku 5.5, few-shot de fraude) | **D** | Es el mecanismo central de la propuesta de valor. Sin él, Vigilio es solo un visor de movimientos. |
| Lógica de escalamiento de alertas por severidad | **D** | Hallazgo propio de Semana 6 — diferencia a Vigilio de una alerta genérica de banco. |
| Bubble (builder no-code) | **F** | Herramienta de construcción, no el diferenciador en sí — ya evaluada contra FlutterFlow; negociable si aprieta el presupuesto. |
| Dominio propio | **F** | Opcional y diferible. |
| Belvo (agregador de open banking) | **S** | Infraestructura regulada de un tercero (IFPE ante la CNBV), sin control sobre precio ni condiciones. |
| Firebase Cloud Messaging / SMTP | **S** | Infraestructura de notificación estándar, gratuita, sin margen de negociación. |
| GitHub Pages | **S** | Hosting gratuito y estándar, sin diferenciación posible. |

**Lectura del resultado:** solo 2 de 7 costos caen en D — señal sana según el propio criterio del curso. Si el presupuesto necesita recortarse, el primer candidato es Bubble (F), nunca el clasificador ni la lógica de escalamiento.

## Paso 6 — Crear vs. distribuir la oferta (D/F/S extendido) 🟢

Distinción adicional del curso entre costos de construir Vigilio y costos de hacerlo llegar al cliente.

### Crear la oferta

| Costo | D/F/S | Costo estimado | Unidad de medida | Costo unitario | Por qué |
|---|:---:|---|---|---|---|
| Componentes electrónicos / PCB / carcasa | N/A | — | — | — | Vigilio no tiene hardware — no aplica, no se fuerza un equivalente. |
| Clasificador de IA (Claude Haiku 5.5) | **D** | $0.00025 USD/clasificación | 1 clasificación | $0.00025 USD ≈ $0.0044 MXN | Da vida al diferenciador. |
| Belvo — Sandbox | **S** | $0 USD/mes | 1 mes | $0 | Infraestructura regulada de terceros, sin costo en esta etapa. |
| Belvo — Production (riesgo, no vigente) | **S** | ~$17,580 MXN/mes | 1 mes | ~$29-58 MXN/hogar/mes | Tarifa fija de un tercero regulado por la CNBV, no se negocia. |
| Bubble (builder no-code) | **F** | $1,037 MXN/mes | 1 mes | ≈$35-52 MXN/cuenta/mes | Negociable; primer candidato a recorte. |
| Personal (horas por ciclo de aprendizaje) | **F** | $5,267.63 MXN/ciclo | 1 ciclo | $5,267.63 MXN/ciclo | El ritmo de ciclos se puede alargar o acortar; no es el diferenciador en sí. |
| Licencias (FCM, SMTP) | **S** | $0 USD/mes | 1 mes | $0 | Infraestructura estándar de terceros, sin costo actual. |

### Distribuir la oferta

| Costo | D/F/S | Costo estimado | Unidad de medida | Costo unitario | Por qué |
|---|:---:|---|---|---|---|
| Empaque/logística física | N/A | — | — | — | No aplica — no hay producto físico. |
| Canal de venta y cobro (pasarela de pago) | **S** | 3.6% + $3.00 MXN por transacción, + 0.7% con Stripe Billing | 1 cobro mensual | ≈$7.25 MXN/cliente/mes sobre $99 MXN/mes | Tarifa fija de un tercero, no negociable a esta escala. |
| **Canal de distribución de la app (hallazgo nuevo)** | **F** | Web/PWA: solo el costo de Stripe (~7% combinado). Nativo en App Store/Google Play: +15-30% de comisión sobre cada cobro | 1 mes | — | No documentado antes en el proyecto. Se recomienda mantener web/PWA, misma lógica que Bubble-sobre-FlutterFlow y Belvo-Sandbox-sobre-Production. Es F, no S: el propio equipo controla esta decisión. |
| Soporte técnico al cliente | **F** | $0 presupuestado hoy (lo atiendo yo directamente) | 1 mes | $0 por ahora | Negociable/diferible a esta escala. |
| Marketing digital | **F** | $0 presupuestado hoy | 1 mes | — | Diferible — el piloto depende de red de contactos directa, no de campañas pagadas. |
| Actualizaciones OTA | N/A | — | — | — | Concepto de firmware de hardware; en Bubble las actualizaciones son automáticas al publicar, sin costo adicional. |

**Lectura del resultado:** la fila nueva —web/PWA vs. tienda de apps nativa— es la pieza de información que más cambia la economía del proyecto si se ignora: adoptar distribución nativa multiplicaría por 3-5 veces el costo de cada cobro (de ~7% a 22-37% combinado), sin ninguna mejora de producto a cambio a esta escala. Mantenerse en web/PWA se documenta como decisión tomada, no como pendiente.

---

## Estado de los entregables de la semana (Bloques 2 y 3) 🟢

| Entregable | Estado |
|---|---|
| Benchmarking de modelos de negocio (3 empresas, prompt adaptado) | Hecho, con verificación contra fuentes oficiales (Paso 1) |
| BOM adaptado | Hecho (Paso 2) |
| Costo de la IA con fórmula del curso | Hecho (Paso 3) |
| Costo de desarrollo por ciclos de aprendizaje | Hecho (Paso 4) |
| Diferenciación de costos D/F/S | Hecho (Paso 5) |
| Costos de crear vs. distribuir (D/F/S extendido) | Hecho (Paso 6) |
| Bloque 4 — matemáticas financieras | Pendiente |
| Bloque 5 — taller en clase | Pendiente |

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

## Nota final sobre cómo se trabajó esta semana

El benchmarking de modelos de negocio se corrió en Perplexity, no en Claude, por instrucción del ejercicio de clase del viernes. Todo lo demás —BOM, costo de la IA, ciclos de aprendizaje, y ambas versiones de la diferenciación de costos— se trabajó con Claude, verificando cifras contra páginas oficiales de precios en vez de aceptar números genéricos. El hallazgo del Paso 6 (web/PWA vs. tiendas de apps) no estaba pedido explícitamente por la rúbrica; se agregó porque surgió de forma natural al adaptar la tabla de "distribuir la oferta" y cambia la economía del proyecto lo suficiente como para no dejarlo fuera.
