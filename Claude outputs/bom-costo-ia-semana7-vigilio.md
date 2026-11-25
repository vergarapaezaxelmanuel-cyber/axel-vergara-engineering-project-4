---
layout: default
nav_exclude: true
search_exclude: true
title: BOM adaptado y Costo de la IA — Semana 7 (Vigilio)
---

# BOM adaptado y Costo de la IA — Semana 7

Corresponde al Bloque 3 (Costos) de Semana 7, verificado contra la estructura real del curso (`raw.githubusercontent.com/Aristarco/Proyectos4/main/docs/semana7.md`, 7/8-oct-2026). El BOM, los costos de desarrollo y la diferenciación de costos del curso están diseñados para un producto de hardware (BOM electrónico, prototipado físico, ejemplo resuelto de un sensor agrícola). Vigilio no tiene componente físico — cada sección se adapta reemplazando "componentes/materiales físicos" por los servicios y el tiempo que el sistema consume, manteniendo la misma estructura y fórmulas exigidas por la rúbrica.

**Actualización 25-nov-2026 — dos correcciones y una adición, verificadas directamente contra las páginas oficiales de precios:**

1. **Bubble cambió de precio.** El plan Starter ya no cuesta $59 USD/mes — Bubble reestructuró sus planes (incluyendo una función nueva, "AI credits", que no existía cuando se escribió este documento) y hoy el Starter cuesta **$39 USD/mes** facturación mensual, o $32 USD/mes si se paga anual por adelantado (bubble.io/pricing, verificado 25-nov-2026). Se usa la cifra mensual ($39), no la anual, porque es la más realista para quien no puede prepagar un año completo.
2. **Se agrega un costo que no estaba documentado: el asistente de Claude (Pro) que Axel usa para resolver errores y depurar el desarrollo** — distinto del clasificador Claude Haiku (que es el motor de la app, ya costeado abajo) y distinto de los "AI credits" propios de Bubble (ver punto 3). Esto es un gasto real, recurrente, de $20 USD/mes (claude.com/pricing, verificado 25-nov-2026).
3. **La IA propia de Bubble ("Bubble AI Agent", para construir/iterar dentro del editor) no genera un costo aparte.** Viene incluida gratis dentro del plan Starter (1,000 "AI credits" al mes, sin cargo adicional), y por diseño **no se gasta al correr la app en vivo** — solo al construir/iterar en el editor (manual.bubble.io/help-guides/ai/ai-credits, verificado 25-nov-2026). No hay decisión de costo que tomar aquí: ya está pagado dentro de la suscripción de Bubble que de cualquier forma se necesita para publicar la app.

**Por qué no se usó el plan Team o Enterprise de Claude ("si fuera una empresa"):** se evaluó explícitamente. Claude Enterprise exige un **mínimo de 20 asientos** a $20 USD/asiento/mes = $400 USD/mes (~$7,032 MXN/mes) — más del doble de lo que generaría el piloto completo en ingresos (30 cuentas × $99 MXN = $2,970 MXN/mes). Claude Team exige mínimo 2 asientos ($40-50 USD/mes) — ya más razonable, pero sigue pagando capacidad para una segunda persona que todavía no existe en el equipo (Vigilio es, por RR-02, un equipo de una sola persona). La decisión correcta a esta escala es **Claude Pro** (1 asiento, el que Axel ya usa) — y escalar a Team el día que se sume una segunda persona al equipo, no antes. Mismo criterio que ya se usa en el resto de este documento: no presupuestar la escala de "empresa grande" para un piloto de una persona.

## BOM adaptado — Vigilio (software, sin componente físico)

