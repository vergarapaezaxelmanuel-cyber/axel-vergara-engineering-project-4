---
layout: default
nav_exclude: true
search_exclude: true
title: Matemáticas financieras (Bloque 4-5) — Semana 7 (Vigilio)
---

# Matemáticas financieras — Bloque 4 y Bloque 5

Corresponde a los Bloques 4 (matemáticas financieras) y 5 (taller del modelo económico) de Semana 7, deferidos a esta sesión. El material del curso asume un producto de hardware + software (BOM, recuperación de hardware en 12 meses, sensor agrícola). Vigilio no tiene hardware — la adaptación reemplaza "recuperación del costo del hardware" por "recuperación de la inversión en desarrollo" (los ciclos de aprendizaje + seguridad y cumplimiento ya calculados en `bom-costo-ia-semana7-vigilio.md`), manteniendo intactas las fórmulas del curso.

**Actualización 25-nov-2026:** se corrigió el precio de Bubble (bajó de $1,037 a $685.62 MXN/mes, Bubble cambió su estructura de planes) y se agregó un costo fijo mensual que no estaba documentado — Claude Pro ($351.60 MXN/mes), el asistente que Axel usa para depurar errores durante el desarrollo. Las dos correcciones casi se cancelan entre sí (el total fijo mensual sube de $1,055.75 a solo $1,055.97 MXN, veintidós centavos de diferencia) — por eso ninguna conclusión de este documento cambia de forma material; se actualizan las cifras por precisión, no porque algo se haya roto. Detalle completo de ambas correcciones en `bom-costo-ia-semana7-vigilio.md` y en `notas-financieras-internas-vigilio.md`.

## 1. Flujo de caja operativo — adaptado a Vigilio

El curso define: Flujo de caja operativo = Entradas de efectivo − Salidas de efectivo, con entradas de "ventas de hardware + suscripciones activas". Vigilio no vende hardware, así que:

- **Entradas:** únicamente suscripciones activas (cuentas pagando $99 MXN/mes, el precio ya validado por entrevista).
- **Salidas:** costos fijos operativos mensuales (Bubble, Claude Pro, dominio) + costos variables por cuenta (clasificador de IA + comisión de Stripe) + la inversión inicial de desarrollo, que se paga una sola vez, no cada mes.

**Costos variables por cuenta/mes** (lo que cuesta cada cuenta adicional, no importa cuántas tengas) — **sin cambios**, no dependen de Bubble ni de Claude Pro:

| Componente | Costo |
|---|---|
| Clasificador de IA (Claude Haiku 5.5) | $0.13 MXN/cuenta/mes |
| Canal de cobro (Stripe México) | $7.25 MXN/cuenta/mes |
| **Total variable** | **$7.38 MXN/cuenta/mes** |

**Costos fijos operativos mensuales** (no cambian con el número de cuentas, dentro de la capacidad del piloto) — **actualizado 25-nov-2026**:

| Componente | Costo |
|---|---|
| Bubble Starter ($39 USD/mes — corregido, antes $1,037 MXN de un precio ya desactualizado) | $685.62 MXN/mes |
| Claude Pro (asistente de desarrollo/depuración — nuevo) | $351.60 MXN/mes |
| Dominio propio, prorrateado ($225/año ÷ 12) | $18.75 MXN/mes |
| **Total fijo mensual** | **$1,055.97 MXN/mes** (antes: $1,055.75 MXN/mes) |

**Inversión inicial** (se paga una sola vez, no es un costo mensual — el equivalente de "recuperar el hardware" en un producto software) — **actualizado**:

| Componente | Costo |
|---|---|
| Personal — ciclos de aprendizaje (5 ciclos, escenario promedio, incluye Bubble y Claude Pro prorrateados) | $26,338.98 MXN |
| Seguridad y cumplimiento de datos | $2,300.00 MXN |
| **Total inversión inicial** | **$28,638.98 MXN** (antes: $28,638.15 MXN) |

## 2. Margen de contribución y punto de equilibrio

Margen de contribución = Precio de venta − Costo variable por unidad = $99 − $7.38 = **$91.62 MXN/cuenta/mes**. (Sin cambios — no depende de Bubble ni Claude Pro.)

