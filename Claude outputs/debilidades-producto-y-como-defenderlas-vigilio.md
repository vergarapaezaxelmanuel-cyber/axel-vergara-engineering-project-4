---
title: "Temas débiles de Vigilio y cómo defenderlos en la presentación (documento interno, NO para la página)"
fecha: "25-nov-2026 (actualizado 27-nov-2026: versión condensada para repaso rápido + cifras clave al inicio)"
---

# Temas débiles de Vigilio — qué falta, por qué es real, y cómo argumentarlo

Junta los huecos genuinos del producto (no los inventa, no los suaviza) con una respuesta corta para cuando te pregunten en vivo. Estructura que se repite en todos: **qué falta → por qué ya lo sabes (evidencia) → qué vas a hacer al respecto**.

---

## 🔢 CIFRAS CLAVE A MEMORIZAR

| Cifra | Valor | Qué significa |
|---|---|---|
| **Punto de equilibrio REAL (solo operativo, con Belvo producción)** | **204 cuentas pagando** | $18,635.97 ÷ $91.62. Cubre Bubble + Claude Pro + dominio + Belvo producción. Por encima del piloto (20-30), dentro de la meta año 1-2 (300-600). |
| **Punto de equilibrio REAL (recuperando inversión en 12 meses)** | **230 cuentas pagando** | $21,022.55 ÷ $91.62. |
| **Precio de suscripción** | **$99 MXN/mes** | Validado por entrevista (2 personas lo dijeron espontáneo), no por fórmula. |
| **Costo variable por cuenta** | **$7.38 MXN/mes** | IA ($0.13) + Stripe ($7.25). |
| **Margen de contribución** | **$91.62 MXN/cuenta/mes** | $99 − $7.38. |
| **Costo fijo mensual REAL (con Belvo producción)** | **$18,635.97 MXN/mes** | Bubble $685.62 + Claude Pro $351.60 + dominio $18.75 + **Belvo producción $17,580.00**. |
| **Inversión inicial total** | **$28,638.98 MXN** | 5 ciclos de aprendizaje ($26,339) + seguridad/cumplimiento ($2,300). |
| **LTV (valor de vida del cliente)** | **$1,627.23 MXN** | Contribución mensual × vida media (17.76 meses, con 5.63% churn). |
| **CAC (costo de adquisición)** | **$500 MXN** | 5 conversaciones de venta × 0.5h × $200 MXN/h. |
| **LTV ÷ CAC** | **3.25** | Regla práctica pide ≥3 — cumple, con margen mínimo. |
| **Payback** | **5.46 meses** | $500 ÷ $91.62. |
| **Costo por clasificación (Claude Haiku)** | **$0.00025 USD** (~$0.0044 MXN) | Lo único que cobra por uso real. |
| **Costo Belvo producción (real, el que necesitas para el piloto)** | **$1,000 USD/mes = $17,580 MXN/mes** | Tarifa plana, sin tope de cuentas (igual con 20 que con 200). Sandbox ($0) es solo para pruebas con datos simulados — no sirve para cuentas reales. |
| **Mercado objetivo (TAM personas)** | **14.5 millones** | Adultos mayores "protegibles" en México. |
| **Hogares bancarizados que calzan el perfil** | **2 millones** | Meta real año 1-2: 300-600 hogares en Puebla-Tlaxcala. |

**Sobre "los $1,500 y cachito":** la cifra más cercana en tus documentos es el **LTV de $1,627.23 MXN** (no $1,500 — ojo con la cifra exacta si te preguntan). Es lo que un cliente promedio te deja de contribución a lo largo de toda su vida como suscriptor, antes de dar de baja. Si tenías en mente otra cifra distinta, dime cuál contexto y la busco.