| Componente | Especificación | Precio unitario | Proveedor / tiempo de entrega |
|---|---|---|---|
| Agregador de open banking | Belvo, tier **Sandbox** — solo lectura, datos simulados ilimitados | $0 USD/mes | Belvo — alta inmediata, sin aprobación |
| Agregador de open banking (riesgo de escalamiento, no es costo actual del semestre) | Belvo, tier **Launch** (producción) | ~$1,000 USD/mes ≈ $17,580 MXN/mes | Belvo — requiere ventas + certificación técnica; semanas, no inmediato |
| Builder no-code (UI + backend + base de datos) | Bubble, plan **Starter** (app publicada "en vivo", no solo editor; incluye 1,000 AI credits/mes para el asistente de Bubble, sin costo adicional) | $39 USD/mes ≈ $685.62 MXN/mes (facturación mensual; $32 USD/mes ≈ $562.56 MXN/mes si se paga anual) | Bubble Inc. — alta inmediata en línea |
| Clasificador de IA (motor de la app) | **Claude Haiku 5.5** vía API, few-shot, ~2,000 tokens input + ~100 tokens output por clasificación | $0.10 USD input / $0.50 USD output por millón de tokens (prompts ≤100,000 tokens) — ver cálculo abajo | Anthropic — inmediato (API) |
| **Asistente de desarrollo (depuración/errores) — nuevo, 25-nov** | **Claude Pro**, 1 asiento, usado por Axel para resolver errores durante el desarrollo — no es el motor de la app, es herramienta de productividad | **$20 USD/mes ≈ $351.60 MXN/mes** | Anthropic — alta inmediata |
| Notificaciones push | Firebase Cloud Messaging (FCM), vía plugin de Bubble o nativo de FlutterFlow | $0 USD (ilimitado en plan Spark/Blaze) | Google Firebase — inmediato |
| Correo electrónico (canal secundario) | SMTP integrado a Bubble (p. ej. SendGrid), tier gratuito ~100 correos/día | $0 USD dentro del límite — a verificar en la cuenta real | SendGrid u otro SMTP — inmediato |
| Dominio propio (opcional) | .com o .mx | ~$150-300 MXN/año, o $0 con subdominio de GitHub Pages | Cualquier registrador — 24h |
| Landing page | GitHub Pages | $0 USD | GitHub — inmediato |

**Corrección sobre el stack original (8-oct-2026):** `plan-de-accion-stack-vigia.md` listaba "Claude Haiku o GPT-4o-mini" como opciones del clasificador. Ambos datos estaban desactualizados al verificar precios: el modelo Haiku vigente y más barato de Anthropic hoy es Haiku 5.5 (no el Haiku 3.5/4.5 que existía cuando se escribió el plan), y GPT-4o-mini ya no aparece en la página de precios oficial de OpenAI — el modelo chico vigente es GPT-5.6 Luna ($0.20/$1.20 USD por millón de tokens, el doble de Haiku 5.5 y aun así trivial a esta escala). No cambia la decisión de arquitectura, cambia el número correcto a usar.

## Costo de la IA — fórmula del curso aplicada

Costo mensual por usuario = llamadas/día × (tokens input + tokens output) por llamada × precio por token del modelo × 30 días

**Insumos, con origen documentado, no cifras genéricas:**

- Llamadas/día: 1 por cuenta, redondeado al alza desde el estimado de Semana 6 (Paso 6b): 20-40 transacciones/mes por cuenta ≈ 0.7-1.3 llamadas/día. Supuesto a validar con datos reales de Sandbox.
- Tokens por llamada: ~2,000 input + ~100 output. El input incluye la transacción nueva, el historial reciente de la cuenta como línea base, y los ejemplos few-shot (`arquitectura-sistema-semana5-vigilio.md`). También supuesto a validar, no cifra cerrada.
- Precio del modelo: Claude Haiku 5.5 — $0.10 USD input / $0.50 USD output por millón de tokens, verificado dos veces de forma independiente: por Claude vía WebFetch a `platform.claude.com/docs/en/about-claude/pricing`, y por Axel directamente en capturas de pantalla de la misma página oficial (7-oct-2026). Ambas verificaciones coinciden exactamente.

**Cálculo:**

- Costo por llamada: (2,000 × $0.10/1,000,000) + (100 × $0.50/1,000,000) = $0.0002 + $0.00005 = **$0.00025 USD por clasificación**
- Costo mensual por usuario: 1 llamada/día × $0.00025 × 30 días = **$0.0075 USD/mes por cuenta** ≈ $0.13 MXN/mes
- A escala del piloto (20-30 cuentas, RD-04): **$0.15 a $0.23 USD/mes en total** (~$2.6 a $4 MXN/mes) — consistente con lo ya documentado en `arquitectura-sistema-semana5-vigilio.md` ("menos de $100 MXN en total para el semestre"), ahora con la fórmula explícita y el modelo de precio vigente.