**Punto de equilibrio (solo costos operativos, sin recuperar la inversión):**

Punto de equilibrio = Costos fijos / Margen de contribución = $1,055.97 / $91.62 = 11.53 → **12 cuentas pagando**. (Sin cambio frente a la cifra anterior — sigue siendo 12.)

Esto sí es alcanzable: cae dentro del rango de piloto ya definido (RD-04: 20-30 cuentas).

**Punto de equilibrio recuperando la inversión inicial en 12 meses** (tratando los $28,638.98 MXN como si fueran "hardware a recuperar", igual que el método del curso):

Cuota mensual de recuperación = $28,638.98 / 12 = $2,386.58 MXN/mes
Costos fijos totales (con recuperación) = $1,055.97 + $2,386.58 = $3,442.55 MXN/mes
Punto de equilibrio = $3,442.55 / $91.62 = 37.57 → **38 cuentas pagando**. (Sin cambio — sigue siendo 38.)

**Este número no es alcanzable dentro del piloto mismo** — excede el techo de 30 cuentas que el propio proyecto se fijó (RD-04). No es una señal de que el modelo esté roto; es una señal de que recuperar la inversión de desarrollo en 12 meses *solo con la escala del piloto* no es realista — el piloto está diseñado para validar el producto, no para ser rentable todavía.

## 3. Precio de venta — dos métodos, adaptados

### Método 1 — Cost-plus, a dos escalas

No hay "Paso 1 — costo unitario del hardware" porque no hay hardware. El "Paso 2" del curso (precio mínimo de suscripción) se calcula directamente, y aquí se muestra a dos escalas para que se vea cómo cambia con el volumen — el mismo ejercicio que pide el Bloque 5 ("a volumen de 10" y "a volumen de 100"). **Actualizado 25-nov-2026, cifras prácticamente idénticas a las anteriores:**

| | A 10 cuentas | A 100 cuentas |
|---|---|---|
| Costo variable (IA + Stripe) | $7.38 MXN | $7.38 MXN |
| Costo fijo compartido ($1,055.97 ÷ N) | $105.60 MXN | $10.56 MXN |
| Recuperación de inversión compartida ($2,386.58 ÷ N) | $238.66 MXN | $23.87 MXN |
| **Costo total mensual por cuenta** | **$351.64 MXN** | **$41.81 MXN** |
| **Precio cost-plus (margen 40%)** | **$492.29 MXN/mes** | **$58.53 MXN/mes** |

La diferencia es el hallazgo central de este bloque: a 10 cuentas, el cost-plus pide casi 5 veces el precio ya validado ($99 MXN/mes); a 100 cuentas, el cost-plus cae muy por debajo de $99 MXN/mes. No es que el modelo no funcione — es que a la escala diminuta del piloto, los costos fijos y la inversión de desarrollo se reparten entre muy pocas cuentas. El negocio cierra con volumen, no con precio.

### Método 2 — Value-based pricing

Usando el caso real más fuerte de tu propia validación (`descripcion-negocio-vigilio.md`): una entrevistada acumuló $8,500 MXN en cargos "hormiga" sin detectarlos durante meses. Tomando esa cifra como ancla de pérdida evitada por año (un solo caso, no un promedio estadístico — se flaguea como tal) y aplicando el mismo 10% de captura de valor que usa el ejemplo del sensor agrícola del curso:

Valor anual capturado = $8,500 × 10% = $850 MXN/año
Precio mensual equivalente (techo) = $850 ÷ 12 = **$70.83 MXN/mes**

**Nota honesta:** este techo de value-based ($70.83 MXN/mes) sale *por debajo* del precio ya validado por entrevista ($99 MXN/mes) — lo opuesto de lo que pasa en el ejemplo del sensor agrícola del curso, donde el value-based da el techo más alto. Esto no invalida el precio de $99: la cifra de $8,500 MXN es un solo caso extremo, no un promedio confiable de "pérdida evitada típica", así que este cálculo es más débil que la evidencia real de disposición a pagar (dos entrevistadas mencionaron $99 MXN de forma espontánea). Se incluye el método porque el curso lo pide, no porque deba reemplazar la evidencia primaria ya validada.

