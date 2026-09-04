---
title: Evidencia — Búsqueda de oportunidades (Semana 02)
layout: default
parent: Semanas
nav_exclude: true
---

# Evidencia — Búsqueda de oportunidades con IA (Semana 02)

[← Volver a Semana 02](./semana-02.html)

Esta página documenta el proceso completo de investigación: los 7 pasos, cada prompt que usé (con Perplexity y con Claude) y cada resultado, tal cual salieron. Cuando un prompt vuelve a incluir como contexto el resultado de un paso anterior, lo marco entre corchetes en vez de repetir el texto completo, para no duplicar contenido ya mostrado arriba.

**Idea original resumida:** Es una app con IA que se conecta (vía Belvo) a las cuentas bancarias del usuario y detecta en tiempo real cargos pequeños sospechosos: patrones de fraude tipo "card testing" y suscripciones activadas por error. Alerta directo al dueño de la cuenta —no a un tercero— y clasifica el cargo con IA para indicarle si le conviene disputarlo con el banco o cancelarlo directo con el comercio. Está pensada para personas ocupadas y autosuficientes con sus finanzas, de cualquier edad, que no tienen tiempo de revisar cada movimiento chico de su cuenta. Sin hardware obligatorio: es 100% app.

---

## Paso 1 — Análisis de ecosistema y primer estrés de la idea

### Prompt 1.1 (Perplexity)

> Actúa como un analista de inteligencia competitiva especializado en negocios de producto digital-físico en América Latina, con experiencia en evaluar si una idea tiene espacio real en el mercado o si está entrando a un ecosistema ya saturado o con barreras no obvias. Tu metodología incluye análisis de actores existentes, detección de brechas no cubiertas, identificación de mercados adyacentes y evaluación de timing de mercado.
>
> Somos un equipo de emprendedores en México construyendo un negocio basado en tres componentes articulados: una aplicación con IA, un artefacto físico inteligente y una página web de venta. Nuestras capacidades abarcan desarrollo de software e IA, hardware conectado (ESP32, Raspberry Pi, sensores, PCB) y manufactura de producto físico. Tenemos seis meses para llegar a MVP comercializable.
>
> Nuestra idea actual es: [idea original resumida arriba]
>
> Responde con datos verificables y fuentes:
> 1. **SATURACIÓN DEL ESPACIO:** ¿Quién más está atacando este problema en LATAM o en el mundo con soluciones que combinen software, IA y hardware? Menciona al menos 3 actores reales con su nivel de tracción actual.
> 2. **BRECHAS NO CUBIERTAS:** En el mismo espacio donde opera nuestra idea, ¿qué subproblemas o segmentos de usuario están siendo ignorados por los actores actuales? Dame 3 brechas concretas con evidencia de que son reales y de que representan disposición a pagar.
> 3. **MERCADOS ADYACENTES:** ¿Hay sectores o tipos de usuario donde una solución como la nuestra — app con IA + artefacto físico + canal de venta digital — podría aplicarse con adaptaciones menores y donde el problema sea igual o más intenso?
> 4. **TIMING:** ¿Hay señales de que este mercado está listo para una solución integrada digital-física ahora? ¿Qué tendencia reciente lo indica o lo contradice?

**Resultado:**

Saturación del espacio: el espacio de detección de fraude en tiempo real para el usuario final (B2C) en LATAM está parcialmente saturado en el lado institucional (B2B), pero casi vacío en el lado del consumidor directo. Actores identificados con tracción verificable:

- **GatekeeperX** (Colombia-Argentina, B2B fintechs/bancos): +20M transacciones procesadas en 5 países LATAM, decisiones en 100ms, fundada 2025 por ex-Rappi/Mercado Libre/Stori.
- **i2c** (EE.UU., operación LATAM, B2B bancos/emisores): ganador "Most Innovative Fintech in Latin America" 2026 por Global Finance, Fraud Risk Management con ML embebido.
- **Rocket Money / Trim** (EE.UU., uso global, B2C): Rocket Money ~$7–14/mes, cancelación de suscripciones y negociación de facturas; Trim gratuito con comisión sobre ahorro, millones de usuarios.

Ninguno combina detección de "card testing" + clasificación IA para disputa/cancelación + notificación directa al dueño de la cuenta como producto B2C standalone en LATAM.

Brechas no cubiertas: (1) micro-fraude "invisible" (card testing, cargos de $0.50–$5) sin atención para consumidores — 83% de mexicanos abiertos a modelos "Pay-to-Play"; (2) segmento "autosuficiente pero ocupado" sin tiempo de revisar movimientos — 77% de consumidores globales quieren gestionar suscripciones desde su app bancaria, precios mass-market en México de MXN 99–149/mes; (3) falta de integración con open banking LATAM para acción inmediata — Belvo es el agregador líder en México, Brasil y Colombia, pero casi ninguna app B2C lo usa combinado con IA de clasificación y flujo de disputa.

Mercados adyacentes: (1) protección financiera para adultos mayores/familias — artefacto físico (botón de pánico financiero) + app con IA; (2) gestión de suscripciones para freelancers/PYMEs — suscripciones B2B crecen 34% en México (25–44 años); (3) seguridad de cuentas para usuarios de cripto/fintech emergentes.

Timing: señales positivas — adopción madura de open banking (Belvo, Pluggy, Klavi), fatiga de suscripciones (77% quiere gestionarlas desde el banco), disposición a pagar en México (83% abierto a pay-to-play), México entre los 3 mercados de apps de más rápido crecimiento en 2026. Señales de riesgo — Visa lanza Subscription Manager en 2026 con expansión a LATAM, sensibilidad al precio en LATAM, falta de educación financiera sobre cargos pequeños.

Veredicto estratégico: la oportunidad está en posicionarse como "guardián proactivo contra micro-fraude" (no gestor de suscripciones), enfocado en el usuario ocupado y autosuficiente, aprovechando Belvo como ventaja frente a Rocket Money/Trim (que usan Plaid o no operan en la región), y considerando el artefacto físico como diferenciador para segmentos específicos (adultos mayores, familias). Precio sugerido para México: MXN 99–149/mes (mass-market) o MXN 199–249/mes (prosumer).

### Prompt 1.2 (Claude)

> Actúa como un inversionista con experiencia en negocios de producto digital-físico en mercados emergentes, conocido por hacer las preguntas que los equipos no quieren escuchar pero necesitan responder antes de comprometer seis meses en una idea. No eres destructivo — eres brutalmente honesto porque te importa que el negocio llegue a algo real y comercializable.
>
> *(Como contexto se incluyó la idea original y el análisis de ecosistema completo del Prompt 1.1 — ver arriba.)*
>
> Hazme el estrés que más necesito — no el más cómodo:
> 1. **EL SUPUESTO MÁS PELIGROSO:** ¿Cuál es el supuesto sobre el usuario o el mercado que estamos dando por hecho y que, si resulta falso, hace que toda la idea pierda sentido? ¿Cómo lo probaríamos o refutaríamos en menos de una semana sin construir nada?
> 2. **LA ARISTA QUE NO VIMOS:** Basándote en las brechas del análisis de ecosistema, ¿hay una versión de nuestro negocio — manteniendo los tres componentes pero cambiando el usuario objetivo, el problema atacado o cómo se articulan app, artefacto y canal de venta — que tenga un mercado más claro o una propuesta de valor más fuerte? Descríbela como pitch de 3 oraciones.
> 3. **EL PIVOTE MÍNIMO:** Si tuvieras que cambiar UNA sola cosa de nuestra idea para hacerla significativamente más fuerte — el usuario objetivo, el problema central, la forma en que los tres componentes se relacionan entre sí, o el modelo de ingresos — ¿qué cambiarías y por qué?
>
> Sé específico. No me des frameworks — dame decisiones accionables.

