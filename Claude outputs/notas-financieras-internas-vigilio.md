---
title: "Parte financiera — cómo se calculó todo (documento interno, NO para la página de GitHub)"
fecha: "25-nov-2026"
---

# Parte financiera de Vigilio — cómo se calculó cada cifra

Este documento es para ti, Axel, para que puedas defender cualquier número financiero si te preguntan "¿y eso de dónde sale?" en la presentación. No se sube a la página — es tu respaldo personal. Todo lo de abajo ya estaba calculado en documentos anteriores del proyecto; aquí solo se junta y se explica el "cómo", verificado de nuevo con cálculo exacto.

**Actualización 25-nov-2026 (segunda pasada):** se analizaron tres herramientas de IA distintas que usas o podrías usar — la IA propia de Bubble, Claude Pro (el que ya tienes, para depurar errores), y Claude Haiku (el motor de la app) — y se decidió cuáles son gasto real necesario y cuáles no. Resultado: se corrigió el precio de Bubble (bajó) y se agregó Claude Pro como costo nuevo (subió); las dos correcciones casi se cancelan entre sí. Todas las tablas de abajo ya reflejan esto. Ver sección 8-bis.

## 1. El "sueldo" — qué es en realidad

No hay un sueldo real que se esté pagando. Lo que existe es el **valor del tiempo de Axel como costo de oportunidad**: cada hora que inviertes en ajustar el clasificador o construir en Bubble se valora a una tarifa de referencia, para poder presupuestar el proyecto como si fuera un gasto real — aunque hoy no le estés cobrando a nadie por ese tiempo.

- **Tarifa usada:** $200 MXN/hora — el **piso** del rango reportado para un desarrollador junior freelance en México ($200-350 MXN/hora).
- **Fuente:** Universe Page (2026).
- **Por qué el piso y no el promedio o el techo:** es la decisión más conservadora — si usaras $350 MXN/h, tu costo de desarrollo se vería más caro de lo que realmente te costaría si contrataras a alguien júnior barato; usar el piso evita sobreestimar.

**Si te preguntan "¿por qué usas un sueldo de desarrollador y no el tuyo?":** porque tú no tienes una tarifa de mercado propia todavía (eres estudiante, no freelancer con historial de cobro) — usar la tarifa de alguien con tu mismo nivel de experiencia (junior) es la aproximación más honesta disponible, no un número inventado.

## 2. De la tarifa a un ciclo de aprendizaje completo

Un "ciclo de aprendizaje" = diseñar un ajuste al clasificador → construirlo en Bubble → probarlo en Sandbox → analizar el resultado. Desglose de horas (escenario típico):

| Actividad | Horas | Costo ($200/h) |
|---|---|---|
| 1. Diseñar el ajuste | 3h | $600 |
| 2. Construir en Bubble | 5h | $1,000 |
| 3. Probar en Sandbox | 3h | $600 |
| 4. Analizar y documentar | 4h | $800 |
| **Total horas de trabajo** | **15h** | **$3,000** |

A esto se le suma lo que sí es gasto real en efectivo — **actualizado 25-nov-2026** (Bubble corregido, Claude Pro agregado):

| Concepto | Costo |
|---|---|
| Horas de trabajo (de la tabla de arriba) | $3,000.00 |
| Bubble Starter, prorrateado ($39 USD/mes ≈ $685.62 MXN/mes, ~2 ciclos/mes) | $342.81 |
| Claude Pro, prorrateado ($20 USD/mes ≈ $351.60 MXN/mes, ~2 ciclos/mes) — **nuevo** | $175.80 |
| **Subtotal costos fijos directos** | **$3,518.61** |
| Clasificaciones de prueba en Sandbox (~50-100 transacciones vía Claude Haiku) | $5.00 |
| **Subtotal variables directos** | **$5.00** |
| Costos indirectos (15% de los directos: ($3,518.61+$5.00)×0.15) | $528.54 |
| **Costo base por ciclo** | **$4,052.15** |
| Reserva para contingencias (30% del costo base) | $1,215.65 |
| **COSTO TOTAL POR CICLO** | **$5,267.80 MXN** (antes: $5,267.63 MXN — diferencia de 17 centavos) |