**Por qué Haiku y no Sonnet u Opus (justificación citable, no solo "es el más barato"):** la propia guía de optimización de costos de Anthropic recomienda explícitamente "Haiku para tareas simples, Sonnet para la mayoría de las cargas de trabajo de producción y Opus para el razonamiento más complejo" (Anthropic, 2026), y describe a Haiku 5.5 como diseñado para "tareas de alto volumen y sensibles a la latencia, como clasificación, extracción y enrutamiento" — que es exactamente el caso de uso de Vigilio.

**Dos precisiones que quedan documentadas, no omitidas:**

- La nota de la página oficial sobre el tokenizador de "Claude 4.7 y posteriores" (≈30% más tokens que el tokenizador previo para el mismo texto) no deja del todo claro si aplica igual a toda la familia 5.x — se trata como una fuente de margen de error adicional sobre el estimado de tokens por llamada, no como una cifra a corregir con precisión falsa.
- La Batch API da 50% de descuento sobre Haiku 5.5, pero **no aplica a Vigilio**: RD-01 exige que la alerta llegue en minutos, no que se procese de forma asíncrona por lotes — usar Batch rompería ese requerimiento de desempeño ya definido, así que no se considera como opción de ahorro aquí.

## Costo de desarrollo — ciclos de aprendizaje (adaptado)

Estructura del curso, sin cambios en la fórmula: Costo Total de Desarrollo = Costo Fijo Directo + Costo Variable Directo + Costo Indirecto (10-20% de los directos) + Reserva para Contingencias (25-40% en proyectos de innovación). Un "ciclo de aprendizaje" en Vigilio es diseñar un ajuste (p. ej. afinar el prompt few-shot del clasificador o el umbral de alerta) → construirlo en los workflows de Bubble → probarlo en Sandbox con transacciones simuladas → aprender del resultado — el mismo diseñar-construir-probar-aprender del curso, sin prototipo físico de por medio.

**Desglose de horas y costo por actividad (con rango de variación, no un número fijo sin respaldo):**

| Actividad | Horas mín. | Costo mín. ($200 MXN/h) | Horas típicas | Costo típico | Horas máx. | Costo máx. | Por qué varía |
|---|---|---|---|---|---|---|---|
| 1. Diseñar el ajuste (prompt few-shot o umbral) | 2h | $400 MXN | 3h | $600 MXN | 5h | $1,000 MXN | Mover un umbral es una decisión rápida; rediseñar los ejemplos few-shot después de revisar varios casos mal clasificados toma más tiempo de análisis previo. |
| 2. Construirlo en Bubble (workflow) | 3h | $600 MXN | 5h | $1,000 MXN | 7h | $1,400 MXN | Ajustar un umbral en la configuración es casi inmediato; reconstruir la llamada al API Workflow o la lógica de escalamiento completa toma más. |
| 3. Probarlo en Sandbox (transacciones simuladas) | 2h | $400 MXN | 3h | $600 MXN | 4h | $800 MXN | Depende de cuántas de las 50-100 transacciones de prueba se revisan caso por caso, no solo se corren de forma automática. |
| 4. Analizar resultado y documentar el aprendizaje | 2h | $400 MXN | 4h | $800 MXN | 5h | $1,000 MXN | Un resultado claro (mejoró/empeoró sin ambigüedad) se analiza rápido; un resultado mixto (mejoró en unos casos, empeoró en otros) toma más revisión. |
| **Total por ciclo** | **9h** | **$1,800 MXN** | **15h** | **$3,000 MXN** | **21h** | **$4,200 MXN** | |

El costo típico por actividad ($3,000 MXN en total) es exactamente la misma cifra que ya se usaba como "horas de trabajo" en el cálculo del ciclo más abajo — este desglose no cambia el resultado final, lo hace trazable: ahora se puede señalar de dónde sale cada peso, no solo el total. El rango de costo (de $1,800 a $4,200 MXN solo en horas de trabajo) es otro argumento más para no presupuestar el escenario mínimo de 3 ciclos: no solo el número de ciclos puede quedarse corto, el costo de cada ciclo individual también puede salir por encima del típico.

