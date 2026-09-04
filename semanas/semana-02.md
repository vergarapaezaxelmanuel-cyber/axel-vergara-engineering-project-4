---
title: Semana 02 - Búsqueda de oportunidades con IA
layout: default
parent: Semanas
nav_order: 2
---

# Semana 02: Búsqueda de oportunidades con IA

## Lo que hice esta semana

Esta semana hice un proceso de siete pasos para buscar y validar una oportunidad de negocio real, usando Perplexity y Claude como herramientas de investigación. Empecé analizando el ecosistema de mi idea original (una app que detecta cargos sospechosos en cuentas bancarias) y terminé identificando que el problema más fuerte no lo vive quien tiene la cuenta, sino su hijo: quien se entera tarde y es quien realmente puede actuar.

Empecé a explorar este problema porque a mi mamá le pasó justo esto, y me molestó no encontrar en México algo que ayudara a resolverlo. Después de auditar insights, mapear dolores y ganancias, correr un SCAMPER disruptivo y comparar tres conceptos distintos con un filtro DVN (Deseable, Novedoso, Viable), elegí el concepto final: **Vigía (modelo Papá-Hijo)**, una app conectada vía Belvo que detecta cargos sospechosos ("card testing") y suscripciones activadas por error en la cuenta de un padre o madre mayor, y avisa a su hijo para que decida si disputarlo o cancelarlo — sin que el padre tenga que compartir sus claves bancarias con nadie.

En el camino descarté otros dos conceptos que exploré a fondo: "Vigía Corporativo" (una versión B2B para empresas) y "Guardián Fiduciario" (un asistente para tutores legales), porque ninguno pasó el filtro de deseabilidad, novedad y viabilidad tan bien como la versión familiar.

## Reporte de oportunidad

**Equipo:** Axel Manuel Vergara Páez

**Concepto elegido:** Vigía (Papá-Hijo)

### El problema

El segmento específico son hijos adultos (de 30 a 40 años) que están pendientes de las finanzas de un padre o madre mayor (de 60 a 70 años), sin ser cotitulares de la cuenta ni tener acceso a las claves bancarias del padre.

El dolor: los adultos mayores son blanco frecuente de cargos pequeños no autorizados — sobre todo "card testing" (cargos de prueba de entre $0.50 y $5 USD que usan delincuentes para validar tarjetas robadas antes de intentar un fraude mayor; Mastercard Newsroom, 2024) y suscripciones activadas por error. Estos cargos pasan desapercibidos porque los bancos alertan por montos grandes, no por montos chicos, y porque el padre no revisa su estado de cuenta con la frecuencia necesaria para notarlos a tiempo.

El workaround actual y su costo observable: hoy el hijo revisa el estado de cuenta del padre de forma manual, cuando lo visita, o cuando el padre le comparte capturas de pantalla por WhatsApp. Es un proceso lento, no sistemático, y depende de que el padre recuerde avisar. Cuando el hijo detecta el cargo, muchas veces ya pasó la ventana práctica para disputarlo con el banco o cancelarlo con el comercio antes de que se repita.

### Evidencia de deseabilidad

**Señal 1. Costo observable:**

El fraude de "card testing" usa cargos de $0.50 a $5 USD para probar tarjetas robadas sin activar alertas bancarias, que sí están calibradas para montos grandes (Mastercard Newsroom, 2024). Como segunda capa del mismo problema: el mexicano promedio gasta cerca de 9,000 MXN al año en suscripciones activadas por error que ya ni recuerda (ABC Noticias, 2024).

**Señal 2. Comunidades activas:**

El Imparcial (2026, 22 de junio) reportó que Condusef alerta que 1 de cada 3 víctimas de fraude bancario en México ya es adulta mayor, y que las quejas por fraude digital subieron 11.4% en 2026. No es una nota aislada: al menos siete medios distintos (N+, Xataka México, Vanguardia, MVS Noticias, El Siglo de Torreón, El Informador, entre otros) publicaron notas propias sobre este mismo tema solo en 2026.

**Señal 3. Frecuencia del problema:**