**El 74% de este costo ($3,000.00 de $4,052.15) es solo tus horas de trabajo, no dinero que sale de tu bolsillo** — y el 87% si se cuentan también las suscripciones de Bubble y Claude Pro ya prorrateadas, que sí son gasto real pero pequeño frente al valor de tu tiempo. (**Corrección:** la versión anterior de este documento decía "94%", una cifra que no correspondía a ningún cálculo verificable con estos números — quedó corregida aquí.)

## 3. De un ciclo a la inversión inicial total

Se presupuestan **5 ciclos** (escenario promedio, ni el mínimo de 3 ni el máximo de 8 — justificación: el primer ciclo siempre es más caro que uno de solo ajuste, así que 5 es un promedio razonable sobre un proceso desigual, no un número optimista).

```
5 ciclos × $5,267.80 MXN           = $26,338.98 MXN
+ Seguridad y cumplimiento de datos
  (cifrado, borrado al revocar
  consentimiento, aviso de privacidad,
  8-15h × $200 MXN/h, costo único)   = $2,300.00 MXN (punto medio de $1,600-$3,000)
─────────────────────────────────────────────────
INVERSIÓN INICIAL TOTAL              = $28,638.98 MXN (antes: $28,638.15 MXN)
```

**Si te preguntan "¿por qué seguridad y cumplimiento va separado de los ciclos de aprendizaje?":** porque no es parte de afinar el clasificador — es una obligación legal (LFPDPPP) que no es recortable aunque el presupuesto apriete, a diferencia de Bubble o el dominio.

## 4. Costos operativos mensuales (una vez que la app ya está corriendo)

**Variables, por cuenta** (sin cambios — no dependen de Bubble ni Claude Pro):

| Componente | Costo/cuenta/mes |
|---|---|
| Clasificador de IA (Claude Haiku) | $0.13 MXN |
| Stripe México (cobro) | $7.25 MXN |
| **Total variable** | **$7.38 MXN** (redondeado a $7.387 en el modelo de CAC/LTV) |

**Fijos, independientes del número de cuentas (dentro de la capacidad del piloto) — actualizado 25-nov-2026:**

| Componente | Costo/mes |
|---|---|
| Bubble Starter ($39 USD/mes — corregido, antes $59) | $685.62 |
| Claude Pro (asistente de desarrollo) — **nuevo** | $351.60 |
| Dominio propio, prorrateado | $18.75 |
| **Total fijo** | **$1,055.97** (antes: $1,055.75 — diferencia de 22 centavos) |

## 5. Punto de equilibrio

- **Solo costos operativos:** $1,055.97 ÷ $91.62 (margen de contribución) = **12 cuentas pagando**. Sin cambio. Alcanzable — dentro del rango de piloto (20-30 cuentas).
- **Recuperando también la inversión inicial en 12 meses:** cuota mensual $28,638.98÷12 = $2,386.58 → costos fijos totales $3,442.55 → punto de equilibrio = **38 cuentas**. Sin cambio. **Este sí excede el techo del piloto (30 cuentas)** — no es que el modelo esté roto, es que el piloto está diseñado para validar, no para ser rentable todavía. Dilo así si te preguntan, no lo escondas.

## 6. Precio — por qué $99 MXN/mes y no otro número

Dos métodos, dos resultados muy distintos — y el precio final NO es ninguno de los dos:

- **Cost-plus a 10 cuentas:** pide ~$492 MXN/mes (casi 5 veces $99) — demasiado caro a escala de piloto.
- **Cost-plus a 100 cuentas:** pide ~$58.53 MXN/mes — demasiado barato.
- **Value-based** (usando el caso real de una entrevistada que perdió $8,500 MXN en cargos hormiga, con 10% de captura de valor): $70.83 MXN/mes — por debajo de $99, pero basado en un solo caso extremo, no en un promedio confiable.
- **Precio usado: $99 MXN/mes** — no sale de ninguna fórmula, sale de **evidencia real de entrevista**: dos personas distintas mencionaron esa cifra de forma espontánea, sin que tú se las sugirieras. Es el dato más fuerte que tienes (comportamiento/disposición declarada, no una fórmula teórica).

**Si te preguntan "¿tu precio es arbitrario?":** no — es el único de los tres métodos anclado en lo que la gente real dijo que pagaría, no en una fórmula de costos. Los otros dos se calcularon porque el curso los pide, no porque debieran reemplazar la evidencia de campo.