**Resultado:**

**El supuesto más peligroso:** están asumiendo que el usuario no se entera ya de estos cargos por su propio banco, y que va a preferir pagar una app externa en vez de simplemente leer la notificación push que la mayoría de bancos mexicanos (BBVA, Santander, Banorte) ya manda por cada movimiento con tarjeta. Si el usuario sí recibe esa alerta pero la ignora — no por falta de dato, sino por falta de acción — entonces Vigía no está resolviendo un problema de detección, está resolviendo un problema de atención, mucho más difícil de monetizar. Cómo probarlo en menos de una semana: 8–10 entrevistas de 15 minutos donde, en la llamada misma, se pide abrir la app bancaria y mostrar si hay notificaciones push activas por transacción, preguntando cuándo fue la última vez que vieron una alerta de un cargo que no reconocían y qué hicieron.

**La arista que no vimos:** el hueco fuerte no está en "personas ocupadas de cualquier edad" (ya tienen la alerta gratis del banco y su dolor real es bajo), sino en adultos mayores/familias, donde el dueño de la cuenta no va a actuar aunque reciba la alerta, y sí hay alguien dispuesto a pagar por tranquilidad, no por conveniencia. Pitch: "Vigía Familiar conecta la cuenta bancaria de un padre o madre mayor a la app de su hijo vía Belvo; cuando aparece un cargo tipo card-testing o una suscripción no reconocida, el hijo recibe la alerta y un flujo de un clic para disputarlo o cancelarlo en nombre del padre. Un botón físico simple en casa del padre sirve únicamente como confirmación de 'sí reconozco este cargo', no como canal de alerta." Con honestidad: esta es la idea que ya había explorado y descartado antes (autoservicio vs. dependiente-de-hijo), no un descubrimiento nuevo — una decisión ya tomada con datos, no una casualidad del prompt.

**El pivote mínimo:** cambiar el modelo de ingresos, no el usuario ni el problema — de suscripción fija mensual a pago-por-éxito (gratis hasta que Vigía detecte y resuelva un cargo real, y ahí se cobra un fee fijo o un % de lo recuperado/evitado). Esto neutraliza el supuesto más peligroso: si el usuario no confía todavía en que hay un problema real, no se le pide apostar $150/mes a ciegas, se le pide probar algo gratis que solo cobra cuando genera valor comprobable.

Nota de calidad de fuentes: las cifras del reporte de Perplexity (83% abierto a pay-to-play, GatekeeperX con 20M transacciones, etc.) vienen con citas rotas tipo "colombiaone+1" en vez de referencias APA-7 reales — no son fuentes verificables tal cual, así que si se citan formalmente hay que verificarlas o presentarlas como "hallazgo preliminar, pendiente de verificar".

### Anotaciones — Paso 1

De Perplexity, las 2 brechas más concretas: (1) micro-fraude "invisible" (card testing) no atendido para consumidores — evidencia de que el card testing usa transacciones de $0.50–$5 para validar tarjetas robadas, y de que 83% de consumidores mexicanos están abiertos a modelos "Pay-to-Play"; (2) segmento "autosuficiente pero ocupado" sin tiempo de revisar movimientos — 77% de consumidores globales quieren gestionar suscripciones desde su app bancaria, con precios mass-market de MXN 99–149/mes.

De Claude: el supuesto más peligroso (que el usuario no reciba ya la alerta de su banco y la ignore por falta de acción, no de dato) y la arista alternativa más prometedora (Vigía Familiar — modelo hijo-papá).

---

## Paso 2 — Auditoría de insights

### Prompt 2.1 (Claude)

> Actúa como un estratega de producto con experiencia en identificar los supuestos ocultos detrás de ideas de negocio — los insights implícitos que los equipos dan por ciertos sin haberlos formulado ni verificado. Tu especialidad es hacer visible lo que se asume como obvio, porque ahí es donde más frecuentemente fallan los negocios de hardware + software en mercados emergentes.
>
> *(Como contexto se incluyó la idea original y el análisis de ecosistema completo del Paso 1 — ver arriba.)*
>
> Necesito que hagas tres cosas:
> 1. **FORMULA EL INSIGHT IMPLÍCITO:** ¿Cuál es el insight sobre el usuario y el problema que nuestro equipo está dando por cierto sin haberlo verificado? Exprésalo en el formato de un insight sólido: quién, qué les cuesta, por qué no está resuelto, dónde está el espacio.
> 2. **AUDITA EL INSIGHT:** ¿Qué parte tiene más probabilidad de ser falsa o más débil de lo que asumimos? ¿Qué evidencia necesitaríamos para saber si es verdadera? ¿Hay una versión alternativa del insight — mismo problema, diferente usuario, o mismo usuario, diferente problema — que podría ser más sólida?
> 3. **FORMULA EL INSIGHT DE LA ARISTA NUEVA:** usando la arista alternativa del Paso 1, formula un segundo insight con el mismo formato, y describe cómo se articularían los tres componentes del negocio alrededor de esta arista.

**Resultado:**

**Insight implícito (idea original):** quién — adultos que manejan su cuenta bancaria por sí mismos, sin delegar, y están ocupados, no la revisan a detalle. Qué les cuesta — pierden dinero y tiempo cuando aparecen cargos pequeños no reconocidos, porque no los detectan a tiempo y no saben si conviene disputarlos o cancelarlos. Por qué no está resuelto hoy — las notificaciones bancarias avisan que hubo un cargo pero no dicen si es sospechoso ni qué hacer; Rocket Money resuelve suscripciones grandes ya reconocidas, no fraude de bajo monto. Dónde está el espacio — ser la capa de interpretación y enrutamiento accionable sobre datos bancarios vía Belvo.

**Auditoría:** la parte más débil es "por qué no está resuelto hoy" — el monto en juego (card-testing, $0.50–$5) puede ser tan bajo que ni con recomendación perfecta y flujo de un clic le valga la pena a la mayoría disputar; no es un problema de interpretación, es que el dolor es demasiado pequeño para generar acción. Además, el "quién" es sospechosamente amplio ("personas ocupadas de cualquier edad" describe casi a toda la PEA de México), señal de que no se ha acotado lo suficiente. Evidencia necesaria: frecuencia real anual del problema, monto promedio en riesgo, y si la gente que ya recibe alertas bancarias actúa o las ignora. Versión alternativa: freelancers y PYMEs, con más tarjetas activas, más suscripciones acumuladas y monto acumulado que sí justifica actuar.