```
COSTO DE UN CICLO DE APRENDIZAJE — Vigilio (actualizado 25-nov-2026)

Costos fijos directos (por ciclo):
  Horas de trabajo (diseñar ajuste del clasificador +
  reconstruir workflow en Bubble + correr pruebas +
  analizar resultados): 15h × $200 MXN/h       = $3,000.00 MXN
  Bubble Starter, prorrateado (~2 ciclos/mes,
  $39 USD/mes ≈ $685.62 MXN/mes)                = $342.81 MXN
  Claude Pro, prorrateado (~2 ciclos/mes,
  $20 USD/mes ≈ $351.60 MXN/mes) — NUEVO         = $175.80 MXN
  Subtotal fijos directos                       = $3,518.61 MXN

Costos variables directos (pruebas de un ciclo):
  Clasificaciones de prueba en Sandbox
  (~50-100 transacciones simuladas vía
  Claude Haiku 5.5, a $0.00025 USD c/u)         = $5.00 MXN
  Subtotal variables directos                    = $5.00 MXN

Costos indirectos (15% de los directos):
  ($3,518.61 + $5.00) × 0.15                     = $528.54 MXN

Costo base por ciclo = $3,518.61 + $5.00 + $528.54 = $4,052.15 MXN

Reserva para contingencias (30%):
  $4,052.15 × 0.30                               = $1,215.65 MXN

COSTO TOTAL POR CICLO                             = $5,267.80 MXN
```

**Rango resultante (rango de costo de prototipado = costo unitario del ciclo × ciclos mínimos a máximos):**

```
Escenario mínimo (3 ciclos):   $5,267.80 × 3 = $15,803.39 MXN
Escenario promedio (5 ciclos): $5,267.80 × 5 = $26,338.98 MXN
Escenario máximo (8 ciclos):   $5,267.80 × 8 = $42,142.38 MXN
```

**Nota sobre el cambio frente a la versión anterior (antes de corregir Bubble y agregar Claude Pro):** el costo total por ciclo subió solo $0.17 MXN ($5,267.63 → $5,267.80) — la baja real en el precio de Bubble (de $1,037 a $685.62 MXN/mes) casi compensa exactamente el nuevo gasto de Claude Pro ($351.60 MXN/mes). Es una coincidencia de magnitudes, no un ajuste forzado — las dos correcciones son independientes y reales, y así es como cuadran.

**Recomendación de presupuesto a presentar:** usar el escenario promedio como base — **~$26,340 MXN** para 5 ciclos de aprendizaje. No presentar el escenario mínimo: en Vigilio, "el primer concepto funciona bien" significaría que el clasificador no genera falsos positivos desde el primer ajuste del prompt few-shot, algo que ni el propio RD-02 (tasa de falsos positivos) da por sentado todavía — si el proyecto se presupuesta solo para 3 ciclos y el clasificador necesita 5 u 8 rondas de ajuste para dejar de confundir una compra legítima con fraude, el margen se agota antes de tener un producto que de verdad funcione.

**Notas honestas sobre los supuestos usados:**

- El **74%** del costo base por ciclo ($3,000.00 de $4,052.15 antes de la reserva) es solo el valor de las horas de trabajo de Axel, no gasto en efectivo — se valora como costo de oportunidad a una tarifa de referencia de desarrollador junior freelance en México ($200-350 MXN/hora; se usó el piso, $200 MXN/h — Universe Page, 2026), no un sueldo real que se esté pagando. (**Corrección 25-nov-2026:** la versión anterior de esta nota decía "94%", una cifra que no correspondía a ningún cálculo verificable con los números de la tabla — el porcentaje correcto, recalculado, es 74% solo de horas, u 87% si se suman también las suscripciones de Bubble y Claude Pro prorrateadas.)
- El gasto en efectivo real de iterar es pequeño pero ya no es cero: Bubble y Claude Pro son suscripciones reales que si se pagan mes a mes. El clasificador sigue siendo fracciones de centavo — la innovación en Vigilio sigue siendo cara en tiempo, no en dinero, a diferencia del ejemplo del sensor agrícola del curso, donde cada ciclo sí consume materiales físicos comprados.
- Los supuestos (15h por ciclo, $200 MXN/h, 2 ciclos/mes de Bubble y Claude Pro) son ajustables y quedan marcados como tal, no como cifras cerradas — mismo tratamiento que el resto de los RD del proyecto.
- **El ciclo 1 no cuesta lo mismo que los ciclos 2 a 5, y el promedio usado aquí ya lo asume.** El "ciclo 1" del marco 3/5/8 del curso es construir la primera versión completa (vincular Belvo, escribir el primer prompt few-shot, armar el workflow de alertas) — más caro que un ciclo posterior de solo ajuste, que se acerca más al escenario de horas mínimas de la tabla de arriba. Por eso el costo de $5,267.80 MXN por ciclo es un **promedio sobre un proceso desigual**, no un costo idéntico ciclo por ciclo — el mismo tratamiento que usa el ejemplo del sensor agrícola del curso. No se agrega la construcción inicial como un renglón de costo aparte, porque ya está contenida dentro del ciclo 1 de los 5 presupuestados; sumarla por separado duplicaría ese gasto.

