---
title: "Modelo financiero actualizado — con Belvo en producción (27-nov-2026)"
fecha: "27-nov-2026"
---

# Modelo financiero de Vigilio — cifras reales actualizadas

Reemplaza las cifras viejas que asumían Belvo Sandbox ($0). Usa este documento para actualizar tu presentación y tu página.

---

## 1. Costo fijo mensual — CAMBIÓ

| Componente | Costo/mes |
|---|---|
| Bubble Starter | $685.62 MXN |
| Claude Pro | $351.60 MXN |
| Dominio propio | $18.75 MXN |
| **Belvo producción** (plan Launch, real, no Sandbox) | **$17,580.00 MXN** |
| **TOTAL COSTO FIJO MENSUAL** | **$18,635.97 MXN** |

(Antes: $1,055.97 MXN — asumía Belvo Sandbox gratis, que no sirve para cuentas reales.)

---

## 2. Margen de contribución, CAC, LTV, payback — NO CAMBIAN

Estos son datos **por cliente individual** — dependen del precio y del costo variable por cuenta, no del costo fijo total del negocio. Por eso Belvo en producción (que es un costo fijo, no variable) no los mueve:

| Dato | Valor | Fórmula |
|---|---|---|
| Precio de suscripción | $99.00 MXN/mes | — |
| Costo variable por cuenta | $7.38 MXN/mes | IA ($0.13) + Stripe ($7.25) |
| **Margen de contribución** | **$91.62 MXN/cuenta/mes** | $99 − $7.38 |
| Churn mensual (supuesto) | 5.63% | Focus Digital (2026) |
| Vida media del cliente | 17.76 meses | 1 ÷ 0.0563 |
| **LTV** | **$1,627.23 MXN** | $91.62 × 17.76 |
| **CAC** | **$500.00 MXN** | 5 conversaciones × 0.5h × $200/h |
| **LTV ÷ CAC** | **3.25** | $1,627.23 ÷ $500 |
| **Payback** | **5.46 meses** | $500 ÷ $91.62 |

**Por qué no cambian:** Belvo en producción es un costo fijo — se paga igual con 1 o con 200 clientes. El CAC, el LTV y el payback miden la rentabilidad de UN cliente marginal, que no carga ese costo fijo directamente.

---

## 3. Punto de equilibrio — CAMBIÓ (el número más importante a memorizar)

| Punto de equilibrio | Fórmula | Resultado |
|---|---|---|
| **Solo operativo** | $18,635.97 ÷ $91.62 | **204 cuentas pagando** |
| **Recuperando inversión inicial en 12 meses** | ($18,635.97 + $2,386.58) ÷ $91.62 | **230 cuentas pagando** |

(Antes: 12 y 38 cuentas respectivamente.)

**Lectura:** el piloto de 20-30 familias va a operar en pérdida necesariamente mientras dure, porque Belvo cuesta lo mismo con 20 que con 200 cuentas. Pero 204-230 cuentas SÍ caen dentro de tu propia meta de año 1-2 (300-600 hogares) — es la escala real donde el negocio se sostiene solo.

---

## 4. Inversión inicial — NO CAMBIA

**$28,638.98 MXN** (5 ciclos de aprendizaje + seguridad/cumplimiento de datos) — gasto único de desarrollo, no incluye la suscripción mensual de Belvo.

---

## 5. Precio cost-plus — CAMBIÓ (hallazgo nuevo, importante)

| | A 10 cuentas | A 100 cuentas |
|---|---|---|
| Costo variable (IA + Stripe) | $7.38 MXN | $7.38 MXN |
| Costo fijo compartido ($18,635.97 ÷ N) | $1,863.60 MXN | $186.36 MXN |
| Recuperación de inversión compartida ($2,386.58 ÷ N) | $238.66 MXN | $23.87 MXN |
| **Costo total mensual por cuenta** | **$2,109.64 MXN** | **$217.61 MXN** |
| **Precio cost-plus (margen 40%)** | **$2,953.49 MXN/mes** | **$304.65 MXN/mes** |

(Antes: $492.29 a 10 cuentas, $58.53 a 100 cuentas.)