### Precio recomendado

**$99 MXN/mes**, el ya validado por entrevista — no el cost-plus de piloto (que pide demasiado por la escala pequeña) ni el value-based de un solo caso (que pide muy poco por ser una muestra débil). El precio real vive, como dice el propio material, entre el piso y el techo — y en este caso, la evidencia de campo ya identificó ese punto antes que cualquier fórmula.

## 4. Flujo de caja proyectado a 12 meses

Supuesto de adopción (marcado como estimación razonada, no dato cerrado): ningún cliente paga en los primeros 3 meses (tiempo de ajustar el clasificador con los ciclos de aprendizaje); a partir del mes 4 empiezan las conversiones reales conforme se detectan los primeros problemas, llegando a la capacidad de piloto (25 cuentas, punto medio de 20-30) en el mes 12. **Tabla recalculada 25-nov-2026 con los costos fijos corregidos** (las diferencias frente a la tabla anterior son de unos cuantos pesos por mes, ninguna conclusión cambia):

| Mes | Cuentas pagando | Ingreso | Costo | Flujo neto del mes | Acumulado |
|---|---|---|---|---|---|
| 0 | — | — | $28,638.98 (inversión inicial) | — | −$28,638.98 |
| 1 | 0 | $0.00 | $1,055.97 | −$1,055.97 | −$29,694.95 |
| 2 | 0 | $0.00 | $1,055.97 | −$1,055.97 | −$30,750.92 |
| 3 | 0 | $0.00 | $1,055.97 | −$1,055.97 | −$31,806.89 |
| 4 | 2 | $198.00 | $1,070.73 | −$872.73 | −$32,679.62 |
| 5 | 4 | $396.00 | $1,085.49 | −$689.49 | −$33,369.11 |
| 6 | 7 | $693.00 | $1,107.63 | −$414.63 | −$33,783.74 |
| 7 | 10 | $990.00 | $1,129.77 | −$139.77 | −$33,923.51 |
| 8 | 14 | $1,386.00 | $1,159.29 | **+$226.71** | −$33,696.80 |
| 9 | 18 | $1,782.00 | $1,188.81 | +$593.19 | −$33,103.61 |
| 10 | 21 | $2,079.00 | $1,210.95 | +$868.05 | −$32,235.56 |
| 11 | 23 | $2,277.00 | $1,225.71 | +$1,051.29 | −$31,184.27 |
| 12 | 25 | $2,475.00 | $1,240.47 | +$1,234.53 | −$29,949.74 |

**El flujo mensual se vuelve positivo en el mes 8** — a partir de ahí, cada mes genera más efectivo del que consume. (Sin cambio — sigue siendo el mes 8.) **Pero la inversión inicial no se recupera dentro de los 12 meses** del piloto — al mes 12 sigue faltando por recuperar casi $30,000 MXN. Esto es consistente con el punto de equilibrio de 38 cuentas calculado arriba: el piloto, topado en 25-30 cuentas, nunca llega a ese número por diseño.

## 5. VPN a 12 meses

Con una tasa de descuento del 15% anual (costo de oportunidad razonable para un emprendedor en México, como indica el propio material), convertida a tasa mensual equivalente: (1.15)^(1/12) − 1 ≈ 1.1715% mensual.

VPN = −$28,638.98 + Σ (flujo neto del mes t / (1.011715)^t), para t = 1 a 12

**VPN a 12 meses = −$30,221.36 MXN** (antes: −$30,218.08 MXN — diferencia de $3.28, inmaterial).

El proyecto **no crea valor todavía dentro del horizonte de 12 meses** — es un VPN negativo. Esto es esperado y no es una señal de alarma: un piloto académico de validación de mercado, topado deliberadamente en 20-30 cuentas, no está diseñado para ser rentable en un año. Lo sería si el horizonte o la escala cambiaran, como se ve en la sección de palancas.

## 6. Modelo económico — resumen en el formato del curso