## Seguridad y cumplimiento de datos (hallazgo de Semana 5, con costo asignado)

La revisión del PDS de Semana 5 ya había detectado un vacío sin resolver: ningún requerimiento fijaba el estándar de cifrado en reposo ni el procedimiento de eliminación de los datos históricos del padre/madre al revocarse el consentimiento (RR-01, RR-07). Aquí se le pone número a ese vacío, en vez de dejarlo solo como nota.

**Qué cubre:** cifrado de los campos sensibles en la base de datos nativa de Bubble, implementación del borrado automático al revocar consentimiento (RR-07), y redacción de un aviso de privacidad conforme a la LFPDPPP.

**Costo:** no es una renta de servicio nueva — es trabajo de ingeniería único, similar en naturaleza a construir una pieza del sistema por primera vez. Estimado en 8-15h × $200 MXN/h = **$1,600 a $3,000 MXN**, costo único (no recurrente), separado de los ciclos de aprendizaje porque no es parte de afinar el clasificador, es una obligación legal/regulatoria independiente.

**Por qué es S y no F:** la obligación de proteger los datos no la decide el equipo — la impone la LFPDPPP y, de forma indirecta, la condición de Belvo como entidad regulada por la CNBV. No es recortable si el presupuesto aprieta, a diferencia de Bubble o del dominio propio.

## Diferenciación de costos (D / F / S)

Mismo criterio del curso: (D) Diferenciación — costos que dan vida a la propuesta de valor, recortarlos destruye el diferencial; (F) Flexibles — importantes pero negociables o diferibles; (S) Establecidos — fuera del control del equipo (tarifas de terceros, comisiones, infraestructura regulada). Guía de uso: los costos S no se recortan, los F son los primeros candidatos a reducir, los D son los últimos en tocar.

| Costo | D/F/S | Por qué |
|---|:---:|---|
| Clasificador de IA (Claude Haiku 5.5, few-shot de fraude) | **D** | Es el mecanismo central de la propuesta de valor — detectar lo que el banco no marca como fraude. Sin él, Vigilio es solo un visor de movimientos. |
| Lógica de escalamiento de alertas por severidad | **D** | Hallazgo propio de Semana 6 (Paso 2) — diferencia a Vigilio de una alerta genérica de banco. |
| Bubble (builder no-code: UI + backend + base de datos) | **F** | Herramienta de construcción, no el diferenciador en sí — ya se evaluó como sustituible por FlutterFlow en `plan-de-accion-stack-vigia.md`; sigue siendo la decisión correcta, pero es negociable si el presupuesto aprieta. |
| **Claude Pro (asistente de desarrollo/depuración) — nuevo, 25-nov** | **F** | Herramienta de productividad de Axel, no el motor de la app (eso es Haiku, ya clasificado D) — negociable/cancelable sin afectar el funcionamiento de Vigilio para los usuarios. |
| Dominio propio | **F** | Opcional y diferible — ya documentado así en `arquitectura-sistema-semana5-vigilio.md`. |
| Belvo (agregador de open banking) | **S** | Infraestructura regulada de un tercero (autorizado como IFPE ante la CNBV) — sin control sobre su precio ni sus condiciones, aunque es indispensable. |
| Firebase Cloud Messaging / SMTP (correo) | **S** | Infraestructura de notificación estándar, gratuita, sin margen de negociación ni diferenciación. |
| GitHub Pages | **S** | Hosting gratuito y estándar, sin control ni diferenciación posible. |
| Seguridad y cumplimiento de datos (cifrado en reposo, retención RR-07, aviso de privacidad LFPDPPP) | **S** | Obligación impuesta por la LFPDPPP y por la condición de Belvo como entidad regulada — no es una decisión de negocio que el equipo pueda recortar, aunque la forma específica de implementarla sí se decide internamente. |