**El hallazgo nuevo:** antes, a 100 cuentas el cost-plus caía POR DEBAJO de tu precio validado ($99) — ahora, con Belvo real, el cost-plus a 100 cuentas pide $304.65, muy por ARRIBA de $99. Resolviendo la ecuación: **tu precio de $99 solo se justifica por costos (margen 40%) a partir de ~332 cuentas pagando** — número que cae justo dentro de tu meta de año 1-2 (300-600 hogares). Es un argumento más fuerte de lo que pensabas: tu precio de $99 no es barato porque sí — es barato HOY porque estás chico, y se vuelve sostenible por costos exactamente en la escala a la que apuntas, no antes ni mucho después.

---

## 6. Flujo de caja proyectado a 12 meses — CAMBIÓ (ya no se vuelve positivo en el año 1)

Mismo supuesto de adopción que antes (0 cuentas meses 1-3, ritmo de conversión real a partir del mes 4, llegando a 25 cuentas en el mes 12):

| Mes | Cuentas pagando | Ingreso | Costo | Flujo neto del mes | Acumulado |
|---|---|---|---|---|---|
| 0 | — | — | $28,638.98 (inversión inicial) | — | −$28,638.98 |
| 1 | 0 | $0.00 | $18,635.97 | −$18,635.97 | −$47,274.95 |
| 2 | 0 | $0.00 | $18,635.97 | −$18,635.97 | −$65,910.92 |
| 3 | 0 | $0.00 | $18,635.97 | −$18,635.97 | −$84,546.89 |
| 4 | 2 | $198.00 | $18,650.73 | −$18,452.73 | −$102,999.62 |
| 5 | 4 | $396.00 | $18,665.49 | −$18,269.49 | −$121,269.11 |
| 6 | 7 | $693.00 | $18,687.63 | −$17,994.63 | −$139,263.74 |
| 7 | 10 | $990.00 | $18,709.77 | −$17,719.77 | −$156,983.51 |
| 8 | 14 | $1,386.00 | $18,739.29 | −$17,353.29 | −$174,336.80 |
| 9 | 18 | $1,782.00 | $18,768.81 | −$16,986.81 | −$191,323.61 |
| 10 | 21 | $2,079.00 | $18,790.95 | −$16,711.95 | −$208,035.56 |
| 11 | 23 | $2,277.00 | $18,805.71 | −$16,528.71 | −$224,564.27 |
| 12 | 25 | $2,475.00 | $18,820.47 | −$16,345.47 | −$240,909.74 |

**El flujo mensual NO se vuelve positivo en ningún mes del año 1** (antes se volvía positivo en el mes 8). Con Belvo en producción, el costo fijo mensual (~$18,600-18,820 MXN) es tan grande frente a los ingresos de un piloto chico (máximo $2,475 MXN/mes al mes 12) que ningún mes del piloto genera más de lo que consume.

**Acumulado al mes 12: −$240,909.74 MXN** (antes: −$29,949.74 MXN).

---

## 7. VPN a 12 meses — CAMBIÓ

Misma tasa de descuento (15% anual, ≈1.1715% mensual equivalente):

**VPN a 12 meses = −$225,958.42 MXN** (antes: −$30,221.36 MXN).

**Lectura honesta:** el proyecto, operando con cuentas reales desde el día uno del piloto, requiere financiamiento externo (inversión, beca, subsidio, o patrocinio) de un orden de magnitud mucho mayor al que el modelo anterior sugería — no es solo "recuperar la inversión toma más de 12 meses", es que el piloto en sí mismo, a la escala de 20-30 familias, no se paga ni de lejos con sus propios ingresos. Esto es consistente con el punto de equilibrio de 204-230 cuentas: un piloto de validación de 20-30 cuentas, por diseño, nunca se acerca a esa escala — el piloto existe para validar el modelo, no para operar sin pérdida.

---

## 8. Tamaño de mercado — de dónde salen las cifras

**14.5 millones (TAM — adultos mayores "protegibles"):**
1. Parte de **17.1 millones de adultos de 60+ años en México en 2025** (Conapo, citado en Radio y Televisión de Guerrero, 2025) — 12.8% de la población total.
2. Se multiplica por un supuesto de que **~85% tiene al menos un hijo/a adulto vivo**. No hay una cifra mexicana oficial exacta para esto, pero sí respaldo académico indirecto: el Mexican Health and Aging Study (MHAS, Ola 3, 2012) reporta que entre adultos de 75+ años, solo ~4% no tuvo hijos (Monroy-Gómez-Franco & Vélez-Grajales, 2015) — es decir, ~96% sí tuvo al menos uno. El 85% usado es, por tanto, un supuesto conservador, no inflado.
3. 17.1M × 85% ≈ **14.5 millones**.