**Insight de la arista nueva (hijo-papá):** quién — hijos adultos que supervisan o se preocupan por las finanzas de un padre o madre mayor que tiene cuenta propia pero no la revisa activamente. Qué les cuesta — al padre se le cargan pagos no reconocidos que no detecta ni resuelve, y el hijo se entera tarde; el costo real no es solo el dinero, es la carga mental y el tiempo del hijo. Por qué no está resuelto hoy — los padres no van a instalar ni revisar una app de finanzas por iniciativa propia; los hijos no tienen visibilidad de la cuenta salvo pidiendo las claves (informal y riesgoso); no existe un canal formal y autorizado. Dónde está el espacio — dar visibilidad y capacidad de acción al hijo vía una conexión Belvo autorizada explícitamente por el padre, resolviendo el problema real de agencia: quien sufre el dolor (el padre) no es quien puede actuar; quien puede actuar (el hijo) es quien paga. Cómo se articulan los tres componentes: la app la usa el hijo (alerta + flujo de un clic); el artefacto físico vive en casa del padre como confirmador simple ("sí reconozco este cargo"); la web se dirige al hijo, con mensaje de tranquilidad y protección familiar.

### Prompt 2.2 (Perplexity)

> Actúa como un analista de inteligencia competitiva con experiencia en evaluar la solidez de oportunidades de negocio digital-físico en mercados emergentes latinoamericanos. Tu metodología consiste en contrastar las afirmaciones de una oportunidad con datos verificables de fuentes primarias y secundarias — INEGI, BID, CEPAL, reportes de industria — para determinar qué tan firme es el suelo sobre el que un emprendedor está parado antes de comprometer recursos.
>
> Tenemos dos insights posibles y necesitamos datos reales para elegir el más sólido, no el más atractivo en papel.
>
> **INSIGHT A** — idea original: *(ver formulación completa arriba, Resultado 2.1)*
>
> **INSIGHT B** — arista alternativa: *(ver formulación completa arriba, Resultado 2.1)*
>
> Para cada insight, verifica con fuentes citables: (1) existencia y tamaño del segmento; (2) costo real del problema; (3) competencia específica para esta combinación exacta de usuario + problema + solución; (4) señal de mercado más fuerte. Entrega una tabla comparativa final. No me digas cuál elegir — dame los datos y deja que la evidencia hable por sí sola.

**Resultado:**

**Insight A — idea original (adultos ocupados y autosuficientes):**

| Criterio | Evaluación | Justificación |
|---|---|---|
| Segmento verificado | ⚠️ | Demasiado amplio ("adultos ocupados de cualquier edad" ≈ toda la PEA de México); no hay acotamiento a un dolor agudo. |
| Costo documentado | ⚠️ | Suscripciones olvidadas: $650–$1,200/mes documentado; card-testing: $0.50–$5, monto demasiado bajo para justificar acción individual. |
| Competencia mapeada | ❌ | No hay competencia directa para esta combinación exacta — puede ser oportunidad o mercado no validado. |
| Señal de mercado | ⚠️ | Cargos no reconocidos suben 29.2% (Condusef), pero no hay evidencia de búsqueda activa ni disposición a pagar por una solución específica. |

Datos de respaldo: 17.1 millones de personas de 60+ años en México (12.8% de la población), pero el insight apunta a "cualquier edad" (~55 millones de PEA); cada mexicano recibe 86 intentos de estafa al año; pérdidas totales por fraude superan 139,000 millones de pesos.

**Insight B — arista alternativa (hijos que supervisan finanzas de padres mayores):**

| Criterio | Evaluación | Justificación |
|---|---|---|
| Segmento verificado | ✅ | 17.1M adultos mayores en México (2025); 3 de cada 10 dependen de terceros para banca; los hijos ya actúan como supervisores financieros de facto. |
| Costo documentado | ✅ | $20,000–$50,000 pesos promedio por víctima de fraude; 32% de todas las quejas por fraude bancario provienen de adultos mayores. |
| Competencia mapeada | ⚠️ | Competencia indirecta (prácticas manuales, recomendaciones institucionales de Condusef/Profeco); no hay producto digital-físico específico. |
| Señal de mercado | ✅ | Envejecimiento demográfico acelerado (proyección ~20M adultos mayores para 2030) + reclamos en aumento + Condusef recomienda explícitamente "supervisión compartida entre hijos, nietos y adultos mayores". |

Competidores adyacentes identificados (ninguno directo en México): Greenlight Family Shield (EE.UU., 2M+ hogares) y Experian Family Plan (EE.UU., $24.99–$34.99/mes) — protección antifraude multigeneracional, no disponibles en LATAM.

**Tabla comparativa final:**

| Criterio | Insight A | Insight B |
|---|---|---|
| Segmento verificado | ⚠️ | ✅ |
| Costo documentado | ⚠️ | ✅ |
| Competencia mapeada | ❌ | ⚠️ |
| Señal de mercado | ⚠️ | ✅ |

### Anotaciones — Paso 2

Insight idea original y insight de la arista nueva: *(ver formulaciones completas en el Resultado del Prompt 2.1, arriba).*

Nota propia de Axel: "Algo que aclarar por mi cuenta es que la idea de que sólo se enfoca en pagos pequeños es desechar que también se concentra en pagos por primera vez o pagos de suscripciones. Eso haría falta aclarar al final."

---

## Pain-Gain Map (versión inicial)

**Usuario / segmento específico:** hijos adultos de 35 a 40 años que ayudan a administrar las finanzas de un padre mayor de 60-70 años.

**Dolores:**
- **D1** ✅ — Se enteran demasiado tarde de un cargo sospechoso.
- **D2** ⚠️ — El proceso de aclaración y/o resolver el problema es muy largo y llega a frustrar a los usuarios.
- **D3** ⚠️ — La persona protegida no puede, no quiere o no tiene el tiempo de usar la app de los bancos para resolver el problema.

**Ganancias:**
- **G1** — Detectar qué fue y que no vuelva a ocurrir otra vez.
- **G2** — Dejarían de perder mucho tiempo resolviendo todo y les dirían qué hacer para resolverlo.
- **G3** — Que un tercero, desde un hijo o una aplicación, les avise si hay algún cargo no reconocido o una suscripción por primera vez.

**El espacio sin cubrir:** el dolor más intenso es que se enteran demasiado tarde de un cargo sospechoso; la ganancia más deseada es detectar qué fue y que no vuelva a ocurrir. En una frase: "Existe una oportunidad para los padres que necesitan detectar cargos recurrentes o menores en suscripciones o pagos nuevos, porque hoy el proceso para aclaración y/o resolver es muy largo y tedioso."

---

## Paso 3 — Auditoría del Pain-Gain Map y tamaño de la arista

### Prompt 3.1 (Claude)