**Sobre el supuesto del 85% ("¿de dónde sacas que casi todo padre/madre tiene un hijo adulto?"), 27-nov-2026:** buscado específicamente porque es el supuesto más frágil del tamaño de mercado. No hay una cifra oficial mexicana de "% de adultos 60+ con al menos un hijo vivo", pero sí hay respaldo académico indirecto y fuerte: el Mexican Health and Aging Study (MHAS, Ola 3, 2012, N=13,102, 50+ años) reporta que entre los adultos de **75 años o más** (nacidos en 1937 o antes), solo **~4% no tuvieron hijos** — es decir, ~96% sí tuvo al menos un hijo (Monroy-Gómez-Franco & Vélez-Grajales, 2015, *Ageing & Society*). Es sobre "hijos nacidos vivos", no exactamente "hijo adulto vivo hoy", y es una cohorte de 75+ (más vieja que tu rango de 60-70), pero como México tenía tasas de fecundidad muy altas en las décadas en que esas personas tuvieron hijos (4.7 a 6.9 hijos en promedio por persona, según la misma fuente), es razonable esperar que la gente que hoy tiene 60-70 años —que tuvo sus hijos en décadas de fecundidad todavía alta— tenga una tasa de "sin hijos" igual de baja o menor. Esto hace que tu supuesto del 85% sea **conservador, no inventado ni inflado** — si acaso, te estás quedando corto.

**Cómo argumentarlo (si preguntan):**
> "No encontré una cifra mexicana exacta de '% de adultos mayores con al menos un hijo', así que usé un supuesto conservador del 85%. Lo que sí encontré, buscando evidencia indirecta, es un estudio académico sobre envejecimiento en México (el Mexican Health and Aging Study) que reporta que entre adultos de 75 años o más, solo el 4% no tuvo hijos — es decir, 96% sí tuvo al menos uno. Mi rango de edad es más joven, de familias con todavía más hijos en promedio por las tasas de fecundidad de esa época, así que mi supuesto del 85% es conservador, no una cifra inventada para que el número se vea bien."

---

## 1. Pedro: ¿cómo sabe el padre/madre qué pasa con su consentimiento ya dado?

**Qué pasó:** Pedro preguntó cómo se entera o revoca el papá/mamá el permiso ya dado — hoy no hay pantalla clara para verlo o gestionarlo. María vivió lo mismo del otro lado: confundió "conectar cuenta nueva" con "ya conectaste, gestiona tu consentimiento aquí". Dos roles distintos, misma falla de diseño.

**Argumentarlo:**
> "Es el hallazgo más repetido de mis 5 pruebas — lo vivieron Pedro y María, desde los dos lados. Ya es el cambio de mayor impacto con menor esfuerzo que prioricé: diferenciar visualmente 'conectar cuenta nueva' de 'gestionar y revocar tu consentimiento'."

---

## 1bis. ¿Tiene sentido que el papá revoque desde la cuenta del hijo?

**Qué pasa:** hoy padre e hijo comparten un solo login (un usuario, dos vistas) — no son cuentas independientes vinculadas por invitación.

**Argumentarlo:**
> "Es una simplificación consciente para construir ambos lados en un semestre, no un error. En producción serían cuentas separadas: el hijo genera un código de invitación, el papá se registra con él, y el sistema crea una relación en la base de datos — mismo patrón que apps de familia compartida. En Bubble: una tabla 'Vínculo' con campos cuenta_hijo/cuenta_padre, código único validado al registrarse. Ya está mapeado, no es una duda abierta."

**En vivo:** no lo expliques mientras haces clic en "Revocar acceso" — solo la frase corta. Guarda esto para el cierre o si preguntan directo.

---

## 2. 0 de 5 completaron la tarea sin ayuda

**Argumentarlo:**
> "0 de 5 es real, no lo suavizo. Pero el SEQ de 4.8/7 dice que no es la app en general — son 2-3 puntos de fricción específicos y repetidos. Ya prioricé los 3 cambios de mayor impacto; el primero resuelve el más repetido."

---

## 3. No hay modo offline / recuperación tras desconexión (por diseño, con ley de por medio)

**Qué pasa:** ni Belvo ni Bubble operan sin internet. RF-06 (reintentar y avisar en vez de fallar en silencio) está documentado, no construido.