```
════════════════════════════════════════════════════════
MODELO ECONÓMICO (actualizado 25-nov-2026)
Producto: Vigilio · Modelo de ingresos: Freemium B2C ($99 MXN/mes,
pagado por el hijo/a cuidador)
════════════════════════════════════════════════════════

COSTO UNITARIO (mensual por cuenta, no hay costo unitario de
hardware porque Vigilio es software-only)
A 10 cuentas: $351.64 MXN · A 100 cuentas: $41.81 MXN
Componente de mayor costo: la recuperación de la inversión de
desarrollo compartida (68% del costo a 10 cuentas; 57% a 100 cuentas)
El costo de la IA representa: 0.3% a 2.1% del costo unitario total
(insignificante a cualquier escala)

PRECIO DE VENTA
Cost-plus (40%): $492.29 MXN/mes (a 10 cuentas) — $58.53 MXN/mes
(a 100 cuentas)
Value-based: hasta $70.83 MXN/mes (ancla de un solo caso, débil)
Precio recomendado: $99 MXN/mes — por qué: ya validado por entrevista
real; el cost-plus de piloto pide de más por la escala pequeña, el
value-based pide de menos por apoyarse en un solo caso

PUNTO DE EQUILIBRIO
Unidades necesarias (solo operativo): 12 cuentas — ✅ alcanzable
dentro del piloto (20-30 cuentas, RD-04)
Unidades necesarias (recuperando inversión en 12 meses): 38 cuentas
— ❌ no alcanzable dentro del piloto, excede su propio techo

FLUJO DE CAJA (resumen)
Mes de flujo mensual positivo: mes 8
Inversión acumulada sin recuperar al mes 12: $29,949.74 MXN

VPN A 12 MESES (tasa 15%)
VPN = −$30,221.36 MXN → Proyecto marginalmente viable dentro del
horizonte del piloto (flujo mensual ya es positivo desde el mes 8;
la inversión total se recupera después del mes 12, no dentro de él)

────────────────────────────────────────────────────────
ALERTAS:
El costo de la IA NO destruye el margen — es irrelevante (menos del
2% del costo unitario a cualquier escala). El problema real es la
dilución de costos fijos y de la inversión de desarrollo entre muy
pocas cuentas: el cost-plus a escala de piloto pide hasta 5 veces el
precio ya validado por el mercado. Subir el precio no es la solución
correcta — el precio de $99 MXN/mes ya está validado con evidencia
real; subirlo sin más evidencia arriesga esa validación. El verdadero
cuello de botella es el volumen, no el precio ni el costo operativo.

PALANCAS DISPONIBLES:
1. Escalar más allá del piloto hacia el SOM ya proyectado (304-608
   hogares) — a esa escala el cost-plus cae muy por debajo de $99
   MXN/mes y la inversión se recupera en semanas, no en años.
2. Extender el horizonte de recuperación de la inversión más allá de
   12 meses — razonable para un proyecto donde ~74% del costo de
   desarrollo es solo horas de tiempo propio, no efectivo gastado.
3. No tocar el precio de $99 MXN/mes — es la variable mejor validada
   del proyecto; las otras dos palancas (volumen y horizonte) son las
   que de verdad cierran la aritmética, no el precio.
```

## 7. Ejercicios de valor del dinero en el tiempo, VPN y TIR

Estos son ejercicios genéricos del material del curso (no específicos de Vigilio) — se resuelven paso a paso con las fórmulas ya dadas.

**Ejercicio 1 — VF con capitalización trimestral**

$45,000 USD, 7.5% anual capitalizable trimestralmente, 5 años y 6 meses (22 trimestres).

i trimestral = 7.5% ÷ 4 = 1.875%
VF = $45,000 × (1 + 0.01875)^22 = **$67,717.39 USD**

**Ejercicio 2 — VP de una obligación futura**

Pagar $125,000 MXN en 48 meses, tasa 12% anual compuesto mensualmente.

i mensual = 12% ÷ 12 = 1%
VP = $125,000 ÷ (1.01)^48 = **$77,532.55 MXN**

**Ejercicio 3 — Flujos mixtos irregulares**

Flujos: Año 1 = $10,000; Año 3 = $15,000; Año 5 = $8,000. Tasa 9%.

```
VP = 10,000/1.09¹ + 15,000/1.09³ + 8,000/1.09⁵
   = 9,174.31 + 11,582.75 + 5,199.45
   = $25,956.52
```