> Actúa como un consultor de estrategia de producto con experiencia en identificar desalineaciones entre lo que un equipo cree que resuelve y lo que el usuario realmente necesita. Tu especialidad es el análisis de Pain-Gain Maps para detectar si una solución está atacando los dolores correctos o si existe una oportunidad de negocio más poderosa en los dolores que la solución actual ignora.
>
> Nuestra idea: una app con conexión Belvo permite a los hijos monitorear cargos sospechosos de sus padres mayores sin usar sus claves bancarias. El hijo gestiona las alertas en la app y el padre solo valida gastos mediante un dispositivo físico simple en casa. La web se vende al hijo ofreciendo tranquilidad y protección familiar sin auditorías manuales.
>
> *(Se incluyó el Pain-Gain Map con auditoría propia de Axel — ver arriba.)*
>
> Realiza tres análisis: (1) **DESALINEACIÓN CRÍTICA** — ¿hay algún dolor más intenso o frecuente del que atacamos bien? ¿Estamos atacando el dolor correcto o el más conveniente para nuestra solución actual? (2) **ARISTA DE NEGOCIO NO VISTA** — usando los dolores peor resueltos, describe una versión alternativa o complementaria del negocio, formulada como oportunidad en una oración. (3) **GANANCIAS NO ENTREGADAS** — ¿cuál ganancia entrega peor nuestra solución, y cómo rediseñar un componente para entregarla mejor?

**Resultado:**

Antes del análisis, Claude corrigió un símbolo: Axel había marcado D3 como ❌, pero el rediseño (el padre ya no toca la app del banco, solo el dispositivo físico) sí resuelve parte de ese dolor. Lo que no resuelve es quién ejecuta el trámite de disputa o cancelación — eso solo se movió del padre al hijo, no desapareció. Se corrigió a ⚠️.

**Pain-Gain Map auditado:**

Dolores ordenados de mayor a menor intensidad: ⭐ D3 (revisado) — la persona protegida ya no usa la app del banco, pero alguien (el hijo) sigue ejecutando manualmente la disputa → ⚠️. D2 — el proceso de aclaración/resolución es largo y frustrante → ⚠️. D1 — se enteran demasiado tarde de un cargo sospechoso → ✅.

Ganancias ordenadas de mayor a menor deseo: ⭐ G2 — dejar de perder tiempo resolviendo todo, que les digan qué hacer → entregada: parcial. G3 — que un tercero avise de un cargo no reconocido → entregada: bien. G1 — detectar qué fue y que no vuelva a ocurrir → entregada: bien.

**Desalineación crítica:** parcialmente. El rediseño delegado sí resuelve que el padre deje de necesitar una app bancaria, pero no resuelve el trámite en sí — solo cambió quién lo carga, del padre al hijo. La propuesta de venta promete "protección sin auditorías manuales", pero el hijo sigue haciendo el trabajo manual de disputar o cancelar.

**Arista de negocio identificada:** "Existe una oportunidad adicional para hijos que ya reciben la alerta pero no tienen tiempo ni paciencia de ejecutar el trámite de disputa o cancelación por su padre, que necesitan que alguien más lo resuelva por completo, porque hoy ni el banco ni Vigía ejecutan la resolución — solo informan quién debe hacerla." Cómo cambiarían los tres componentes: la app pasaría de "gestor de alertas" a "ejecutor de trámites" (formularios prellenados o integración directa con el flujo de cancelación); el artefacto físico añadiría doble confirmación ("sí, resuélvelo"); el canal de venta se reposicionaría a "servicio de resolución llave en mano".

**Ganancia no entregada:** G2 sigue siendo la peor entregada — "que les digan qué hacer" no es lo mismo que "dejar de perder tiempo resolviendo todo".

**Decisión recomendada:** [x] Explorar la arista en paralelo — ambas tienen potencial. Justificación: la ejecución delegada es una mejora válida tanto para la versión autoservicio como para la versión delegada a hijo — es un problema de producto compartido entre las dos ideas, no una razón para elegir una sobre otra.

### Prompt 3.2 (Perplexity)

> Actúa como un analista de mercado con experiencia en evaluar el potencial comercial de oportunidades de negocio específicas en sectores de América Latina. Tu trabajo no es vender la idea — es decirle al emprendedor si el dolor tiene mercado suficiente para justificar construir alrededor de él.
>
> Nuestra idea actual resuelve que se enteran demasiado tarde de un cargo sospechoso, para hijos adultos de 35 años que ayudan a un padre mayor de 60-70 años. La arista que evaluamos ataca que la persona protegida no puede, no quiere o no tiene tiempo de usar la app del banco. Oportunidad formulada: *(la misma descripción del concepto hijo-papá — ver arriba).*
>
> Verifica: **TAMAÑO DEL SEGMENTO** (¿cuántos usuarios en México/LATAM tienen este problema con frecuencia semanal o mayor?), **EVIDENCIA DE DISPOSICIÓN A PAGAR**, **COMPETENCIA EN ESTE ESPACIO ESPECÍFICO**, y una **CONCLUSIÓN PARA EL EQUIPO** directa sobre si vale la pena explorar la arista.

**Resultado:**

**Tamaño del segmento:** 17.1 millones de adultos mayores (60+) en México en 2025 (12.8% de la población). De estos, 3 de cada 10 dependen de terceros para movimientos bancarios y solo 20% usa apps móviles para trámites financieros (Conapo 2025; ENIF 2024 — fuentes oficiales, confiabilidad alta). Interpretación: ~5.1 millones de adultos mayores con supervisión financiera familiar activa; asumiendo al menos un hijo involucrado por cada uno, el segmento de "hijos que supervisan" es de ~5 millones de usuarios potenciales en México.

**Evidencia de disposición a pagar:** parcial. Productos existentes en EE.UU. (Experian Family Plan $24.99–$29.99/mes, Greenlight Family Shield con 2M+ hogares); recomendación institucional explícita de Condusef sobre "supervisión compartida entre hijos, nietos y adultos mayores"; pérdidas documentadas que justifican pago ($20,000–$50,000 MXN por víctima, solo 1.4% de recuperación); 83% de mexicanos abiertos a pay-to-play. Pero no hay datos directos de familias mexicanas pagando ya por un servicio de monitoreo financiero familiar — el proxy más cercano son apps de finanzas personales con suscripciones pagas.

**Competencia en este espacio específico:** brecha confirmada — sí. No existe en México/LATAM un producto digital-físico que combine conexión Belvo autorizada (no claves compartidas) + artefacto físico de validación simple para el padre + venta directa al hijo como protector familiar. La competencia son prácticas manuales y apps genéricas de finanzas (Fintonic, Wallet, Finerio) no diseñadas para este caso de uso.

**Conclusión para el equipo:** Sí, con condiciones — la arista tiene mercado suficiente para justificar explorarla (5+ millones de adultos mayores con supervisión financiera familiar, pérdidas documentadas, reconocimiento institucional), pero sin evidencia directa de disposición a pagar en México específicamente, por lo que hay que validar precio y disposición a pagar con entrevistas antes de construir.

---

## Paso 4 — SCAMPER disruptivo, remixes y filtro DVN

### Prompt 4.1 (Claude)