**Argumentarlo:**
> "No se me olvidó — es decisión de seguridad. Vigilio no guarda copia del historial bancario de mi papá; se lo pide a Belvo en vivo cada vez. Es lo que exige la LFPDPPP, artículo 45 ('principio de proporcionalidad'): solo procesar los datos necesarios, no duplicar lo que ya resguarda el agregador autorizado. Por eso dependo de internet — es el precio de no acumular datos de más. Y ya tengo documentado en RF-06 el aviso de 'tratando de conectar' como siguiente pieza a construir."

**Wifi de la Ibero (si preguntan):** "me sale advertencia de fraude porque mi dominio es nuevo y los filtros de esa red todavía no lo tienen como confiable — por eso uso datos móviles, no es que el dominio sea privado."

---

## 4. No hay degradación elegante si falla la IA o Belvo (decisión consciente)

**Argumentarlo:**
> "Decidí no construirlo este semestre, por tiempo — prioricé tener ambos roles funcionando de punta a punta. Es la siguiente mejora en la lista, con el costo ya estimado."

---

## 5. Posible bug de login (David) — sin confirmar si sigue activo

**Argumentarlo:**
> "Es el único de los 5 hallazgos que puede ser bloqueo real de acceso, no solo de claridad — prioridad #2 de mi lista. Antes de la demo voy a volver a probar ese flujo para confirmar si sigue ahí."
(Hazlo de verdad antes de presentar.)

---

## 6. Falta decir, visible, que Vigilio no mueve dinero

**Argumentarlo:**
> "Es una sola línea de texto, bajo costo, ya es mi cambio #3 priorizado: dejar explícito en la alerta que Vigilio es de solo lectura y nunca mueve dinero."

---

## 7. T6 (operación continua) — evidencia informal, no prueba de carga formal

**Argumentarlo:**
> "Tengo evidencia informal: 48 horas sin caídas en el entorno real de mis usuarios. No es prueba de carga formal con tráfico simulado — lo digo así, sin inflarlo."

---

## 8. Cero preórdenes pagadas — disposición a pagar basada en entrevistas, no en dinero real

**Argumentarlo:**
> "3 de 9 entrevistados dijeron que pagarían directamente, con $99 surgiendo espontáneo en dos entrevistas distintas — señal fuerte, pero la prueba real es que alguien ponga dinero. Eso es justo lo que mide el piloto de 20 familias que propongo."

---

## 9. "¿Tú solo podrías con todo?"

**Argumentarlo:**
> "No, no podría resolver cualquier problema de programación yo solo — por eso elegí Bubble (no-code) y Claude Code como asistente para el backend. Las fallas de terceros (si Belvo falla, o un bug de Bubble) tampoco las resolvería un programador contratado — son dependencias externas. Contratar a alguien es la siguiente etapa, cuando el piloto ya valide ingresos reales que sostengan ese costo, no antes."

---

## 10. "¿Qué analiza exactamente la IA? ¿Detecta suscripciones no reconocidas?"

**Qué pasa:** el clasificador da hoy un resultado **binario — SOSPECHOSA o NORMAL** — comparando la transacción nueva contra el historial reciente de esa cuenta, no contra una lista fija de "tipos" de fraude. La clasificación de 4 categorías (cargo chico atípico / card-testing / suscripción no reconocida / sin anomalía) está diseñada en la arquitectura pero **no implementada**.

**Argumentarlo:**
> "El clasificador no usa una lista fija de tipos de fraude — compara cada transacción contra el patrón normal de esa cuenta. Por eso un cargo chiquito atípico y una suscripción recurrente que no coincide con el historial caen en la misma lógica: ambos se salen de lo normal, ambos se marcan sospechosos. Hoy el resultado es binario, con una justificación en lenguaje natural que puede nombrar el motivo. Las 4 categorías ya están diseñadas, pero no implementadas todavía por tiempo."

**Si insisten "¿por qué no le dices qué tipo de cargo es?":**
> "Porque decir 'es un cargo chiquito' invita a ignorarlo — el patrón que le costó $8,500 MXN a una entrevistada. La alerta no depende del tamaño del cargo, depende de si se sale del patrón."