Específicamente para el rango 60 a 69 años, las reclamaciones de fraude bancario crecieron 17% en el periodo enero-mayo de 2026 (Condusef, citado en MVS Noticias, 2026).

### Pain-Gain Map (versión final)

**Dolores:**

1. **D1** — Se enteran demasiado tarde de un cargo sospechoso.
2. **D2** — El proceso de aclaración y/o resolver el problema es muy largo y llega a frustrar a los usuarios.
3. **D3** — La persona protegida no puede, no quiere o no tiene el tiempo de usar la app de los bancos para resolver el problema.
4. **D4** — El padre siente que pierde autonomía si tiene que compartir claves o dar acceso constante a su cuenta para que alguien lo vigile.
5. **D5** — El hijo tampoco se entera a tiempo hoy, porque depende de que el padre le avise o le comparta capturas de pantalla — no tiene visibilidad activa y constante.

**Ganancias:**

1. **G1** — Que un tercero, desde un hijo o una aplicación, les avise si hay algún cargo no reconocido o una suscripción por primera vez.
2. **G2** — El hijo tiene tranquilidad de saber que se enterará a tiempo, sin tener que revisar manualmente o esperar a que el padre le avise.
3. **G3** — Detectar qué fue y que no vuelva a ocurrir otra vez.
4. **G4** — El padre mantiene su autonomía, no comparte claves ni pierde el control de su cuenta, solo recibe apoyo puntual cuando hay algo sospechoso.
5. **G5** — Dejarían de perder mucho tiempo resolviendo todo, y les dirían qué hacer para resolverlo.

### Concepto recomendado

**Nombre:** Vigía (Papá-Hijo)

**Descripción:** app conectada vía Belvo (agregador bancario de solo lectura) que monitorea la cuenta del padre y usa IA para clasificar principalmente patrones de card-testing y suscripciones activadas por error. El hijo recibe la alerta (no el padre) y decide si disputar con el banco o cancelar con el comercio. El padre nunca comparte sus claves bancarias con el hijo.

**Cómo llegué a este concepto:** antes de esta versión final, corrí un SCAMPER disruptivo sobre la Vigía que ya tenía, y de ahí salieron varias ideas sueltas, cada una marcada con una letra (por ejemplo E1, M2, P1, P2). Crucé algunas de esas letras entre sí para armar tres conceptos completos y distintos, y así poder comparar cuál me convenía más:

El primero, cruzando las letras P2 y M2, era **Vigía Corporativo**: en vez de proteger la cuenta de un padre, protegía las tarjetas de los empleados de una empresa, y se la vendía a despachos contables. Lo descarté porque perdía por completo al cliente familiar, que es el corazón de este proyecto — sacaba a mi mamá de la ecuación.

El segundo, cruzando las letras E1 y P1, era **Guardián Fiduciario**: un asistente para tutores legales que manejan el dinero de personas que, por orden de un juez, ya no pueden manejarlo ellas mismas. Lo descarté porque me metía en un riesgo legal (la IA generaría reportes legales sin que nadie los revisara) y porque no tengo pasión ni experiencia en ese tema.

El tercero, cruzando las letras E1 y M2, era **Vigía de Confianza Bancaria**: la misma idea de detectar cargos sospechosos para hijos que cuidan a un padre mayor, pero con el banco pagando la licencia y regalándosela a sus clientes, en vez de que yo se la vendiera directo a la familia.

Cuando comparé los tres con el filtro DVN (Deseable, Novedoso, Viable), Vigía de Confianza Bancaria fue la que mejor calificó, con 2 de 3; Vigía Corporativo se quedó en 0 de 3, y Guardián Fiduciario en 1 de 3.

Pero ese remix ganador tenía un problema: dependía de convencer a un banco de pagar y distribuir la app, un proceso de venta lento y que no controlo. Así que lo adapté: mantuve la idea de detectar los cargos y avisarle al hijo, pero regresé a venderle directo a la familia, que es el segmento que sí validé con evidencia real en el Paso 5, y la razón por la que estoy haciendo este proyecto (mi mamá). Ese cambio — quién paga, no qué hace el producto — es lo que me llevó al concepto final: Vigía, modelo hijo-papá.