> Actúa como un facilitador senior de innovación disruptiva especializado en encontrar las versiones más radicales de ideas de negocio existentes — no mejoras incrementales, sino reencuadres que cambian quién se beneficia, cómo se entrega el valor, o por qué alguien pagaría.
>
> Idea original, usuario, dolor ⭐, ganancia ⭐ y arista del Paso 3: *(ver arriba)*. Supuestos centrales que nadie ha cuestionado: asumimos que la solución tiene que ser una app con IA conectada a Belvo que redirige la resolución al banco — no hemos cuestionado si tiene que ser una app (podría ser WhatsApp), si tiene que ser Belvo, o si el destino final tiene que ser "disputar con el banco".
>
> Aplica SCAMPER a la idea original buscando las versiones más disruptivas posibles. Para cada letra (Sustituir, Combinar, Adaptar, Modificar al extremo, Poner en otro uso, Eliminar, Reordenar) genera 2 ideas exploración. Criterio: si el resultado es "mejorar" la idea original, no fue suficientemente disruptivo.

**Resultado — SCAMPER disruptivo (idea base: Vigía, delegado a hijo):**

**S — Sustituir:**
- **S1:** vigilancia comunitaria — el círculo del padre (otros adultos mayores, vecinos, grupo religioso) recibe alertas cruzadas ante patrones anómalos compartidos, repartiendo la responsabilidad. Rompe el supuesto de que la vigilancia debe recaer en un hijo individual.
- **S2:** poder legal digital que autoriza a un agente automatizado a presentar la reclamación directo ante Condusef y el banco, sin gestión familiar manual. Rompe el supuesto de que el destino final tiene que ser "disputar con el banco" a través de la app.

**C — Combinar:**
- **C1:** combinar el dispositivo físico con la rutina de medicamentos del padre — el mismo dispensador incluye el botón de "reconozco este cargo".
- **C2:** combinar la app con el grupo familiar completo — la decisión de disputar o cancelar se vuelve una votación rápida entre hermanos en un chat grupal integrado.

**A — Adaptar:**
- **A1:** adaptar el modelo de gestión integral de siniestros de aseguradoras de auto — Vigía cobra una prima mínima y reembolsa de inmediato desde un fondo colectivo, peleando ella misma la disputa después.
- **A2:** adaptar el modelo japonés de *mimamori* (telecuidado de adultos mayores con sensores en electrodomésticos) — el gasto financiero se vigila como un signo vital más.

**M — Modificar al extremo:**
- **M1:** modificar el tiempo de alerta al extremo — de avisar en minutos a bloquear la transacción en tiempo real antes de que se complete.
- **M2:** modificar quién paga al extremo — 100% gratis para hijo y padre, financiado por comisión de éxito que cobra al banco o comercio cuando Vigía evita un chargeback (B2B2C puro).

**P — Poner en otro uso:**
- **P1:** para tutores legales de personas bajo interdicción, con obligación fiduciaria de reportar el manejo de cuentas de terceros.
- **P2:** para departamentos de finanzas de PYMEs que administran tarjetas corporativas de empleados — el "padre" es el empleado, el "hijo" es contraloría.

**E — Eliminar:**
- **E1:** eliminar la app por completo — todo el flujo ocurre por WhatsApp Business con IA conversacional.
- **E2:** eliminar al hijo como intermediario obligatorio — el padre autoriza directo a su banco (vía Belvo) a bloquear cualquier cargo fuera de reglas simples predefinidas.

**R — Reordenar:**
- **R1:** reordenar el momento de la decisión — pre-autorización de una lista blanca de comercios/montos esperados; el sistema solo alerta lo que no está en esa lista.
- **R2:** reordenar quién contrata — el padre, no el hijo, contrata Vigía mientras aún tiene plena capacidad, como parte de su plan de retiro.

Nota de viabilidad de Claude: C2, P1, P2, E1, R1 y R2 son las que se pueden construir solo en 6 meses sin depender de integraciones bancarias de escritura, licencias de seguros o coordinación de múltiples usuarios.

### Prompt 4.2 (Claude)

> Actúa como un sintetizador de conceptos de negocio con experiencia en crear propuestas de valor originales cruzando ideas que provienen de lógicas distintas. Un buen remix no suma features — reencuadra quién se beneficia, cómo se entrega el valor o por qué alguien pagaría.
>
> Las 4 ideas de SCAMPER elegidas: M2, E1, P2, P1 *(ver arriba)*. Genera 3 conceptos remix cruzando estas ideas, donde al menos uno cambie quién paga, quién usa, o cuándo ocurre la intervención.

**Resultado — Remix de ideas** (base: existe una oportunidad para hijos que quieren proteger las finanzas de un padre mayor sin que este use la app del banco):

**Remix 1 — Vigía Corporativo** (P2 + M2): servicio de protección de gasto para tarjetas corporativas de PYMEs; contraloría recibe alertas de cargos duplicados, fraude o suscripciones olvidadas en tarjetas de empleados. Sin costo para empresa ni empleado; se monetiza cobrando comisión al banco emisor o comercio cuando Vigía evita o resuelve un cargo indebido, vendiéndose directo a despachos contables. Lo que genera el cruce: P2 daba un cliente urgente pero exigía convencerlo de pagar una suscripción; M2 quita esa barrera al no cobrarle nada a nadie directamente.

**Remix 2 — Guardián Fiduciario** (E1 + P1): asistente de cumplimiento para tutores legales que administran cuentas de personas bajo interdicción, operado enteramente por WhatsApp Business con IA, sin app que instalar. Alerta al fiduciario por WhatsApp, clasifica si conviene disputar o cancelar, y genera automáticamente el reporte periódico que la ley exige. El artefacto físico se convierte en un sello o QR de confirmación. Se vende por suscripción profesional a despachos de tutela y notarías. Lo que genera el cruce: P1 daba un cliente obligado a reportar pero asumía una app profesional; E1 elimina esa fricción y juntas generan un asistente que además redacta el reporte legal exigido.

**Remix 3 — Vigía de Confianza Bancaria** (E1 + M2): la misma detección de card-testing y suscripciones accidentales para hijos que cuidan a un padre mayor, pero distribuida y financiada directamente por el banco emisor como beneficio de fidelización, no vendida por Axel al hijo. Todo el flujo ocurre por WhatsApp; el banco paga la licencia porque reduce su propio costo de fraude y retiene clientes. El canal de venta deja de ser una web dirigida al hijo y se convierte en una alianza B2B con el banco. Lo que genera el cruce: M2 ya evitaba cobrarle al usuario final, pero seguía siendo Axel quien vendía; combinado con la baja fricción de E1, el producto se vuelve tan simple que el banco puede regalarlo directo a sus clientes.

Nota de Claude: Remix 1 y 2 sacan la idea del núcleo familiar hacia B2B puro; Remix 3 es el único que conserva a la familia como cliente.

### Prompt 4.3 (Claude)

> Actúa como un evaluador crítico de conceptos de negocio con experiencia en filtrar ideas de producto digital-físico bajo criterios de mercado real en América Latina. Tu metodología es el filtro DVN: deseable, novedoso y viable, con veredicto honesto y justificación específica.
>
> Concepto A — Vigía Corporativo; Concepto B — Vigía hijo-papá (el concepto base, sin remix); Concepto C — Guardián Fiduciario *(descripciones completas arriba)*. Evalúa cada uno bajo los tres lentes DVN y da un puntaje y veredicto (llevar al Paso 5 / refinar antes / descartar).

