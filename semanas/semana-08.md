---
title: Semana 08 - Prototipado de Negocio, DFM y Disposición a Pagar
layout: default
parent: Semanas
nav_order: 8
---

# Semana 08 - Prototipado de Negocio, DFM y Disposición a Pagar

**Periodo:** Semana 8 del semestre
**Estado:** en curso — el plan de prototipado, la revisión DFM y la Tarea en casa 3 están cerrados; el Reporte de Prototipo es preliminar (4 de 7-9 contactos al corte del 6-nov-2026) y se sigue actualizando conforme lleguen más respuestas, sin reescribirse desde cero.

**Nota de privacidad:** esta página no incluye nombres completos ni enlaces personales de nadie fuera de mí. Los nombres de pila de las personas contactadas para la prueba de prototipo ya habían aparecido en semanas anteriores (Semana 3); mi profesor se menciona sin nombrarlo, igual que siempre.

## Lo que hice esta semana

El material de esta semana está pensado para un producto mecatrónico (carcasa, PCB, ESP32, manufactura física), y Vigilio no tiene componente físico en el alcance del MVP — la misma decisión que ya vengo aplicando desde Semana 5. Antes de llenar cualquier formato, mapeé qué partes del material aplican tal cual, cuáles ya están cubiertas por trabajo de semanas anteriores, y cuáles hay que traducir. De las cuatro familias de prototipo que pide el curso (Forma, Función, Experiencia, Negocio), solo Negocio aplicaba de verdad como algo nuevo por hacer — Experiencia ya se había resuelto con el wireframe de Figma de Semana 6, y Forma/Función no tienen sentido sin hardware propio.

Con eso claro, construí un plan de prototipado de negocio para probar el supuesto de mayor riesgo que seguía sin evidencia de comportamiento real: la disposición a pagar. Corrí también la revisión de costos operativos adaptada del DFM del curso, que encontró un problema de fondo en el flujo de onboarding del concepto ganador. Resolví ese hallazgo en la Tarea en casa 3, actualizando la justificación del BOM. Y construí y empecé a probar la landing de pre-orden real que pedía el plan — el reporte de esa prueba sigue en curso, con resultados preliminares que ya dejan ver algo interesante (y todavía ambiguo) sobre el supuesto que estoy probando.

## Plan de prototipado: por qué la disposición a pagar, y no otra cosa

Siguiendo el criterio del propio material (mayor riesgo / mayor indefinición / mayor controversia), identifiqué que el supuesto más riesgoso del proyecto seguía descansando en palabras, no en acciones: en mis entrevistas de Semana 3 (`canvas-mercado-semana4.md`), 4 de 7 personas dijeron "sí pagaría" y una propuso $99 MXN/mes de forma espontánea — pero ese mismo documento ya lo marcaba como "hipótesis crítica sin verificar". Es exactamente el riesgo que describe el Mom Test (Fitzpatrick, 2013): las respuestas directas sobre precio tienden a inflarse. Si este supuesto es falso, no es que el producto no funcione — es que nadie paga por él, y entonces todo el modelo económico de Semana 7 se cae sin importar qué tan bien esté calculado.

Al construir el plan, encontré y corregí un error propio: tenía escrito el segmento objetivo como "hijos/as de 35-45 años", pero el segmento real que ya había validado desde Semana 4 no tiene ese techo — es "24 años en adelante, con ingreso propio", sin límite superior fijo. Lo corregí en todo el plan antes de usarlo para nada más, porque de haberlo dejado así habría descartado candidatos válidos de prueba sin ninguna razón real.

El plan que armé fue un prototipo de **Negocio, resolución alta**: una landing real (extensión de la que ya existe en GitHub Pages) con el precio real ($99 MXN/mes), un video corto del clasificador de IA evaluando una transacción contra un historial simulado — no contra una regla de monto fijo, para demostrar detección por comportamiento y no por reglas estáticas (Bolton & Hand, 2002) — y un mecanismo real de pre-orden. Ajusté ese mecanismo respecto a mi idea original: no usé Stripe Payment Link porque activarlo en modo real en México exige una cuenta de persona física con actividad empresarial, trámite que no era viable en el tiempo disponible. En su lugar usé un botón que abre WhatsApp con un mensaje pre-cargado de reserva — sigue siendo una acción real y con fricción (escribir el mensaje), no solo una opinión. El umbral que definí: si al menos 3 de 7-9 personas ya entrevistadas completan la reserva por WhatsApp, considero el supuesto validado con comportamiento, no solo con palabra.

Dejé también documentado, antes de lanzar nada, qué hacer si alguien sí ofrece dinero real: aclarar primero que Vigilio está en fase de prototipo, dar una fecha estimada y la política de reembolso antes de pedir cualquier apartado, y nunca pedir que alguien guarde una tarjeta. Una pre-orden real de algo que no existe todavía es una técnica legítima — Bird Buddy la usó en Kickstarter antes de tener producto terminado — pero solo si es transparente sobre lo que es.