**Puntaje DVN:**

1. **Deseable** — resuelve un problema de agencia real (quien sufre el dolor —el padre— no es quien puede actuar; quien puede actuar —el hijo— es quien paga), validado por el Pain-Gain Map y la verificación de Perplexity.
2. **Novedoso** — no se encontró un competidor B2C en LATAM que combine detección vía agregador bancario + delegación autorizada al hijo + confirmación física del padre sin compartir credenciales.
3. **Viable** — el software (Belvo + IA de clasificación) es viable solo en el semestre; el riesgo real está en el artefacto físico, por eso queda fuera del MVP.

### La oportunidad en una oración

Existe una oportunidad para los hijos de 35 a 40 años de detectar cargos no reconocidos de forma rápida en las cuentas de padres de 60 a 70 años, porque hoy los bancos no avisan sobre montos pequeños.

### Por qué este equipo

Mi mamá ha sufrido cargos y suscripciones que no reconoce en su cuenta, así que el problema es algo concreto y cercano, no algo que me inventé. Y en cuanto a la habilidad usaría primero Belvo para conectarme al banco y solo leer los movimientos, y un modelo de IA más simple y barato (Claude Haiku) al que le doy algunos ejemplos para que aprenda a detectar los cargos sospechosos. La parte de hardware (el aparato físico) es donde tengo menos experiencia hoy. Por eso la dejo fuera del MVP del semestre y me enfoco en el software.

### Hipótesis para semana 3

**Hipótesis 1 — disposición a pagar (la más desarrollada, con guía de entrevista lista):**

Creo que los hijos de 35 a 40 años que ayudan a un padre de 60 a 70 años con sus finanzas ya le dedican tiempo a revisar su cuenta, y estarían dispuestos a pagar por una alerta automática y temprana, porque hoy pierden tiempo y se enteran tarde de los cargos.

Se valida con entrevistas cortas a 5-8 hijos de 35 a 40 años que ya apoyen a un padre de 60 a 70 años, con estas preguntas:

1. "Cuéntame de la última vez que notaste un cargo o cobro raro en la cuenta de tu papá o mamá — ¿cómo te enteraste?"
2. "¿Qué hiciste cuando lo notaste? ¿Cuánto tiempo te tomó resolverlo?"
3. "¿Cada cuánto revisas tú, no tu papá, los movimientos de su cuenta o tarjeta?"
4. "¿Alguna vez has pagado, o has estado a punto de pagar, por algo que te ayude a cuidar las finanzas de tus papás?"
5. "Si algo te avisara automáticamente apenas aparece un cargo raro en la cuenta de tu papá, ¿qué tendría que hacer para que de verdad lo usaras?"

Criterio: se confirma si 4 de 5 (o más) cuentan una historia real y específica de un cargo que no reconocieron, y ya revisan la cuenta del padre por su cuenta, sin que nadie se los haya sugerido. Se debilita si la mayoría no tiene una historia concreta, dice que su padre ya lo resuelve solo, o nunca ha revisado la cuenta por iniciativa propia — en ese caso, tengo que repensar qué tan real y qué tan seguido pasa este problema.

**Hipótesis 2 — aceptación del padre:**

Creo que los padres mayores aceptarían que su hijo reciba alertas de cargos sospechosos (sin compartirle su clave del banco), porque así mantienen su independencia, y no lo sentirían como una invasión. Se valida preguntándole a padres de 60-70 años cómo reaccionarían ante la idea, y si ya le dejan algo parecido a un hijo hoy (revisar su correo, hacer trámites). Si la mayoría lo rechaza o lo siente invasivo, tengo que rediseñar cómo se le explica el proceso al padre y cómo da su permiso.

**Hipótesis 3 — frecuencia del patrón:**

Creo que el patrón de card-testing y suscripciones por error pasa lo bastante seguido en este segmento (al menos una vez cada 2-3 meses por cuenta) como para justificar una alerta que se repite, y no un caso aislado. Se valida preguntando en las mismas entrevistas de la Hipótesis 1 cuántas veces pasó algo así en el último año. Si la mayoría dice "nunca" o "una vez en años", tengo que ampliar qué tipos de cargos detecta el concepto para que siga teniendo valor.