**Resultado — Filtro DVN:**

Nota de Claude antes del filtro: el Concepto B no es un remix — es el concepto base tal cual, sin cruzar con ninguna idea de SCAMPER. Está permitido meterlo al DVN como punto de comparación, pero en el documento de evidencia debe llamarse "concepto base" o "control", no "remix".

**Concepto A — Vigía Corporativo:**
- 🔴 Deseable: ⚠️ — el dolor es real, pero plataformas de tarjetas corporativas que ya usan las PYMEs en México (Clara, Delt.ai, Runa) traen controles de gasto integrados de fábrica.
- 🟣 Novedoso: ❌ — competidores directos activos en México (Clara, Delt.ai, Runa, Debitoor).
- 🟢 Viable: ❌ — requiere integración con sistemas de tarjetas corporativas y negociar comisiones con bancos, un ciclo de ventas B2B/enterprise que no cierra en 6 meses solo.
- **Puntaje DVN: 0 de 3 — descartar.**

**Concepto B — Vigía hijo-papá:**
- 🔴 Deseable: ✅ — resuelve un problema de agencia real y documentado, validado por el Pain-Gain Map y la verificación de Perplexity.
- 🟣 Novedoso: ✅ — no se encontró competidor B2C en LATAM que combine detección vía agregador bancario + delegación autorizada al hijo + confirmación física del padre sin compartir credenciales.
- 🟢 Viable: ⚠️ — el software (Belvo + IA de clasificación) es viable solo en 6 meses; el riesgo real está en el artefacto físico.
- **Puntaje DVN: 2 de 3 — llevar al Paso 5.**

**Concepto C — Guardián Fiduciario:**
- 🔴 Deseable: ⚠️ — el dolor es agudo y la obligación legal de reportar da una razón de pago fuerte, pero el tamaño real del segmento en México no está verificado.
- 🟣 Novedoso: ✅ — no se identificó competencia directa en la intersección de WhatsApp + detección de fraude vía Belvo + generación automática de reporte legal.
- 🟢 Viable: ❌ — generar con IA un reporte legal sin respaldo o revisión profesional es un riesgo de responsabilidad que no se puede asumir solo, sin abogado, en 6 meses.
- **Puntaje DVN: 1 de 3 — descartar.**

**Concepto recomendado para el Paso 5:** Vigía hijo-papá. Es el único que llega con evidencia real acumulada de varias fuentes independientes apuntando a que el dolor es real y sin competencia directa en LATAM. Riesgo principal a vigilar: Viable, no Deseable — dado que el profesor confirmó que el hardware es opcional, el MVP de 6 meses se define como solo-software (app + Belvo + IA), dejando el confirmador físico como segunda fase.

### Anotaciones — Paso 4

Las 4 ideas de SCAMPER elegidas para el 4.2: M2 (modelo de ingresos gratis, financiado por comisión), E1 (eliminar la app, todo por WhatsApp), P2 (contraloría de PYMEs), P1 (tutores legales/fiduciarios).

---

## Paso 5 — Verificación de deseabilidad comparativa

### Prompt 5.1 (Perplexity) — aplicado a Concepto A: Vigía hijo-papá

> Actúa como un investigador de mercado especializado en validar la deseabilidad de oportunidades de negocio en América Latina usando evidencia de comportamiento observable — no proyecciones ni opiniones de expertos.
>
> Concepto: Vigía hijo-papá. Usuario: hijos adultos de 35 años que ayudan a administrar las finanzas de un padre mayor de 60-70 años. Dolor que resuelve: la persona protegida no puede/quiere/tiene tiempo de usar la app del banco. Ganancia: que un tercero avise de un cargo no reconocido o suscripción por primera vez.
>
> Verifica las 5 señales de deseabilidad con evidencia real y observable: (1) pago actual por soluciones imperfectas, (2) comunidades activas, (3) frecuencia del problema, (4) costo observable, (5) workarounds en uso.

**Resultado — Verificación de deseabilidad, Vigía hijo-papá:**

- **Señal 1 — Pago por soluciones imperfectas:** ❌ no encontrada. No hay evidencia de productos específicos en México/LATAM que los hijos paguen para monitorear finanzas de padres mayores. Existen productos adyacentes en EE.UU. (Experian Family Plan $34.99/mes, Greenlight Family Shield) que no operan en LATAM.
- **Señal 2 — Comunidades activas:** ✅ confirmada. Reddit r/MexicoFinanciero: post "Mejor forma de apoyar la 'jubilación' de mis papás" (74 upvotes, 88 comentarios); r/mexico: "¿Han sido soporte financiero para sus papás?" (36 comentarios); 4 de cada 10 mexicanos recurren a grupos de Facebook antes que a Condusef tras un fraude; videos de YouTube sobre estafas a adultos mayores con miles de vistas.
- **Señal 3 — Frecuencia del problema:** ⚠️ parcial. Cada mexicano recibe un intento de estafa cada 4 días (86/año); 32% de todas las quejas por fraude bancario provienen de adultos mayores; no hay dato específico de frecuencia de detección por hijos.
- **Señal 4 — Costo observable:** ✅ confirmada. $20,000–$50,000 pesos promedio por víctima de fraude bancario; solo 1.4% del dinero robado se recupera; costo de tiempo documentado en testimonios de Reddit.
- **Señal 5 — Workarounds en uso:** ✅ confirmada. Cinco workarounds documentados en Reddit: pagos automáticos de servicios desde la tarjeta del hijo, envío de despensa en vez de efectivo, cantidad fija mensual con reserva oculta, hojas de cálculo para rastrear ingresos/gastos, tarjetas de débito con monto limitado.

**Resumen:** 3 confirmadas (comunidades activas, costo observable, workarounds), 1 parcial (frecuencia), 1 ausente (pago por soluciones imperfectas).

### Prompt 5.1 (Perplexity) — mismo prompt, aplicado a Concepto B: Guardián Fiduciario

> *(Mismo formato de prompt que arriba, cambiando el concepto.)* Concepto: Guardián Fiduciario. Usuario: tutores/fiduciarios bajo interdicción. Dolor que resuelve: se enteran demasiado tarde de un cargo sospechoso. Ganancia: detectar qué fue y que no vuelva a ocurrir.

**Resultado — Verificación de deseabilidad, Guardián Fiduciario:**

- **Señal 1 — Pago por soluciones imperfectas:** ❌ no encontrada. Existen soluciones de contabilidad fiduciaria en EE.UU. (Oscar Tracker, Guardian, STI FAS, CosmoLex, $199–$500 USD/mes) que no operan en México; en México se usa software contable genérico (QuickBooks, Xero) o Excel.
- **Señal 2 — Comunidades activas:** ❌ no encontrada. No se encontraron comunidades activas de tutores/fiduciarios en México/LATAM discutiendo problemas operativos.
- **Señal 3 — Frecuencia del problema:** ⚠️ parcial. Obligación legal de rendir cuentas anualmente (art. 590 y 602 del Código Civil Federal), pero no hay dato de frecuencia de detección de cargos sospechosos por tutores.
- **Señal 4 — Costo observable:** ✅ confirmada. Honorarios de tutores/albaceas del 1.5%–5% del patrimonio; riesgo de remoción del cargo por incumplimiento; costo de software contable genérico y de WhatsApp Business API.
- **Señal 5 — Workarounds en uso:** ✅ confirmada. Software contable genérico adaptado manualmente, contratación de abogados/contadores externos, registros manuales en libretas, uso de WhatsApp Business básico sin automatización.