**Ejercicio 4 — VPN con flujos constantes (anualidad)**

InnovaTech invierte $250,000 USD, genera $60,000 USD/año por 6 años, tasa 11%.

VPN = −$250,000 + $60,000 × [(1 − 1.11⁻⁶) ÷ 0.11] = **+$3,832.27 USD**

TIR > 11% (VPN positivo pero ajustado) → **Viable**, aunque con margen de maniobra estrecho — un pequeño aumento en la tasa de descuento lo volvería inviable.

**Ejercicio 5 — VPN con flujos variables**

Inversión $50,000 USD. Flujos: Año 1 $7,500; Año 2 $12,000; Año 3 $20,000; Año 4 $25,000. Tasa 4%.

```
VPN = −50,000 + 7,500/1.04 + 12,000/1.04² + 20,000/1.04³ + 25,000/1.04⁴
    = −50,000 + 7,211.54 + 11,094.67 + 17,779.93 + 21,370.10
    = +$7,456.24 USD
```

**Viable.**

**Ejercicio 6 — VPN con valor residual**

Maquinaria: inversión $1,000,000 USD. Flujos: Año 1 $300K; Año 2 $350K; Año 3 $375K; Año 4 $300K + valor de salvamento $150K ($450K total). Tasa 10%.

```
VPN = −1,000,000 + 300,000/1.1 + 350,000/1.1² + 375,000/1.1³ + 450,000/1.1⁴
    = −1,000,000 + 272,727.27 + 289,256.20 + 281,743.05 + 307,356.05
    = +$151,082.58 USD
```

**Viable**, y con margen amplio — el valor de salvamento aporta una parte importante del VPN positivo.

**Ejercicio 7 — Comparación de proyectos X vs. Y**

Inversión inicial $50,000 ambos, tasa 8%.

| Año | Proyecto X | Proyecto Y |
|---|---|---|
| 1 | $25,000 | $10,000 |
| 2 | $25,000 | $20,000 |
| 3 | $25,000 | $45,000 |

```
VPN X = −50,000 + 25,000/1.08 + 25,000/1.08² + 25,000/1.08³ = $14,427.42
VPN Y = −50,000 + 10,000/1.08 + 20,000/1.08² + 45,000/1.08³ = $12,128.49
```

**El Proyecto X es más rentable** ($14,427.42 vs. $12,128.49), aunque entrega el mismo total nominal ($75,000 en ambos) — X gana porque reparte los flujos antes en el tiempo, y un peso antes vale más que un peso después.

**Ejercicio 8 — Análisis de sensibilidad**

Proyecto X (inversión $50,000, flujos $25,000 × 3 años), variando la tasa de descuento:

| Tasa | VPN | Decisión |
|---|---|---|
| 8% | $14,427.42 | Viable |
| 15% | $7,080.63 | Viable |
| 20% | $2,662.04 | Viable |
| 25% | −$1,200.00 | No viable |

El proyecto deja de ser viable entre el 20% y el 25% de tasa de descuento — su TIR real está en ese rango (≈24%). Como señala el propio material: un emprendedor con acceso a crédito al 20% todavía lo aceptaría; uno con costo de capital de 25% ya no debería.

**Ejercicio 9 — TIR por interpolación lineal (ya resuelto en el material; verificación)**

El material ya trae este ejercicio resuelto como ejemplo del método (Global Solutions, inversión $500,000 USD, flujos $180K/$200K/$190K/$170K, costo de capital 14%, TIR interpolada ≈18.2%). Se verificó con cálculo exacto (búsqueda de raíz, no interpolación lineal): **TIR real ≈ 17.95%** — muy cercano al 18.2% del material, con la pequeña diferencia esperada porque la interpolación lineal es una aproximación, no el valor exacto. Confirma que el método del material es correcto y que 18.2% es una aproximación razonable, no un error.

## Referencias (APA-7)

Anthropic. (2026). *Claude pricing*. https://claude.com/pricing

Bubble. (2026). *Pricing — Start free, scale as you grow*. https://bubble.io/pricing

Vergara Páez, A. (2026). *Resultados de validación — entrevistas Semana 3* [Documento de proyecto, Vigilio]. Ibero Puebla.