### Lo que cambió

En las últimas semanas puse a prueba dos preguntas. La primera: ¿la app debía vigilar la cuenta de la misma persona que la usa (Vigía autoservicio, sin que un hijo esté involucrado), o la cuenta de otra persona, cuidada por alguien de confianza (el modelo hijo-papá)? La segunda: además de comparar esas dos, probé una tercera opción pensada para empresas y con temas legales (Guardián Fiduciario, un servicio para tutores legales).

Para decidir entre las tres usé la Matriz de Selección del Paso 6 (cerrada el 03-sep-2026), que evalúa cada idea contra tres criterios — Pasión, Habilidad y Mercado — y da un veredicto: si la idea pasa los tres criterios, sigue igual; si pasa la mayoría pero falla uno, se ajusta; si falla casi todos, se cambia por otra idea.

El modelo hijo-papá pasó 2 de los 3 criterios, así que el veredicto fue ajustar. El único criterio que no pasó del todo fue habilidad, por el aparato físico (el botón que confirma cargos grandes) — lo resolví dejándolo como algo opcional, fuera de lo que voy a construir este semestre.

Guardián Fiduciario no pasó ninguno de los 3 criterios, así que el veredicto fue cambiar de idea — por eso ya no es el concepto que voy a desarrollar este semestre. Lo dejo documentado como posible línea de expansión a futuro (un servicio B2B, dirigido a tutores legales de personas que por orden de un juez ya no pueden manejar su propio dinero), pero no lo voy a desarrollar ahora porque no pude comprobar que el mercado tuviera al menos 50,000 usuarios posibles, y hoy no tengo ni pasión ni experiencia legal en ese tema.

### Referencias

ABC Noticias. (2024). *Cuánto gastan los mexicanos en suscripciones que no usan*. https://www.abcnoticias.mx

El Imparcial. (2026, junio 22). *Las quejas por fraudes bancarios digitales subieron 11.4% en 2026 y Condusef alerta que una de cada tres víctimas en México ya pertenece al sector de adultos mayores*. https://www.elimparcial.com/dinero/2026/06/22/las-quejas-por-fraudes-bancarios-digitales-subieron-114-en-2026-y-condusef-alerta-que-una-de-cada-tres-victimas-en-mexico-ya-pertenece-al-sector-de-adultos-mayores/

Fitzpatrick, R. (2013). *The Mom Test: How to talk to customers and learn if your business is a good idea when everyone is lying to you*. https://www.momtestbook.com/

INEGI. (2021). *Censo de Población y Vivienda 2020* [Datos de población 60 años y más]. Instituto Nacional de Estadística y Geografía. https://www.inegi.org.mx

Mastercard Newsroom. (2024). *Card testing: qué es y cómo protegerse*. https://www.mastercard.com/news

MVS Noticias. (2026, junio 18). *Fraudes bancarios en México aumentan: jóvenes de 18 a 29 años superan a adultos mayores en reclamaciones*. Con datos de Condusef (enero-mayo 2026). https://mvsnoticias.com/nacional/2026/6/18/aumentan-fraudes-bancarios-jovenes-las-principales-victimas-743354.html

## Evidencia

Como evidencia documento el proceso completo de los 7 pasos: cada prompt que usé y cada resultado que me dieron Perplexity y Claude, tal cual salieron.

[Ver el proceso completo (prompts y resultados) →](./evidencia-semana-02.html)

## Reflexión / siguientes pasos

Esta semana aprendí que investigar con IA no es preguntar una vez y quedarme con la primera respuesta — tuve que auditar lo que me devolvía Perplexity, corregir datos que se habían mezclado mal (como una cifra de crecimiento de reclamaciones que en realidad era una cifra de concentración de quejas), y descartar dos ideas completas (Vigía Corporativo y Guardián Fiduciario) antes de quedarme con la versión final. El siguiente paso es validar todo esto con entrevistas reales a hijos que tengan un padre o madre mayor, como quedó definido en las hipótesis del reporte.