**Resumen:** 2 confirmadas (costo observable, workarounds), 1 parcial (frecuencia), 2 ausentes (pago por soluciones imperfectas, comunidades activas).

### Prompt 5.2 (Claude)

> Actúa como un mentor de emprendimiento con experiencia en ayudar a equipos de producto a tomar decisiones difíciles entre dos direcciones de negocio usando evidencia de mercado. Tu especialidad es el diagnóstico comparativo. Eres directo y específico — no recomiendas "explorar los dos" cuando los datos favorecen claramente uno.
>
> Concepto A — Vigía hijo-papá y Concepto B — Guardián Fiduciario, con sus respectivas verificaciones de Perplexity *(ver arriba)*.
>
> Necesito: (1) **DIAGNÓSTICO COMPARATIVO** de deseabilidad; (2) **RIESGO DE SUICIDIO CREATIVO POR CONCEPTO** (sin dolor real / ya existe / no puede construirse); (3) **MAPA DE HIPÓTESIS** — 2 hipótesis falseables por concepto, con cómo probarlas.

**Resultado:**

Antes del diagnóstico, dos correcciones de Claude sobre los datos de Perplexity: (1) en Concepto A, Señal 3, Perplexity mezcló dos métricas distintas — dijo que las reclamaciones de adultos mayores "subieron 32% en 2025-2026", pero verificado con fuente primaria (Condusef vía El Imparcial, junio 2026) el incremento real es 11.4%; el 32% es el porcentaje de concentración de quejas (adultos mayores = 32% del total), no una tasa de crecimiento. (2) en Concepto B, Señal 4, Perplexity cita "honorarios de tutores/albaceas" pero tutor y albacea son figuras legales distintas en México — el albacea administra la herencia de alguien que ya murió, el tutor administra las finanzas de alguien vivo bajo interdicción; si la fuente real habla de albaceazgo, no aplica al concepto de tutela, lo que pone en duda esa señal.

**Diagnóstico comparativo:**

**Concepto A — Vigía hijo-papá:** nivel de deseabilidad alto. Fortaleza principal: comunidades activas + workarounds documentados con evidencia de comportamiento real (el hilo de Reddit con 74 upvotes describe cinco workarounds manuales que hijos mexicanos ya usan hoy). Riesgo principal: Señal 1 (pago) ❌ — nadie está pagando todavía por una solución dedicada. Tipo de suicidio creativo más probable: sin dolor real, en su variante más peligrosa — no es que no exista dolor, es que ya lo están resolviendo gratis e informalmente, lo cual reduce la disposición a pagar por una versión formal. Nivel de riesgo: medio.

**Concepto B — Guardián Fiduciario:** nivel de deseabilidad bajo. Fortaleza principal: la obligación legal de rendir cuentas es real, recurrente y verificable — el único punto sólido del concepto. Riesgo principal: Señal 1 (pago) ❌ y Señal 2 (comunidades) ❌ simultáneas, más un problema no resuelto por ninguna de las dos verificaciones: no existe un número confirmado de casos de tutela activos en México, así que ni siquiera se puede probar el umbral de 50,000+ del Paso 6. Tipo de suicidio creativo más probable: sin dolor real — no porque el dolor legal no exista, sino porque no hay señal de que nadie lo esté buscando resolver activamente (cero comunidades, cero competidores, cero pago) — la ausencia total de competencia aquí no es mercado azul, es mercado sin descubrir o inexistente. Nivel de riesgo: alto.

**Hipótesis — Concepto A:**

H1: "Creemos que hijos de 30-40 años que ya apoyan económicamente a un padre de 60-70 años detectan cargos sospechosos o suscripciones no reconocidas en la cuenta del padre al menos una vez cada 2-3 meses, y pagarían entre $99-$149 MXN/mes porque les ahorra el tiempo que hoy gastan revisando estados de cuenta o pidiendo comprobantes. Si esto es falso: si la frecuencia real es de una vez al año o menos, el negocio pasa de protección continua a algo tipo seguro ocasional, y el modelo de precio cambia de suscripción mensual a un cobro por evento o anual." Cómo probarla: en una entrevista de 20 min, pedir al hijo que revise su historial de WhatsApp o notas donde coordina dinero con su padre y cuente cuántas veces en el último año detectó algo raro.

H2: "Creemos que el hijo preferiría una alerta automática con clasificación de IA sobre sus workarounds actuales porque estos consumen tiempo y no detectan fraude, solo controlan lo que él mismo envía. Si esto es falso: si el hijo está conforme con controlar solo lo que envía y no le importa lo que el padre ya tiene en su cuenta, el problema real es sobre control de transferencias propias, no sobre monitoreo de fraude en la cuenta preexistente — un negocio distinto." Cómo probarla: preguntar directamente "si hoy te avisara una app cada vez que aparece un cargo raro en la cuenta de tu papá, ¿dejarías tu workaround actual? ¿por qué sí o por qué no?"

**Hipótesis — Concepto B:**

H1: "Creemos que los tutores legales enfrentan el riesgo de remoción judicial por rendición de cuentas tardía con suficiente frecuencia como para pagar $500-$1,500 MXN/mes por automatizarla, porque hoy lo hacen a mano con Excel o pagando a un contador externo. Si esto es falso: si la mayoría delega esto sin fricción a un contador que ya tenían contratado por otras razones, el dolor real no es 'generar el reporte' sino algo más específico no identificado." Cómo probarla: contactar 3-5 despachos de notarías o abogados familiares y preguntar cómo preparan hoy la rendición anual y qué les cuesta.

H2: "Creemos que existen al menos 50,000 casos activos de tutela/interdicción en México, el umbral mínimo del Paso 6. Si esto es falso: si el número real es de unos cuantos miles, Guardián Fiduciario no puede pasar el criterio de mercado sin importar qué tan bien resuelva el problema, y debe descartarse de inmediato." Cómo probarla: pedir a un despacho notarial o al Poder Judicial estatal un número aproximado de juicios de interdicción activos o resueltos por año.

**Veredicto comparativo:** concepto con mayor deseabilidad: A. Por qué: Vigía hijo-papá tiene 3 de 5 señales confirmadas con evidencia de comportamiento real y específico, mientras que Guardián Fiduciario tiene como máximo 2, una de ellas con una fuente que probablemente confunde tutela con albaceazgo, y ningún dato de tamaño de mercado verificable. Recomendación: llevar A al Paso 6 — no explorar ambos, la brecha de evidencia es demasiado grande y B tiene un problema estructural (tamaño de mercado desconocido) que ninguna entrevista de deseabilidad va a resolver.

---

## Paso 6 — Criterios de selección (respuestas propias)

**Criterio 1 — Pasión:**