**2.05 millones (SAM — adultos mayores alcanzables, bancarizados, que calzan el perfil):**

Se le aplican 3 filtros a los 14.5 millones, uno tras otro:

| Filtro | % | Fuente |
|---|---|---|
| Población urbana | ~80% | Estimación aproximada de uso común (INEGI) — no verificada específicamente para 60+ |
| Con cuenta bancaria formal | 63.0% | Encuesta Nacional de Inclusión Financiera (ENIF), INEGI/CNBV, 2024 — dato no desagregado para 60+ específicamente |
| Nivel socioeconómico AB/C+ (con ingreso para pagar $99/mes) | ~28% | Estimación — no es un dato AMAI verificado hoy |

14.5M × 0.80 × 0.63 × 0.28 ≈ **2.05 millones**.

**Honestidad sobre estos supuestos (dilo así si te presionan):** de los tres filtros, solo el de bancarización (63%) sale de una encuesta real (ENIF 2024); los de población urbana (80%) y nivel socioeconómico (28%) son estimaciones razonadas, no cifras oficiales exactas para adultos mayores. El punto de partida (Conapo, 17.1M) sí es un dato duro.

**300 a 600 hogares (SOM — meta real año 1-2):** NO sale de los 2.05 millones — se calculó aparte, de abajo hacia arriba, desde la zona metropolitana Puebla-Tlaxcala (2.7 millones de habitantes, Ambas Manos/INEGI 2025), aplicando el mismo 12.8% de 60+ (~345,600 adultos mayores) y los mismos filtros de bancarización/NSE (~60,800 alcanzables en Puebla), con una penetración de lanzamiento conservadora de 0.5%-1% típica de un MVP solo-fundador.

---

## 9. ¿Cuándo se vuelve positivo el flujo mensual y el VPN? (proyección extendida más allá del piloto)

**Importante — esto YA NO es dato validado, es una proyección razonada** que extiende el crecimiento más allá de lo que tu piloto mide (que solo llega a 25 cuentas al mes 12). Se construyó así: de mes 13 a 24, se asume un crecimiento lineal desde 25 cuentas hasta 456 (el punto medio de tu propia meta SOM de 304-608 hogares para año 1-2); de ahí en adelante, se asume que el negocio se estabiliza en 456 cuentas (una meseta, no sigue creciendo).

- **El flujo MENSUAL se vuelve positivo en el mes 17** (con ~205 cuentas, cruzando tu punto de equilibrio de 204).
- **El VPN acumulado se vuelve positivo hasta el mes 36** (3 años) — porque el VPN no solo necesita que el mes sea positivo, necesita generar suficiente ganancia acumulada (descontada) para pagar los ~$225,958 MXN de déficit que ya traes acumulado hasta el mes 12.

**No te aprendas "mes 36" como un hecho — apréndete la lógica:** "mi flujo mensual se vuelve positivo relativamente rápido después del piloto (una vez que cruzo ~204 cuentas), pero el VPN —que carga todo el déficit acumulado del arranque— tarda más, alrededor de 3 años bajo un supuesto de crecimiento razonable, no validado todavía." Si te preguntan el "mes 36" exacto, acláralo: es una proyección con un supuesto de crecimiento que tú mismo construiste para esta pregunta, no un dato ya medido.

---

## 10. ¿Para qué sirve el VPN y cómo se compara con tus otros datos?

**Qué es:** el Valor Presente Neto suma TODOS los flujos de caja futuros del proyecto completo, descontados a su valor de hoy (un peso dentro de un año vale menos que un peso hoy, por eso se "descuenta"), y le resta la inversión inicial. Si el resultado es positivo, el proyecto crea valor por encima de lo que costaría tu dinero invertido en otro lado (tu costo de oportunidad, aquí 15% anual); si es negativo, destruye valor — al menos dentro del horizonte de tiempo que mides.

**Cómo se compara con tus otros indicadores (cada uno mide algo distinto, no son lo mismo):**