**Lectura del resultado:** solo 2 de 9 costos caen en D — una señal sana según el propio criterio del curso ("si tienes demasiados costos en la columna D, o no puedes decidir cómo clasificarlos, es una señal para hacer una pausa"). Si el presupuesto necesita recortarse, el primer candidato es Claude Pro o Bubble (ambos F) —ya evaluados contra alternativas reales—, nunca el clasificador ni la lógica de escalamiento, que son el producto en sí, ni la seguridad y cumplimiento (S), que no es negociable.

## Costos de crear vs. distribuir la oferta (D/F/S extendido)

El criterio D/F/S de la sección anterior clasifica los costos ya identificados, pero no distingue entre los costos de **construir** Vigilio y los costos de **hacerlo llegar al cliente** — distinción que el curso ejemplifica con el sensor agrícola separando "costos de crear la oferta" (componentes, PCB, carcasa, personal, infraestructura) de "costos de distribuir la oferta" (empaque, canal de venta, soporte, marketing, actualizaciones). Aplicado a Vigilio, varias filas de "crear" no aplican por no haber hardware, y aparece un hallazgo nuevo en "distribuir" que no se había documentado en ninguna sección anterior: la elección entre distribuir como web/PWA o publicar nativo en App Store/Google Play.

### Crear la oferta

| Costo | D/F/S | Costo estimado | Unidad de medida | Unidades que produce | Costo unitario (calculado) | Por qué |
|---|:---:|---|---|---|---|---|
| Componentes electrónicos | N/A | — | — | — | — | Vigilio no tiene hardware — no aplica, no se fuerza un equivalente. |
| PCB | N/A | — | — | — | — | No aplica, mismo motivo. |
| Carcasa | N/A | — | — | — | — | No aplica, mismo motivo. |
| Clasificador de IA (Claude Haiku 5.5) | **D** | $0.00025 USD/clasificación | 1 clasificación | 1 transacción evaluada | $0.00025 USD ≈ $0.0044 MXN | Da vida al diferenciador; el costo unitario ya viene calculado de la sección "Costo de la IA" arriba. |
| Belvo — Sandbox | **S** | $0 USD/mes | 1 mes | Hasta 30-40 llamadas de prueba/cuenta | $0 | Infraestructura regulada de terceros, sin costo en esta etapa del semestre. |
| Belvo — Production (riesgo, no vigente) | **S** | ~$17,580 MXN/mes | 1 mes | 304-608 hogares (SOM, `arquitectura-sistema-semana5-vigilio.md`) | ~$29-58 MXN/hogar/mes | Fuera del control del equipo — tarifa fija de un tercero regulado por la CNBV, se escala con el número de hogares, no se negocia. |
| Bubble (builder no-code) | **F** | $685.62 MXN/mes ($39 USD/mes — **corregido 25-nov**, antes $1,037) | 1 mes | 20-30 cuentas (piloto, RD-04) | ≈$23-34 MXN/cuenta/mes | Herramienta de construcción negociable — ya evaluada contra FlutterFlow; primer candidato a recorte si aprieta el presupuesto. |
| **Claude Pro (asistente de desarrollo) — nuevo, 25-nov** | **F** | $351.60 MXN/mes ($20 USD/mes) | 1 mes | Uso ilimitado de Axel para depurar errores | ≈$12-18 MXN/cuenta/mes (a 20-30 cuentas) | Herramienta de productividad del desarrollador, no del producto en sí; negociable/cancelable. |
| Personal (horas de Axel por ciclo de aprendizaje) | **F** | $5,267.80 MXN/ciclo | 1 ciclo de aprendizaje | 1 ajuste completo construido y probado | $5,267.80 MXN/ciclo | Negociable en el sentido de que el ritmo de ciclos se puede alargar o acortar; no es el diferenciador en sí, es el tiempo para llegar a él. |
| Licencias (FCM, SMTP) | **S** | $0 USD/mes | 1 mes | Notificaciones ilimitadas dentro de tier gratuito | $0 | Infraestructura estándar de terceros, sin margen de negociación, sin costo actual. |
| Seguridad y cumplimiento de datos (cifrado + aviso de privacidad LFPDPPP) | **S** | $1,600 a $3,000 MXN (8-15h × $200 MXN/h) | 1 implementación única | Cobertura de todas las cuentas del piloto | $1,600-$3,000 MXN (costo único, no recurrente) | Obligación impuesta por la LFPDPPP y por la condición de Belvo como entidad regulada; es trabajo de implementarlo, no renta de un servicio. |

### Distribuir la oferta