---

## 11. Card-testing vs. suscripción camuflada en una categoría habitual

**Qué pasa:** el clasificador compara comercio, hora y monto contra lo reciente de esa cuenta, no solo el monto aislado.

**Argumentarlo:**
> "Un cargo chico en un comercio ya conocido, a su hora de siempre, no se ve igual que uno en un comercio nuevo de madrugada seguido de otros en minutos — eso es card-testing. El caso difícil es una suscripción indeseada en una categoría habitual: ahí lo que delata el problema es que es un cobro nuevo que se repite mes con mes, nunca antes visto en esa cuenta — firma de suscripción, no de compra ocasional. No prometo atrapar el 100% — ningún sistema por patrones lo hace —, pero ya es mejor que hoy: los bancos ni avisan de cargos entre 50 centavos y 5 dólares, el rango exacto de card-testing (Mastercard Newsroom, 2024)."

---

## 12. "¿Qué te diferencia de un banco? ¿Cómo hubiera atrapado el caso de tu mamá?"

**Qué pasa:** el clasificador compara contra los **últimos 90 días** de esa cuenta (3 ciclos de facturación), no contra todo su historial de vida — ni muy corto (ruido de un mes atípico) ni muy largo (tarda en notar reactivaciones). Respaldo externo: un artículo técnico de detección de fraude describe el mismo mecanismo, "ventana móvil de 90 días, actualizada diariamente" (System Hardening, 2026).

**Argumentarlo:**
> "Un banco también analiza patrones, pero a gran escala, con modelos genéricos calibrados para montos grandes. Vigilio compara contra lo reciente de UNA cuenta específica. Eso hubiera atrapado el caso de mi mamá: Uber Eats fue parte de su gasto normal hace tiempo, pero llevaba casi un año sin usarlo — para el modelo, un comercio ausente meses que reaparece ya no cuenta como normal, aunque alguna vez sí lo fue."

---

## 13. Marco legal aplicable

**Argumentarlo:**
> "LFPDPPP para el consentimiento del papá — aviso de privacidad, derechos ARCO, consentimiento informado antes de conectar la cuenta — vigilada hoy por la Secretaría Anticorrupción y Buen Gobierno (reemplazó al INAI en 2025). Belvo opera bajo la Ley Fintech, autorizado por la CNBV como IFPE. Para la IA, los Términos de Anthropic permiten uso comercial, pero piden avisar que la alerta es ayuda, no verificación garantizada — por eso la decisión final siempre es del hijo. Para la suscripción, Ley Federal de Protección al Consumidor — ahí sí tengo pendiente honesto: términos de servicio y política de cancelación completos todavía no publicados."

---

## 14. ¿Cómo se entera Vigilio, en el momento, de un cargo nuevo? (el proceso técnico completo)

**El flujo exacto, de principio a fin:**

1. Belvo vigila la cuenta del papá en segundo plano (es su función como agregador de open banking).
2. En cuanto el **banco** le reporta una transacción nueva a Belvo, Belvo manda un **webhook** (`new_transactions_available`) al backend de Vigilio — como una notificación push, no como una pregunta constante.
3. El backend pide el detalle de esa transacción específica a la API de Belvo.
4. Junta ese cargo con los **últimos 90 días** de historial de la cuenta.
5. Manda ambos en una llamada API a **Claude Haiku**, que clasifica: normal o sospechosa (cargo chico atípico / card-testing / suscripción no reconocida).
6. Si es sospechosa → se genera la alerta para el hijo. Si es normal → no llega nada.

**Argumentarlo:**
> "No es que Vigilio le pregunte al banco a cada rato si hay algo nuevo — es al revés. Belvo vigila en segundo plano, y en cuanto el banco registra un cargo, le avisa a mi backend por webhook, como WhatsApp avisándote de un mensaje nuevo sin que tu teléfono esté preguntando. Ese aviso dispara todo: pido el detalle del cargo, lo junto con los últimos 90 días de la cuenta, y mando los dos a Claude Haiku para que compare. Sospechosa → alerta al hijo. Normal → no me llega nada."