## 7. CAC, LTV, payback — la cadena completa

Esta sección **no cambió** — CAC/LTV/payback dependen del costo variable por cuenta ($7.387 MXN), que no incluye ni a Bubble ni a Claude Pro (ambos son costos fijos del desarrollo, no costos que crezcan con cada cliente nuevo).

| Paso | Cálculo | Resultado |
|---|---|---|
| Contribución mensual | $99 − $7.387 | $91.613 MXN |
| Vida media del cliente | 1 ÷ 0.0563 (churn mensual) | 17.76 meses |
| **LTV** | $91.613 × 17.7619 (sin redondear la vida media) | **$1,627.23 MXN** |
| **CAC** | 5 conversaciones × 0.5h × $200 MXN/h | **$500.00 MXN** |
| **LTV ÷ CAC** | $1,627.23 ÷ $500 | **3.25** |
| **Payback** | $500 ÷ $91.613 | **5.46 meses** |

**Supuestos vs. medido — para que sepas qué defender como dato duro y qué como supuesto razonado:**

| Insumo | Estatus |
|---|---|
| Precio $99 MXN | **Medido** (ya publicado en la landing, validado en entrevistas) |
| Costo operativo $7.387 MXN | **Medido** (cálculo de BOM) |
| Conversaciones de venta (5) | Supuesto genérico de ventas (Fundera, 2026) |
| Horas por conversación (0.5h) | Supuesto propio tuyo, sin benchmark externo |
| Churn mensual (5.63%) | Supuesto, proxy de categoría cercana (Focus Digital, 2026) |

**Si te preguntan "¿qué tan sólido es tu LTV/CAC de 3.25?":** el precio y el costo operativo son datos medidos; el churn y las conversaciones de venta son supuestos razonados con fuente, no inventados, pero sí son el punto más débil de la cadena — un ±25% en el churn mueve el ratio de 2.60 a 4.34. Decirlo así es más fuerte que fingir que todo es dato duro.

## 8. Un gasto real que faltaba documentar: los $10 USD de crédito en la API de Anthropic

**Lo que me dijiste (25-nov):** le pusiste ~$10 USD de saldo real a la cuenta de la API de Anthropic ("la parte de Claude Haiku") para que las llamadas funcionaran — exclusivamente para que la app funcionara, no para programar. Esto es dinero real que ya gastaste, correcto detectarlo.

**Qué es exactamente:** el cálculo de $0.00025 USD por clasificación es el costo teórico por llamada; los $10 USD son el saldo/crédito prepagado del que se descuenta — probablemente el mínimo que pide la consola de Anthropic para activar la API, no un gasto consumido completo. A esa tarifa necesitarías 40,000 llamadas para gastarte los $10 completos. Equivalente en pesos: ~$175-180 MXN.

**Dónde entra en el modelo:** gasto único de "puesta en marcha de la cuenta de API", distinto de la inversión de desarrollo y del costo operativo mensual. No cambia ninguna cifra grande del modelo.

## 8-bis. Las tres IA de Vigilio — cuál es gasto necesario y cuál no (análisis 25-nov-2026)

Aclaraste que el saldo de $10 USD **solo** es para que la app funcione (Claude Haiku, el clasificador) — no para programar. Para programar y depurar errores usas **Claude Pro** (el que ya tienes), y preguntaste si en vez de Pro deberíamos usar el plan empresarial, "si fuera una empresa". Esto llevó a analizar las tres IA que están en juego:

**1. La IA propia de Bubble ("Bubble AI Agent", dentro del editor):** verificado directamente en `manual.bubble.io/help-guides/ai/ai-credits` (25-nov-2026) — viene incluida gratis en el plan Starter que ya pagas (1,000 créditos/mes), y **no se gasta al correr la app en vivo**, solo al construir/iterar en el editor. Conclusión: no hay decisión de costo que tomar aquí — ya está pagada, úsala sin preocuparte de un gasto aparte, a menos que algún mes gastes más de 1,000 créditos (no hay evidencia de que eso haya pasado).