| Indicador | Qué mide | Alcance |
|---|---|---|
| CAC, LTV, payback | La rentabilidad de UN cliente individual | Un cliente marginal, no el negocio completo |
| Punto de equilibrio | Cuántos clientes necesitas HOY, este mes, para no perder dinero | Un mes, una foto, no el tiempo acumulado |
| Flujo de caja mensual | Si ESTE mes entra más dinero del que sale | Un mes a la vez |
| **VPN** | **Si TODO el proyecto, sumando todos los meses y descontando el tiempo, vale la pena como inversión completa** | **Todo el horizonte evaluado, de principio a fin** |

El VPN es el más completo de los cuatro porque integra escala (cuántos clientes), tiempo (cuándo llega cada peso) y costo de oportunidad (qué perdiste por no invertir ese dinero en otra cosa) — los demás solo ven una rebanada del problema.

---

## 11. "¿Es real que puedas alcanzar 300-600 hogares en año 1-2?"

**Por qué sí es defendible:**

1. **No sale del mercado nacional gigante** — se calculó de abajo hacia arriba, solo para Puebla-Tlaxcala: 2.7 millones de habitantes (Ambas Manos/INEGI, 2025) → 12.8% de 60+ ≈ 345,600 adultos mayores → filtrado por bancarización y NSE (17.6%) ≈ 60,800 alcanzables en Puebla → penetración de 0.5%-1% = 304 a 608 hogares.
2. **Tu propia evidencia de campo ya es más alta que tu supuesto:** 3 de 9 entrevistados (≈33%) dijeron que pagarían directamente — muy por encima del 0.5-1% que usas para proyectar. Tu supuesto es conservador frente a tu propio dato, no inflado (con la honestidad de que 9 entrevistas es una muestra chica, probablemente de 2-3 núcleos familiares, no representativa de todo el mercado).
3. **Referencia general de la industria (heurística, no dato duro):** el rango comúnmente citado para startups en etapa temprana es capturar 1%-5% de su mercado alcanzable en los primeros 1-3 años (startupshortcut.com, 2026 — sin fuente primaria citada). Tu 0.5-1% está por debajo incluso de ese rango ya conservador.

**Cómo argumentarlo:**
> "Sí, porque no lo calculé desde el mercado nacional gigante — lo calculé desde abajo, solo para Puebla-Tlaxcala: 60,800 adultos mayores bancarizados alcanzables ahí, con una penetración de apenas 0.5% a 1%, más conservadora que el rango típico de 1% a 5% que usan otros emprendimientos en etapa temprana, y mucho más conservadora que el 33% de disposición a pagar que ya vi directo en mis propias entrevistas."

---

## Referencias (APA-7)

Secretaría de Gobernación / Cámara de Diputados. (2011). *Reglamento de la Ley Federal de Protección de Datos Personales en Posesión de los Particulares*. Diario Oficial de la Federación.

Belvo. (2026). *Plans and pricing*. https://belvo.com/plans-and-pricing/

Radio y Televisión de Guerrero. (2025). *México, un país que envejece: 17.1 millones de adultos mayores en 2025*. https://rtg.com.mx/mexico-un-pais-que-envejece-17-1-millones-de-adultos-mayores-en-2025/

Monroy-Gómez-Franco, L. A., & Vélez-Grajales, R. (2015). Family size and old-age wellbeing: Effects of the fertility transition in Mexico. *Ageing & Society*, *37*(3), 495-516. https://pmc.ncbi.nlm.nih.gov/articles/PMC5321659/

Instituto Nacional de Estadística y Geografía / Comisión Nacional Bancaria y de Valores. (2024). *Encuesta Nacional de Inclusión Financiera (ENIF) 2024*.

Ambas Manos. (2025). *Zona metropolitana Puebla-Tlaxcala es la cuarta con más habitantes en el país*. https://www.ambasmanos.mx/puebla/zona-metropolitana-puebla-tlaxcala-es-la-cuarta-con-mas-habitantes-en-el-pais/205964/

Startup Shortcut. (2026). *The ultimate guide to startup market sizing: TAM, SAM, and SOM explained*. https://startupshortcut.com/knowledge-base/the-ultimate-guide-to-startup-market-sizing-tam-sam-and-som-explained