| Costo | D/F/S | Costo estimado | Unidad de medida | Unidades que produce | Costo unitario (calculado) | Por qué |
|---|:---:|---|---|---|---|---|
| Empaque/logística física | N/A | — | — | — | — | No aplica — no hay producto físico que empacar o enviar. |
| Canal de venta y cobro (pasarela de pago) | **S** | 3.6% + $3.00 MXN por transacción, + 0.7% sobre volumen si se usa Stripe Billing para suscripciones (Stripe México, verificado 8-oct-2026, `stripe.com/mx/pricing`) | 1 transacción/cobro mensual | 1 cliente cobrado | ≈$7.25 MXN/cliente/mes, sobre una suscripción hipotética de $99 MXN/mes | Tarifa fija de un tercero (Stripe), no negociable por volumen a esta escala — mismo tratamiento que Belvo: infraestructura de pagos regulada y estandarizada. |
| **Hallazgo nuevo — canal de distribución de la app** | **F** | Web/PWA: solo el costo de Stripe (~7% combinado). Nativo en App Store/Google Play: 15-30% de comisión sobre cada cobro, encima de lo anterior | 1 mes | — | — | No documentado en ninguna sección anterior del proyecto. Publicar nativo en las tiendas de apps dispara una comisión de plataforma (15-30%) que no existe si Vigilio se distribuye como web/PWA. Se recomienda **mantener web/PWA**, consistente con la filosofía ya establecida en el proyecto de minimizar piezas moviéndose (misma lógica que las decisiones Bubble-sobre-FlutterFlow y Belvo-Sandbox-sobre-Production en `plan-de-accion-stack-vigia.md`). Es F y no S porque, a diferencia de Stripe o Belvo, esta es una decisión que el propio equipo controla. |
| Soporte técnico al cliente | **F** | $0 presupuestado hoy (lo atiende Axel directamente) | 1 mes | Piloto (20-30 cuentas) | $0 por ahora, escalaría con horas de soporte | Negociable/diferible — a esta escala no requiere headcount dedicado; sería el primer costo en aparecer si el piloto crece. **Ver actualización de Semana 8 abajo: este supuesto de $0 dependía de resolver la fricción de onboarding, y ya se resolvió.** |
| Marketing digital | **F** | $0 presupuestado hoy | 1 mes | — | — | Diferible — el piloto actual depende de red de contactos directa (entrevistas de Semana 3), no de campañas pagadas. |
| Actualizaciones OTA (over-the-air) | N/A | — | — | — | — | Concepto de firmware de hardware; en una PWA/no-code las actualizaciones son automáticas al publicar en Bubble, sin costo ni mecanismo distinto que documentar. |

**Lectura del resultado:** la fila nueva —web/PWA vs. tienda de apps nativa— es la pieza de información que más cambia la economía del proyecto si se ignora: adoptar distribución nativa sin notarlo multiplicaría por 3-5 veces el costo de cada cobro (de ~7% a 22-37% combinado), sin ninguna mejora de producto a cambio a esta escala. Mantenerse en web/PWA es gratis en el sentido estricto —no cuesta nada decidirlo ahora—, así que se documenta como decisión tomada, no como pendiente.

## Actualización — Semana 8: la fricción de onboarding ya no amenaza el supuesto de $0 en soporte

La revisión DFM de Semana 8 (`plan-prototipado-dfm-semana8-vigilio.md`) había detectado que el "$0 presupuestado en soporte técnico" de la tabla de arriba solo se sostenía si el onboarding dejaba de ser manual: con onboarding asistido por videollamada para **todas** las cuentas, el soporte real no era $0, eran 20-30 minutos del tiempo de Axel por cuenta nueva, creciendo 1:1 con cada cliente — insostenible más allá del piloto.

En Semana 8 se adoptó la recomendación DFM: el onboarding por default pasa a ser autoservicio, mediante el widget de conexión de Belvo, dejando la videollamada asistida como soporte opcional solo para quien la necesite (típicamente el padre o madre mayor con menos familiaridad tecnológica), no como el flujo estándar para todas las cuentas. Con este cambio, el supuesto de "$0 en soporte técnico" vuelve a sostenerse en la mayoría de los casos — la mayoría de las cuentas no van a requerir el tiempo de Axel en el onboarding — y el costo de soporte deja de crecer 1:1 con cada cuenta nueva: crece solo con la fracción de usuarios que de verdad necesite ayuda asistida, no con el total.

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