## Revisión de costos operativos (DFM adaptado): el hallazgo que cambió el onboarding

Adapté los 5 pasos del proceso de DFM de Ulrich, Eppinger y Yang (2026) — pensados para componentes/ensamble/soporte de manufactura física — a servicios, fricción de onboarding y soporte operativo, mismo criterio que ya usé para el BOM en Semana 7.

Los pasos 1 y 2 no trajeron nada nuevo: el costo variable ($7.387 MXN/cuenta/mes) y la clasificación de componentes (Bubble como único recortable, Belvo y Stripe fijos) ya estaban resueltos. El hallazgo real salió en el **Paso 3**: traduje los principios de diseño para ensamble (sin herramientas especiales, un solo movimiento, autoalineación, aseguramiento inmediato) al flujo de onboarding, y el diseño actual de "Vigilio a Distancia" —onboarding asistido por videollamada— los viola casi todos. Requiere que yo esté presente en cada conexión de cuenta nueva, lo cual no escala: a las 20-30 cuentas del piloto ya son 7-15 horas de mi tiempo solo en eso, y al tamaño real del mercado (304-608 hogares) es sencillamente imposible de sostener uno por uno. Es, en software, el mismo problema de fondo que el propio material usa como advertencia de apertura sobre un prototipo que solo una persona sabe ensamblar.

El Paso 4 confirmó la consecuencia directa: el "$0 de soporte técnico" que ya tenía presupuestado en el BOM de Semana 7 solo se sostiene si se resuelve el Paso 3 — con onboarding manual para todas las cuentas, ese costo en realidad crece 1:1 con cada cuenta nueva, no es $0. Y el Paso 5 —el que pide el material para evaluar efectos en otros factores, no solo ahorrar— me obligó a nombrar la tensión real: el onboarding asistido no fue un descuido, ganó la Matriz de Pugh de Semana 6 precisamente porque genera la confianza que el padre o madre mayor necesita para autenticarse con su propio banco. Migrar a autoservicio puro reduce el costo, pero puede fallar justo con la población para la que se diseñó el concepto. No es una contradicción resolver esto con una recomendación y, al mismo tiempo, dejarlo como hipótesis a prototipar después — es la forma honesta de manejar un trade-off real.

La Economía Circular y la Ley General en la materia no aplican: Vigilio no fabrica ni vende un artefacto físico, así que no hay ciclo de vida de materiales, REP ni distintivo de economía circular que evaluar — lo documento como "no aplica" explícitamente, en vez de forzar una traducción donde no la hay.

## Tarea en casa 3: aplicar la mejora y actualizar el BOM

Con el hallazgo del Paso 3 ya identificado, tomé la decisión: el onboarding por default pasa a ser autoservicio, mediante el widget de conexión de Belvo — el usuario conecta su banco solo, sin que yo esté presente. La videollamada asistida se mantiene, pero como soporte opcional, solo para quien de verdad la necesite (típicamente el padre o madre mayor con menos familiaridad tecnológica), no como el único camino. Esto no elimina el acompañamiento que hizo ganar a este concepto en la Matriz de Pugh — solo deja de forzarlo para todos. Quien pueda conectar su cuenta solo, lo hace más rápido; quien necesite ayuda, la sigue teniendo disponible.

El efecto en el BOM no es un cambio de número: es que la justificación detrás del "$0 de soporte técnico" ahora sí es sólida. Con onboarding manual para todos, ese costo crecía con cada cuenta nueva; con autoservicio por default, el costo de soporte deja de depender del total de cuentas y pasa a depender solo de la fracción de usuarios que de verdad pida ayuda asistida — que es justo el supuesto bajo el que se presupuestó originalmente ese $0.

## Reporte de prototipo (preliminar, al corte del 6 de noviembre de 2026)

Construí la landing con el video del clasificador y el mecanismo de pre-orden por WhatsApp en medio día, como estaba planeado. El video no salió a la primera: la primera versión del prompt que simula al clasificador respondía, por error, proponiendo "bloquear la tarjeta" — algo que contradice la arquitectura real de Vigilio (solo lectura vía Belvo, RI-01, sin capacidad de mover ni bloquear dinero). La segunda versión corrigió eso, pero dejó una advertencia técnica sobre el tamaño de la ventana de datos filtrada dentro del mensaje de cara al usuario, lo cual podía sonar como que el producto no funciona bien. La tercera versión, ya limpia en ambos aspectos, fue la que grabé para el video final — documento esto porque es evidencia de que verificar el output antes de usarlo, el mismo hábito de toda la página, también aplica a contenido generado para un prototipo, no solo a datos o cifras.