*¿Alguien del equipo ha vivido este problema, conoce a alguien que lo sufre, o tiene una razón personal para querer resolverlo?* Sí, empecé a explorar este problema justamente porque a mi mamá le ocurrió y de cierto modo me molesté mucho por lo que le había pasado. Y no encontré algo similar que lo resuelva o que ayude a la gente en México. Por lo que, quise hacer algo al respecto.

*¿Estarían dispuestos a pasar una tarde entera visitando a 5 usuarios de este sector para entender mejor el problema, aunque no formara parte de ningún entregable?* Sí, ya que conozco a gente con el rango de edad específico. Por lo que, me sería fácil poder investigar y encontrar los dolores de la gente, con el fin de resolverlo lo mejor que pueda.

*Si el proyecto no tuviera calificación, ¿seguirían trabajando en él?* Sí, de hecho ya hice este mismo proceso tres veces para pulir mejor la idea y que tuviera mínimo 3 señales aprobadas para pasar. Y en el proceso me tardé más o menos unas 8 horas.

**Criterio 2 — Habilidad:**

*¿Pueden nombrar el tipo de sensor, actuador o modelo de IA que usaría el artefacto físico?* Sí, utilizaría Belvo para acceder solo en modo vista a las cuentas y pagos. Para la parte de IA se utilizará Claude. Y además se utilizará WhatsApp Business y otras más.

*¿El componente más difícil del concepto es algo que ya han hecho antes o algo completamente nuevo?* He hecho algo similar sin probarlo al 100%. He hecho interfaces para apps, sin embargo no he corrido todo el programa para ver su operación al 100%. Ya investigando más, las opciones que tengo para entrelazar todo son viables para el tiempo que tengo.

*¿Requiere integraciones o dependencias externas que podrían bloquear el desarrollo antes de semana 13?* Que podrían bloquearse, no. Pero sí hay APIs de terceros como Claude Code o Bubble.

**Criterio 3 — Mercado:**

*Puntaje de deseabilidad del Paso 5 (mínimo 3 de 5 señales confirmadas):* tengo 3 señales confirmadas, lo mínimo.

*Tamaño mínimo del mercado (¿al menos 50,000 usuarios plausibles en LATAM?):* sí, el segmento (hijos adultos con un padre o madre de 60-70 años) supera ampliamente los 50,000 usuarios plausibles en México. Partiendo del dato verificado de INEGI (15.1 millones de personas 60+, INEGI 2021) y aplicando supuestos conservadores sobre el rango de edad específico y la proporción con un hijo activamente involucrado, el segmento plausible está entre 375,000 y 750,000 personas.

---

## Matriz de selección

**Equipo:** Axel

| Criterio | Concepto A — Vigía hijo-papá | Concepto B — Guardián Fiduciario |
|---|---|---|
| **1. Pasión** — ¿seguirían si no hubiera calificación? | Sí. Razón personal: resolver los problemas de pagos de comercios y suscripciones que le pasa a mi mamá y a mí. | No. Razón personal: probablemente no — el tema legal no me apasiona mucho y tengo muy poca experiencia en el tema. |
| **2. Habilidad** — ¿pueden nombrar sensor, IA y protocolo? | Parcial. Componente más arriesgado: los temas de Arduino o similar los desconozco un poco; en cambio la IA y el protocolo sí (Claude Code, vinculación con Belvo). | No. Componente más arriesgado: el protocolo no lo sé, el sensor tampoco; lo único similar a la otra idea es la parte de IA. |
| **3. Mercado** — señales de deseabilidad y tamaño del segmento | ✅ 3 de 5. Tamaño estimado: 375,000–750,000. Pasa: sí. | ✅ 1 de 5. Tamaño estimado: no determinado. Pasa: no. |
| **Resultado** | **2/3 ✅ → ajustar** | **0/3 ✅ → cambiar** |

**Concepto elegido para el Paso 7:** Vigía hijo-papá.

**Por qué este y no el otro:** porque me apasiona más el tema financiero sin meterme a lo legal y me intriga de una forma natural que hace que investigue más para resolver el problema.

---

## Paso 7 — Defensa final

*(Texto propio de Axel, sin edición de contenido — solo ortografía.)*

Identifiqué que los hijos adultos de 35 a 40 años que ayudan a administrar las finanzas de un padre mayor de 60-70 años tienen el problema de que se enteran demasiado tarde de cargos sospechosos. Como cargos tipo "card testing", suscripciones que se activaron por error o montos que el padre no reconoce.

Hoy lo resuelven así: en el mejor caso, el banco bloquea la tarjeta y el padre pasa días esperando que le liberen el cargo. En el peor caso, el padre no ve la notificación, y cuando revisa su estado de cuenta el cargo ya está reflejado y el banco no puede hacer nada.

Sé que el problema es real por tres señales: respecto a la frecuencia, Condusef recibió 1.5 millones de quejas por fraude bancario en el primer trimestre de 2026, lo que se traduce en 12 denuncias por minuto, y las reclamaciones de adultos de 60 a 69 años crecieron 17% en solo 5 meses. En cuanto al costo observable, el fraude de card testing usa cargos de 0.50 a 5 dólares porque los bancos solo alertan montos grandes, según Mastercard, y además el mexicano promedio gasta $9,000 pesos al año en suscripciones olvidadas, según ABC Noticias. Por último, respecto a la comunidad activa, El Imparcial reportó que 1 de cada 3 víctimas de fraude ya es adulto mayor, y al menos siete medios distintos cubrieron el tema solo en 2026.

Soy el indicado porque tengo experiencia cercana con este problema en mi familia, y me parece injusto que los padres, que ya cargan con suficientes preocupaciones, pierdan dinero por algo que nadie vigila. Además, ya tengo experiencia diseñando interfaces en Figma, conozco el funcionamiento de medios de pago digitales y comercio electrónico, y ya hice pruebas de lectura de cargos con Belvo. Eso me facilita construir una app que protege a los adultos de 60 a 70 años de card testing y suscripciones activadas por error, usando el modelo de IA (Claude Haiku) para clasificar cada cargo.

Existe una oportunidad para los hijos de 35 a 40 años de detectar cargos no reconocidos de forma rápida en las cuentas de padres de 60 a 70 años, porque hoy los bancos no avisan sobre montos pequeños de 10 a 50 pesos, según Condusef, y que a la larga escalan hasta casi 1,000 pesos, según Forbes México.

Antes de esta clase creía que mi idea resolvía la mayoría de los fraudes bancarios en México, para cualquier edad. Hoy descubrí que quien resuelve el problema no tiene que ser el dueño de la cuenta, que la arista B2B legal no aplicaba, y que el usuario real es el padre de 60 a 70 años, apoyado por su hijo de 35 a 40 años. Esto modifica mi dirección así: me enfoco en construir el software completo de la app, conexión bancaria y clasificación con IA, y dejo el dispositivo físico del padre como una fase futura del proyecto.

---

*El Reporte de Oportunidad final (con el formato oficial del profesor: problema, evidencia de deseabilidad, Pain-Gain Map, concepto recomendado, hipótesis y referencias) está en la [página principal de Semana 02](./semana-02.html).*