**Sobre qué tan rápido pasa (si preguntan "¿milisegundos o segundos?"):** sé honesto — Belvo no publica un número fijo. Lo único documentado: la llamada REST propia del backend se estima en 200-500ms (estimado, no medido en el entorno real); el verdadero cuello de botella es el intervalo de sincronización de Belvo con el banco, que Belvo tampoco publica como cifra fija. Di "casi en tiempo real, en cuanto el banco lo reporta" — no inventes segundos exactos.

---

## 15. Costo por llamada a Belvo y a Claude Haiku

**Dos modelos de costo distintos, no comparables uno a uno:**

- **Belvo (Sandbox, el que usas hoy):** $0 USD/mes, tarifa plana, consultas simuladas ilimitadas. En producción: ~$1,000 USD/mes (~$17,580 MXN/mes) repartido entre 304-608 hogares ≈ $29-58 MXN/hogar/mes — tampoco por llamada, es tarifa por volumen.
- **Claude Haiku 5.5 (el que sí cobra por uso real):** $0.00025 USD por clasificación (~2,000 tokens entrada + ~100 salida, a $0.10/$0.50 USD por millón input/output) ≈ $0.0044 MXN/llamada.
- **Frecuencia:** ~1 llamada/día por cuenta (supuesto a validar, derivado de 20-40 transacciones/mes).
- A esa frecuencia: $0.13 MXN/mes por cuenta; a escala de piloto (20-30 cuentas): $2.60 a $4 MXN/mes en total.

**Argumentarlo:**
> "Dos modelos de costo distintos. Belvo, en Sandbox, es tarifa plana gratis, uso ilimitado simulado — no cobra por consulta. El que sí cobra por uso real es Claude Haiku: cada clasificación cuesta $0.00025 dólares, menos de medio centavo de peso. Con el supuesto de una llamada al día por cuenta, el costo de IA es $0.13 pesos al mes por cuenta; a escala de piloto, $2.60 a $4 pesos al mes en total. La innovación de Vigilio es cara en tiempo de desarrollo, no en el centavo que cuesta cada clasificación."

**Qué NO decir:** no digas que Belvo "cuesta X por llamada" (es tarifa plana). No presentes "1 llamada/día" como medido — es supuesto a validar.

---

## 16. El punto de equilibrio REAL — con Belvo en producción, no Sandbox (27-nov-2026, catch de Axel)

**Por qué el modelo anterior estaba mal planteado:** Belvo lo dice directo en su propia página de precios: "Sandbox access is free and intended for testing and evaluation purposes only. Production access to serve real customers requires a paid plan" (Belvo, 2026). Sandbox usa datos simulados — **no conecta cuentas bancarias reales**. El piloto que pides en el pitch (20 familias reales, cuentas reales) necesita el plan de producción, **"Launch"**: **$1,000 USD/mes (~$17,580 MXN/mes)**, sin tope de cuentas publicado (mismo costo con 20 que con 200). El punto de equilibrio que vale la pena memorizar es el que incluye este costo real, no el de Sandbox.

**Cálculo completo (costo fijo mensual real):**

| Componente | Costo/mes |
|---|---|
| Bubble Starter | $685.62 |
| Claude Pro | $351.60 |
| Dominio propio | $18.75 |
| **Belvo producción (real, no Sandbox)** | **$17,580.00** |
| **Costo fijo mensual REAL** | **$18,635.97 MXN** |

**Punto de equilibrio REAL:**

- **Solo operativo:** $18,635.97 ÷ $91.62 (margen de contribución) = 203.41 → **204 cuentas pagando**.
- **Recuperando también la inversión inicial en 12 meses:** cuota mensual $28,638.98 ÷ 12 = $2,386.58 → costos fijos totales $18,635.97 + $2,386.58 = $21,022.55 → punto de equilibrio = $21,022.55 ÷ $91.62 = 229.45 → **230 cuentas pagando**.