De 4 de 7-9 contactos que han respondido al corte: los 4 (Ángel, Melissa, Betsy y Aledi) vieron la página y el video completos y entendieron el mecanismo de detección sin que se les explicara nada — eso valida que el diseño de la landing comunica bien por sí solo. Dos dieron retroalimentación espontánea: Ángel sugirió automatizar el registro con QR, coincidiendo con el propio hallazgo de la revisión DFM sobre fricción de onboarding; Aledi reconoció sin que se le explicara el problema de cargos no detectados en adultos mayores. Los 4 caen dentro del segmento objetivo real una vez corregido el error de rango de edad que describo arriba. Ninguno de los 4, sin embargo, ha dado clic en "Reserva tu lugar" todavía.

Con una muestra de 4 y ese mismo patrón en los 4 casos, hay dos lecturas honestas y no descarto ninguna todavía: puede ser que el Mom Test esté funcionando exactamente como predice su propia literatura —opinión positiva no es compromiso real, y la ausencia de clics es justo la señal que el ejercicio buscaba poder observar—, o puede ser que el mecanismo de pre-orden por WhatsApp tenga algún problema de fricción o señalización propio que no deje medir bien la intención real. El umbral de validación del plan (3 de 7-9 completando la reserva) no se alcanza todavía, pero tampoco se descarta — distinto del umbral de muestra mínima de 3 usuarios del segmento, que ya se cumplió y se superó con estos 4. Sigo esperando respuesta de Aldo (círculo cercano) y de Paulina, José y Pedro — estos tres últimos son la ronda que responde directamente a la observación de mi profesor en la segunda evaluación de que la siguiente ronda debía salir de mi círculo cercano, y además ya habían sido parte de mis entrevistas originales de Semana 3, así que cuentan doble si responden.

El siguiente prototipo que ya tengo identificado, sin esperar a cerrar este: si el patrón de "entender pero no reservar" se mantiene conforme lleguen más respuestas, la pregunta que sigue es si el padre o madre mayor puede de verdad completar solo el widget de conexión de Belvo, o si necesita la videollamada asistida — la hipótesis que dejé pendiente en la revisión DFM.

## Lo que cambió

Esta semana el patrón de verificar antes de aceptar se repitió dos veces, en dos lugares distintos. Primero, sobre mi propio trabajo: encontré y corregí un error de segmento (el techo de edad de 45 años que nunca existió en la validación real de Semana 4) antes de que afectara a quién le mandaba la prueba — y, al corregirlo, dos de mis cuatro respuestas pasaron de "fuera del segmento" a "dentro". Segundo, sobre contenido generado para el prototipo mismo: el video del clasificador pasó por tres versiones antes de ser correcto, y dos de los dos errores que corrigió eran justo del tipo que un espectador no experto no habría notado (una acción que el sistema no puede hacer, una advertencia técnica mal ubicada). El hallazgo de fondo de la semana, sin embargo, fue el de la revisión DFM: el acompañamiento que ganó la Matriz de Pugh en Semana 6 es, al mismo tiempo, la razón de que el costo de soporte no fuera sostenible a escala — no son dos problemas distintos, son la misma decisión de diseño vista desde dos ángulos, y resolverla significó no elegir entre confianza y escala, sino dejar ambas disponibles según quién las necesite.

## Referencias (APA-7)

Belvo. (2026). *Developer docs — Sandbox*. https://developers.belvo.com/es/apis/belvoopenapispec/section/introduccion/sandbox

Blank, S., & Dorf, B. (2012). *The startup owner's manual*. K&S Ranch.

Bolton, R. J., & Hand, D. J. (2002). Statistical fraud detection: A review. *Statistical Science*, *17*(3), 235–249. https://doi.org/10.1214/ss/1042727940

Fitzpatrick, R. (2013). *The mom test: How to talk to customers and learn if your business is a good idea when everyone is lying to you*.

IDEO U. (2026). *Business design*. IDEO. https://www.ideou.com/pages/business-design

Ries, E. (2011). *The lean startup*. Crown Business.

Stripe. (2026). *Precios de Stripe en México*. https://stripe.com/mx/pricing

Ulrich, K. T., Eppinger, S. D., & Yang, M. C. (2026). *Product design and development* (7.ª ed.). McGraw-Hill.

## Evidencia

Como evidencia documento la tabla de adaptación del material del profesor, el plan de prototipado completo, los 5 pasos de la revisión DFM, la Tarea en casa 3 con el impacto en el BOM, y el Reporte de Prototipo preliminar completo con los 4 casos de evidencia recolectados hasta el corte.

[Ver el proceso completo (prompts y resultados) →](./evidencia-semana-08.html)