**2. Claude Pro (lo que ya tienes, para resolver errores):** esta sí es una decisión real. Analicé si convenía usar el plan Team o Enterprise en su lugar, "como si fuera una empresa":
   - **Claude Enterprise:** mínimo 20 asientos × $20 USD/asiento/mes = **$400 USD/mes (~$7,032 MXN/mes)**. Solo en ingresos del piloto completo (30 cuentas × $99 MXN) generarías $2,970 MXN/mes — Enterprise solo, sin contar ningún otro costo, ya costaría más del doble de todo lo que factura el piloto. No tiene sentido a este tamaño.
   - **Claude Team:** mínimo 2 asientos × $20-25 USD/asiento/mes = $40-50 USD/mes (~$700-880 MXN/mes). Más razonable que Enterprise, pero sigue pagando un segundo asiento para una segunda persona que, por RR-02, todavía no existe en el equipo.
   - **Claude Pro (lo que ya tienes):** 1 asiento, $20 USD/mes (~$351.60 MXN/mes) — el tamaño correcto para un equipo de una sola persona. **Decisión: se queda Claude Pro en el modelo, no Team ni Enterprise.** El día que contrates a una segunda persona (ver punto 9 de `debilidades-producto-y-como-defenderlas-vigilio.md`, sobre cuándo contratar), ahí sí tendría sentido subir a Team.
   - **Si te preguntan por qué no usas el plan empresarial "para verse más serio":** el tamaño del gasto debe reflejar el tamaño real del equipo, no una aspiración — pagar por 20 asientos cuando solo hay 1 persona sería malgastar presupuesto que hoy no existe, lo mismo que ya rechazaste al no contratar un programador (ver debilidad #9).

**3. Claude Haiku (el clasificador, el motor de la app):** este es el único de los tres que **sí es indispensable para que Vigilio funcione** — sin él no hay clasificación de cargos sospechosos, no hay producto. Ya estaba costeado correctamente ($0.00025 USD/clasificación).

**Resultado del análisis — qué cambió en los números:**
- Bubble bajó de $1,037 a $685.62 MXN/mes (Bubble cambió su estructura de precios — hallazgo independiente de esta conversación, verificado directo en bubble.io/pricing).
- Se agregó Claude Pro como costo nuevo: $351.60 MXN/mes.
- Las dos correcciones casi se cancelan: el costo fijo mensual total pasó de $1,055.75 a $1,055.97 MXN — veintidós centavos de diferencia. El costo por ciclo de aprendizaje pasó de $5,267.63 a $5,267.80 MXN — diecisiete centavos. La inversión inicial pasó de $28,638.15 a $28,638.98 MXN — ochenta y tres centavos.
- **Ninguna conclusión del modelo cambia:** el punto de equilibrio sigue en 12 cuentas (solo operativo) y 38 cuentas (recuperando inversión en 12 meses); el precio cost-plus sigue en ~$492 (a 10 cuentas) y ~$58.53 (a 100 cuentas); el mes de flujo positivo sigue siendo el mes 8; el VPN a 12 meses sigue siendo negativo, prácticamente igual (−$30,221 vs. −$30,218). Los documentos `bom-costo-ia-semana7-vigilio.md`, `matematicas-financieras-bloque4-5-semana7-vigilio.md` y `registro-completo-semana7-para-pagina.md` ya están actualizados con estas cifras.

**Si te preguntan en la presentación "¿cuánto gastas en herramientas de IA para construir Vigilio?":** respuesta honesta y completa — "la IA de Bubble viene incluida gratis en el plan que ya pago; uso Claude Pro ($20 USD/mes) para depurar errores durante el desarrollo; y el motor de la app, Claude Haiku, cuesta fracciones de centavo por clasificación. No uso un plan empresarial de Claude porque sería pagar por un equipo de varias personas que todavía no tengo."

## Referencias (APA-7)

Anthropic. (2026). *Claude pricing*. https://claude.com/pricing

Bubble. (2026). *Pricing — Start free, scale as you grow*. https://bubble.io/pricing

Bubble. (2026). *AI credits*. Bubble Manual. https://manual.bubble.io/help-guides/ai/ai-credits

Focus Digital. (2026). *Subscription churn benchmark report*.

Fundera. (2026). *Average sales cycle and conversations to close by industry*.

Universe Page. (2026). *Freelance developer rates in Mexico*.