**Lo que esto significa de verdad:** ni 204 ni 230 son alcanzables dentro del piloto de 20-30 familias — el piloto, con cuentas reales, va a operar en números rojos de forma necesaria e inevitable (~$18,600 MXN/mes de costo fijo contra, digamos, 25 cuentas × $91.62 = $2,290.50 MXN de margen, un déficit mensual de ~$16,345 MXN). Pero 204-230 cuentas SÍ caen dentro de tu propia meta de año 1-2 (300-600 hogares) — no es un número descabellado, es la escala real a la que el negocio se sostiene solo.

**Cómo argumentarlo:**
> "Mi punto de equilibrio real —con Belvo en modo producción, el que necesito para cuentas reales, no el Sandbox gratuito de pruebas— es de 204 cuentas pagando para cubrir solo costos operativos, y 230 cuentas si además quiero recuperar mi inversión inicial en 12 meses. El piloto de 20 a 30 familias necesariamente va a operar con pérdida mientras dure — alrededor de dieciséis mil pesos mensuales— porque el costo fijo de Belvo en producción es el mismo con 20 cuentas que con 200. Pero 204 a 230 cuentas caen dentro de mi propia meta de año uno y dos, de 300 a 600 hogares — el piloto no busca ser rentable, busca demostrar que el modelo cierra antes de escalar a los números donde sí se sostiene solo."

**Qué NO decir:** no uses ya el punto de equilibrio de 12/38 cuentas (ese asumía Sandbox gratis) — ese número ya no aplica a tu negocio real.

---

## Cómo usar este documento

No lo leas en voz alta tal cual — apréndete la estructura: **qué falta → por qué ya lo sabes → qué vas a hacer**. Si preguntan algo que no está aquí, usa el mismo patrón: admite el hueco, di de dónde sale la evidencia, di qué harías.

---
**Fuentes:** `protocolo-pruebas-usuario-semana9-vigilio.md`, `resumen-semana9-para-pagina.md` (T1-T6), `arquitectura-sistema-semana5-vigilio.md` (RF-06, webhook, 4 categorías), `requerimientos-ieee830-semana5-vigilio.md` (RR-02), `plan-de-accion-stack-vigia.md`, `plan-prototipado-dfm-semana8-vigilio.md`, `notas-financieras-internas-vigilio.md`, `matematicas-financieras-bloque4-5-semana7-vigilio.md` (punto de equilibrio, LTV/CAC), `cac-ltv-payback-semana9-vigilio.md`, `simulacion-datos-belvo-vigilio.md`, `checklist-regulatorio-semana9-vigilio.md`, `bom-costo-ia-semana7-vigilio.md`.

**Referencias (APA-7):**

Secretaría de Gobernación / Cámara de Diputados. (2011). *Reglamento de la Ley Federal de Protección de Datos Personales en Posesión de los Particulares* (Art. 45, 46). Diario Oficial de la Federación, 21 de diciembre de 2011. https://inicio.inai.org.mx/Rendicion_Cuentas/Volumen%20IV%20Tomo%202%20Reglamento%20de%20la%20LFPDPPP.pdf

System Hardening. (2026, 7 de mayo). *Real-time payment fraud detection: Velocity rules, device signals, and behavioral baselines*. https://www.systemshardening.com/articles/observability/payment-fraud-detection/

Anthropic. (2026). *Pricing*. Claude Developer Platform. https://platform.claude.com/docs/en/about-claude/pricing

Belvo. (2026). *Plans and pricing*. https://belvo.com/plans-and-pricing/

Belvo. (2026). *Aggregation webhooks*. Developer resources. https://developers.belvo.com/developer_resources/resources-webhooks-aggregation

Monroy-Gómez-Franco, L. A., & Vélez-Grajales, R. (2015). Family size and old-age wellbeing: Effects of the fertility transition in Mexico. *Ageing & Society*, *37*(3), 495-516. https://pmc.ncbi.nlm.nih.gov/articles/PMC5321659/
