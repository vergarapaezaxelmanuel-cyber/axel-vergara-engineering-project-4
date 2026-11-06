---
title: Evidencia — Prototipado de Negocio, DFM y Disposición a Pagar (Semana 08)
layout: default
parent: Semanas
nav_exclude: true
---

# Evidencia — Prototipado de Negocio, DFM y Disposición a Pagar (Semana 08)

**Nota de privacidad:** este registro no incluye nombres completos ni enlaces personales de nadie fuera de mí. Los nombres de pila de los contactos ya habían aparecido como evidencia en Semana 3. Mi profesor se menciona sin nombrarlo.

**Nota de fidelidad:** el plan de prototipado, la revisión DFM y la Tarea en casa 3 son trabajo propio, 🟢. El Reporte de Prototipo documenta respuestas reales de contactos reales, también 🟢 — y es explícitamente preliminar: se actualiza con filas nuevas conforme llegan más respuestas, sin reescribirse desde cero.

## Paso 1 — Qué aplica del material del profesor y qué se traduce 🟢

El material de esta semana está diseñado para un producto mecatrónico (carcasa, PCB, ESP32, sensores). Antes de llenar cualquier formato, mapeé qué aplica, qué ya está cubierto y qué hay que traducir:

| Elemento del material del profesor | ¿Aplica a Vigilio? | Adaptación |
|---|---|---|
| Prototipo de Forma (geometría, materiales, carcasa) | **No** | No hay artefacto físico que probar. |
| Prototipo de Función (sensor, electrónica, firmware) | **No** | No hay sistema embebido propio. |
| Prototipo de Experiencia (forma + función combinadas) | **Ya cubierto** | Es, en esencia, lo que ya se construyó en Semana 6 (wireframe de Figma del flujo de instalación asistida + pantalla principal). No se repite aquí. |
| Prototipo de Negocio (landing + precio real + pre-orden) | **Sí, íntegro — es el foco de este plan** | Encaja exactamente con la página web de lanzamiento que de todos modos debo entregar, y responde la pregunta de negocio más riesgosa que seguía abierta. |
| DFM — costos de componentes/ensamble/soporte de manufactura física | **Se traduce** | "Componentes" → servicios/API que paga Vigilio por cuenta; "Ensamble" → fricción de onboarding (vincular una cuenta nueva); "Soporte" → soporte al cliente, QA del clasificador, documentación. |
| Economía Circular / Ley General / REP | **No aplica** | Ver Paso 4. |

## Paso 2 — Plan de prototipado de negocio (Bloque 1-3 del taller) 🟢

**Por qué este supuesto y no otro:** siguiendo el criterio del propio material (mayor riesgo / mayor indefinición / mayor controversia), el supuesto de mayor riesgo que seguía sin validar con evidencia de comportamiento era la disposición a pagar. En `canvas-mercado-semana4.md`, 4 de 7 entrevistados dijeron "sí pagaría" y uno (Paulina) propuso $99 MXN/mes de forma espontánea — pero ese mismo documento ya lo marca como **"hipótesis crítica sin verificar"**: *"que el precio de $99 MXN/mes convierta en la práctica a quienes hoy dicen 'sí', y no solo suene bien en una entrevista"*. Es el riesgo que predice el Mom Test (Fitzpatrick, 2013), ya citado en `reporte-oportunidad-semana2.md`: las preguntas directas sobre precio tienden a inflarse. Si este supuesto es falso, el modelo de negocio completo de Semana 7 se cae — no porque el producto no funcione, sino porque nadie paga por él.

**Corrección aplicada antes de usar el plan (06-nov-2026):** el segmento objetivo estaba escrito como "hijos/as de 35-45 años" — no coincide con el segmento real, establecido desde Semana 4 en `canvas-mercado-semana4.md` (sección 1): *"hijos e hijas de 24 años en adelante, con ingreso propio... alguien de 45 o 50 años con ingreso propio y un padre/madre de 60-70 también calificaría"*. No hay techo de edad en 45, y el piso real es 24, no 35. Corregido en todo el plan antes de usarlo para elegir a quién mandarle la prueba.

```
PLAN DE PROTOTIPADO
Equipo: Axel Vergara Páez (equipo de una sola persona — confirmado con el profesor)
Concepto: Vigilio a Distancia (concepto ganador, Matriz de Pugh — Semana 6)

SUPUESTO A VALIDAR:
Que los hijos/as con ingreso propio (24 años en adelante) que dijeron "sí pagaría"
en entrevista realmente completarían una pre-orden pagando (o comprometiendo una
tarjeta) por Vigilio a $99 MXN/mes, antes de que el producto exista — no solo lo
dirían en una conversación.

PREGUNTA PRECISA:
¿Puede un hijo/a con ingreso propio que ya apoya a un padre/madre de 60-70 años con
sus finanzas completar una pre-orden real — después de ver un video corto que
muestra el funcionamiento del clasificador — a $99 MXN/mes, al ver una landing page
real de Vigilio — sin que nadie del equipo esté presente explicándole nada?

TIPO DE PROTOTIPO:
[ ] Forma  [ ] Función  [x] Experiencia (ya hecho, Semana 6)  [x] Negocio (este plan)
Resolución: [ ] Baja  [x] Alta
Por qué esta resolución: la pregunta exige que la persona reaccione con una acción
real (dejar un medio de pago, comprometer dinero) y no con una opinión sobre un
boceto — eso solo lo responde un prototipo de alta resolución con precio real.

QUÉ VOY A CONSTRUIR:
Una landing page real (extensión de la que ya existe en GitHub Pages,
`prototipo-vigilio.html`) con:
- El headline y la propuesta de valor ya validados en `canvas-mercado-semana4.md`
  ("Vigilio vigila lo que tu banco no ve...").
- El precio real: $99 MXN/mes.
- Un video corto embebido ("Así funciona") que muestra al clasificador de IA
  evaluando una transacción nueva contra un historial simulado de la cuenta — no
  contra una regla de monto fijo — y generando la alerta que recibiría el hijo/a.
  Demuestra detección basada en perfil de comportamiento, no en reglas estáticas
  (Bolton & Hand, 2002), que es justo lo que distingue a Vigilio de una alerta
  bancaria genérica.
- Un mecanismo de pre-orden real — botón "Reserva tu lugar" que abre un enlace de
  WhatsApp (wa.me) con un mensaje pre-cargado ("Quiero reservar mi lugar en
  Vigilio a $99 MXN/mes"), directo a mi número. Ajuste respecto al plan original:
  no uso Stripe Payment Link porque activar el cobro en modo real en México
  requiere una cuenta de persona física con actividad empresarial (RFC) — trámite
  no viable en el tiempo disponible (Stripe, 2026). El mensaje de WhatsApp sigue
  siendo una acción real y con fricción; si surge un apartado con dinero real, se
  confirma por transferencia manual después, nunca cobro automático ni tarjeta
  guardada.
Tiempo estimado: medio día a un día (regla del material: "hazlo en un día o menos").

Consideración ética, no solo técnica: una pre-orden real de un producto que
todavía no existe es una técnica legítima y usada (Bird Buddy la usó en Kickstarter
antes de tener versión final de producción) — pero solo si es transparente: la
landing debe decir con claridad que es pre-lanzamiento, con fecha estimada y
política de reembolso explícita, y pedirla *antes* de solicitar cualquier
apartado.

CÓMO VOY A CAPTURAR EVIDENCIA:
- Comportamiento a observar: tasa de conversión de visita → mensaje de WhatsApp
  enviado con el texto de reserva pre-cargado — no "cuántos dijeron que les gustó".
- Dónde abandonan los que no completan (en el precio, al ver el video, antes de
  escribir el mensaje).
- A quién mandarle el link primero: los mismos contactos ya entrevistados que
  dijeron "sí" — son la prueba más dura posible: si ellos, que ya mostraron
  interés verbal, no completan la pre-orden, el supuesto está en problemas serios.

UMBRAL DE ÉXITO:
Si al menos 3 de las 7-9 personas ya entrevistadas (o de tráfico nuevo del mismo
segmento) escriben el mensaje de WhatsApp con la reserva, el supuesto de
disposición a pagar queda validado con evidencia de comportamiento. Si menos de
eso, la pregunta de seguimiento obligatoria es "¿qué te detuvo justo antes de
escribir?".
```

**Qué responder si alguien sí completa un apartado con dinero real:** 1) agradecer y confirmar que recibí el mensaje; 2) aclarar, antes de pedir cualquier dinero, que Vigilio está en fase de prototipo, sin producto terminado ni cobro automático; 3) dar una fecha estimada de lanzamiento y la política de reembolso en una sola frase clara; 4) preguntar si, sabiendo eso, quiere dejar un apartado simbólico por transferencia directa — nunca pedir que guarde una tarjeta; 5) si acepta, documentar nombre, monto y fecha en un registro simple. No necesito que alguien pague de verdad para que el prototipo cuente como válido — la evidencia mínima es que la persona escriba el mensaje con intención real de reservar.

## Paso 3 — Revisión DFM de costos operativos, 5 pasos (Bloque 4 del taller) 🟢

Proceso de Ulrich, Eppinger y Yang (2026, cap. 13), con "componentes/ensamble/soporte de manufactura" traducido a "servicios/fricción de onboarding/soporte operativo" — mismo tratamiento ya usado para el BOM en `bom-costo-ia-semana7-vigilio.md`.

**Paso 1 — Estimar costos (actual):**

| Concepto | Costo | Fuente |
|---|---|---|
| "Componente" — clasificador de IA (Claude Haiku 5.5) | $0.13 MXN/cuenta/mes | Semana 7 |
| "Componente" — procesamiento de pago (Stripe) | $7.257 MXN/cuenta/mes | 3.6% + $3.00 MXN + 0.7% sobre $99 MXN (Stripe, 2026) |
| Costo variable total por cuenta | **$7.387 MXN/cuenta/mes** | Suma de los dos anteriores |
| Costo fijo mensual (Bubble + dominio) | $1,055.75 MXN/mes | Modelo financiero, Semana 7 |
| "Ensamble" — un ciclo completo de ajuste/mejora | $5,267.63 MXN/ciclo | Semana 7 |
| "Ensamble" — onboarding de una cuenta nueva (estimado, no medido todavía) | ~20-30 min de mi tiempo por cuenta | Estimación propia — el concepto ganador usa onboarding asistido por videollamada, no autoservicio |

**Paso 2 — Reducir costos de "componentes":** ya resuelto en Semana 7, solo se cita: Bubble es **F** (recortable, ya evaluado contra FlutterFlow), Belvo y Stripe son **S** (sin margen de negociación), y la decisión de web/PWA en vez de apps nativas ya evita una comisión de plataforma de 15-30%. Hallazgo que sí vale repetir: el salto de costo fijo más grande de todo el modelo no es ningún componente de IA, es Belvo Sandbox → Production (de $0 a ~$17,580 MXN/mes) al cruzar el umbral de producción — equivalente directo a un molde de inyección en manufactura física.

**Paso 3 — Disminuir costos de "ensamble" (hallazgo nuevo):** traduje los principios de DFA del material al onboarding de Vigilio:

| Principio DFA | Traducción a onboarding de Vigilio |
|---|---|
| No requiere orientación ni herramientas especiales | El usuario no debería necesitar copiar manualmente CLABE/número de cuenta |
| Una sola mano / un solo movimiento | Un solo flujo de autenticación, sin coordinar llamada telefónica aparte |
| Autoalineación (no se puede insertar mal) | El widget de conexión de Belvo guía al usuario al banco correcto, reduce error |
| Se asegura de inmediato | Confirmación inmediata de vinculación exitosa, no espera de validación manual |

El diseño actual —onboarding asistido por videollamada— viola casi todos estos principios: requiere que yo esté presente, no escala, y es estructuralmente el mismo problema que el material describe como advertencia de apertura (el prototipo que tarda 40 horas y que solo una persona sabe ensamblar). A 20-30 cuentas (RD-04) son 7-15 horas de mi tiempo solo en onboarding; a escala de SOM (304-608 hogares) es imposible de sostener uno a uno. **Recomendación:** migrar el camino por default al widget de conexión de Belvo (autoservicio), dejando la videollamada asistida como soporte opcional.

**Paso 4 — Reducir costos de soporte:** ya documentado como **F**, "$0 presupuestado porque lo atiendo yo" — pero ese $0 solo se sostiene si se resuelve el Paso 3. Con onboarding manual para todas las cuentas, el "soporte" no es $0, es exactamente las 20-30 min por cuenta del Paso 1, y crece 1:1 con cada cuenta nueva.

**Paso 5 — Efectos en otros factores (el trade-off):** la razón por la que "Vigilio a Distancia" ganó la Matriz de Pugh con onboarding asistido no fue un descuido — el padre o madre (60-70 años, quien de hecho se autentica con su propio banco) probablemente necesita más acompañamiento que un flujo de autoservicio típico, y ese acompañamiento genera confianza, un criterio que pesó en la selección del concepto. Migrar a autoservicio puro reduce el costo pero puede fallar justo con la población para la que se diseñó el concepto — no es contradicción resolverlo con una recomendación y dejarlo también como hipótesis a prototipar después: ¿el padre/madre puede completar el widget de Belvo solo, o de verdad necesita la videollamada?

## Paso 4 — Economía Circular y Ley General: no aplica (Bloque 5) 🟢

La Ley General de Economía Circular (DOF, 19-ene-2026) regula Diseño Circular, Modularidad, Reparabilidad y Responsabilidad Extendida del Productor de productos físicos. Vigilio no fabrica ni vende un artefacto físico en el alcance del MVP, así que no hay Ciclo de Vida de materiales, REP, ni Distintivo Nacional de Economía Circular que evaluar. Se documenta como "No aplica" explícitamente, mismo criterio ya usado para la capa física en Semana 5 — no se fuerza una traducción donde no la hay.

## Paso 5 — Tarea en casa 3: aplicar la mejora DFM y actualizar el BOM 🟢

La revisión DFM del Paso 3 detectó que el onboarding asistido por videollamada —el flujo por default del concepto ganador— no escala: a 20-30 cuentas (el rango del piloto) ya representa 7-15 horas de mi tiempo solo en conectar cuentas nuevas, y al tamaño real del mercado (304-608 hogares) es imposible de sostener uno por uno.

**Decisión adoptada:** el onboarding por default pasa a ser autoservicio, mediante el widget de conexión de Belvo — el usuario conecta su banco solo, sin que yo esté presente. La videollamada asistida se mantiene, pero como soporte opcional, solo para quien de verdad la necesite (típicamente el padre o madre mayor con menos familiaridad tecnológica), no como el único camino. Esto no elimina el acompañamiento que hizo ganar a este concepto en la Matriz de Pugh de Semana 6 — solo deja de forzarlo para todos. Quien pueda conectar su cuenta solo, lo hace más rápido; quien necesite ayuda, la sigue teniendo disponible. Resuelve el problema de escala sin sacrificar la confianza que el acompañamiento le da al padre/madre mayor.

**Impacto en el BOM:** el costo de "soporte técnico al cliente", presupuestado en $0 en el BOM de Semana 7, dependía de que el onboarding dejara de ser manual — con videollamada para todas las cuentas, ese $0 no se sostenía (crecía 1:1 con cada cuenta nueva, a 20-30 min de mi tiempo por cuenta). Con el onboarding por default en autoservicio, el supuesto de $0 vuelve a sostenerse para la mayoría de los casos: el costo de soporte deja de crecer con el total de cuentas y pasa a crecer solo con la fracción de usuarios que de verdad pida ayuda asistida. No cambia ningún número del BOM — lo que cambia es que la justificación detrás del $0 ahora sí es sólida.

## Paso 6 — Reporte de Prototipo preliminar (al corte del 6 de noviembre de 2026) 🟢

**Construcción del video del clasificador (no salió a la primera):** el video se construyó con un prompt que simula al clasificador de Vigilio evaluando una transacción contra un historial de cuenta. La primera versión incluyó, por error, una respuesta donde el asistente proponía "bloquear la tarjeta" — contradice la arquitectura real del sistema (solo lectura vía Belvo, RI-01, sin capacidad de bloquear ni mover dinero), así que corregí el prompt para prohibir explícitamente esa acción. La segunda versión corrigió eso, pero dejó una advertencia de limitación (sobre el tamaño de la ventana de datos) filtrada dentro de la respuesta que vería el usuario, lo cual podía dar la impresión de que el producto no funciona bien — separé esa advertencia del mensaje de cara al usuario. La tercera versión, ya limpia en ambos aspectos, fue la que grabé para el video final.

```
REPORTE DE PROTOTIPO — Semana 8
Equipo: Axel Vergara Páez · Concepto: Vigilio a Distancia

TIPO DE PROTOTIPO: Negocio
RESOLUCIÓN: Alta
MATERIALES Y TIEMPO: Landing page (GitHub Pages, extensión del sitio ya existente),
video de demostración del clasificador (grabación de pantalla, ~2 min), mecanismo
de pre-reserva real por WhatsApp (wa.me) con precio real ($99 MXN/mes). Tiempo
aproximado: medio día.

PREGUNTA QUE RESPONDÍA:
¿Puede un hijo/a con ingreso propio (24 años en adelante, sin techo fijo) que ya
apoya a un padre/madre de 60-70 años con sus finanzas completar una pre-orden real
— después de ver un video corto del clasificador — a $99 MXN/mes, al ver la landing
real de Vigilio, sin que nadie del equipo esté presente explicándole nada?
[Corrección 06-nov-2026: el segmento se había escrito como "35-45 años" — no
coincide con el segmento real, establecido y corregido desde Semana 4.]

EVIDENCIA RECOLECTADA (preliminar — 4 de 7 contactos, más en curso):

Usuario 1 — Ángel (dentro del segmento validado): revisó la página y el video
completos (confirmado). Entendió correctamente el mecanismo de detección de
cargos sin que se le explicara nada. Dio retroalimentación de producto por
iniciativa propia: sugirió automatizar el registro con QR/escaneo para simplificar
el onboarding — coincide con el hallazgo ya documentado en la revisión DFM sobre
fricción de onboarding (Tarea en casa 3). No dio clic en "Reserva tu lugar" — no
completó la pre-orden hasta el momento del corte.

Usuario 2 — Melissa (dentro del segmento validado): confirmó haber revisado la
página y el video (reacción 👍, sin texto). No ha dado clic en "Reserva tu lugar"
hasta el momento del corte.

Usuario 3 — Betsy (dentro del segmento validado — tiene ingreso propio, trabaja de
forma independiente, y su madre/padre cae en el rango de 60-70; el segmento real
no tiene techo de edad en 45): confirmó por texto haber revisado la página y el
video ("si esta padre la idea y si lo usaria"). Opinión verbal positiva. No dio
clic en "Reserva tu lugar" hasta el momento del corte.

Usuario 4 — Aledi (dentro del segmento validado, mismo criterio que Betsy — su
hermana; ingreso propio y padre/madre en 60-70): confirmó haber revisado la
página y el video. Opinión verbal positiva y elaborada, mencionando espontáneamente
el problema de cargos no reconocidos en adultos mayores como algo que "luego pasa"
— es decir, reconoció el dolor que Vigilio busca resolver sin que se le explicara.
No dio clic en "Reserva tu lugar" hasta el momento del corte.

Con esto, 4 de 4 respuestas recibidas caen dentro del segmento objetivo real
(ingreso propio, padre/madre 60-70) — se cumple y se supera el mínimo de 3
usuarios del segmento objetivo que exige la Tarea en casa de esta semana.

[Pendientes al momento del corte, dentro del círculo original de contacto: Aldo
— no ha respondido.]

[En curso, fuera del círculo cercano — esta es la ronda que responde directamente
a la observación del profesor en la Segunda evaluación ("la siguiente ronda
tiene que ser fuera de mi círculo cercano"): Paulina, José y Pedro — mensaje
enviado, respuesta pendiente al momento del corte. Los tres fueron parte de las
entrevistas originales de Semana 3 (Paulina 24 años/madre 60; José 38 años/madre
67; Pedro 25 años/padre 63) y también caen dentro del segmento objetivo real, así
que de responder contarían doblemente: como evidencia fuera del círculo cercano
y como evidencia adicional dentro del segmento. Se agregarán como Usuario 5, 6 y
7 en cuanto contesten, sin reescribir este reporte, solo añadiendo filas.]

[Nota aparte — Alejandro: abrió y vio la página y el video, pero no respondió
nada (ni texto, ni reacción, ni clic). No se cuenta como evidencia, porque no hay
ninguna señal que interpretar — ni opinión, ni acción.]

¿SE VALIDÓ EL SUPUESTO? Parcialmente / en curso
Por qué: de 4 respuestas recibidas, las 4 caen dentro del segmento objetivo real
(ingreso propio, padre/madre 60-70) — el mínimo de 3 usuarios del segmento que
pide la Tarea en casa de esta semana ya está cumplido y superado. Las 4 muestran
engagement real (vieron el contenido completo, dos dieron retroalimentación o
reconocimiento espontáneo del problema) pero ninguna completó la pre-orden
todavía. Con 4 de 4 en el mismo patrón, hay dos lecturas honestas posibles, y el
reporte final debe presentar ambas en vez de una sola conclusión: (1) el Mom
Test está funcionando como predice su literatura — opinión positiva verbal no
es evidencia de compromiso real, y la ausencia de clics es justamente la señal
que el ejercicio buscaba poder observar; o (2) el mecanismo de pre-orden (link
de WhatsApp con mensaje prellenado) tiene algún problema de señalización o
fricción propio que impide medir la intención real, independientemente de qué
tan interesados estén los usuarios. El umbral de disposición a pagar definido
en el plan (3 de 7-9 completando la reserva) todavía no se alcanza ni se
descarta — distinto del umbral de muestra mínima (3 usuarios probados), que ya
sí se cumplió.

APRENDIZAJE CLAVE (preliminar):
La gente sí entiende el mecanismo sin que se le explique (los cuatro casos
entendieron el video y el propósito del botón sin intervención del equipo) —
eso valida que el diseño de la landing es suficientemente claro por sí solo.
Lo que todavía no está claro es si "entender, tener buena opinión e incluso
reconocer el problema" se traduce en la acción real de reservar — que es
justamente el supuesto que este ejercicio busca probar. El patrón de 4 de 4
sin clic, con las 4 respuestas ya dentro del segmento objetivo, es una señal a
tomar en serio, pero una muestra de 4 todavía no alcanza para concluir con
certeza si el problema es de disposición a pagar o de diseño del mecanismo de
pre-orden — para eso ayudaría ver si Paulina, José o Pedro, al responder,
rompen el patrón o lo confirman.

CAMBIO AL DISEÑO:
Pendiente de más evidencia antes de proponer cambios al mecanismo de pre-orden en
sí. La sugerencia de Ángel (QR/escaneo para simplificar registro) no aplica al
mecanismo de pre-orden de este prototipo — aplica al futuro flujo de onboarding
real, y ya está incorporada conceptualmente en la decisión de Tarea en casa 3
(autoservicio por default vía Belvo).

SIGUIENTE HIPÓTESIS A PROTOTIPAR:
Ya identificada en el plan: ¿el padre/madre mayor puede completar el widget de
conexión de Belvo solo, o de verdad necesita la videollamada asistida?
```

*Este reporte se actualiza conforme lleguen más respuestas — no se vuelve a escribir desde cero, se agregan las filas nuevas de evidencia.*

---

## Estado de los entregables de la semana 🟢

| Entregable | Estado |
|---|---|
| Mapeo de qué aplica del material del profesor | Hecho (Paso 1) |
| Plan de prototipado de negocio (Bloque 1-3) | Hecho (Paso 2) |
| Revisión DFM de costos operativos, 5 pasos (Bloque 4) | Hecho (Paso 3) |
| Economía Circular / Ley General (Bloque 5) | No aplica, documentado (Paso 4) |
| Tarea en casa 3 — decisión de onboarding + impacto en BOM | Hecho (Paso 5) |
| Landing de prototipo con video y pre-orden real | Hecho (Paso 6) |
| Reporte de Prototipo | En curso — preliminar, 4 de 7-9 contactos (Paso 6) |
| Defensa de 3-4 minutos (Bloque 7) | Pendiente — se escribe en voz propia, no generada por Claude |

## Referencias (APA-7)

Belvo. (2026). *Developer docs — Sandbox*. https://developers.belvo.com/es/apis/belvoopenapispec/section/introduccion/sandbox

Blank, S., & Dorf, B. (2012). *The startup owner's manual*. K&S Ranch.

Bolton, R. J., & Hand, D. J. (2002). Statistical fraud detection: A review. *Statistical Science*, *17*(3), 235–249. https://doi.org/10.1214/ss/1042727940

Fitzpatrick, R. (2013). *The mom test: How to talk to customers and learn if your business is a good idea when everyone is lying to you*.

IDEO U. (2026). *Business design*. IDEO. https://www.ideou.com/pages/business-design

Ries, E. (2011). *The lean startup*. Crown Business.

Stripe. (2026). *Precios de Stripe en México*. https://stripe.com/mx/pricing

Ulrich, K. T., Eppinger, S. D., & Yang, M. C. (2026). *Product design and development* (7.ª ed.). McGraw-Hill.

## Nota final sobre cómo se trabajó esta semana

El plan de prototipado, la revisión DFM y la Tarea en casa 3 se trabajaron con Claude, adaptando cada formato pensado para hardware a su equivalente de software/costos operativos, con el mismo criterio ya usado en semanas anteriores. El Reporte de Prototipo documenta evidencia real recolectada por mí fuera de cualquier sesión de IA (mensajes y reacciones reales de contactos reales); Claude ayudó a construir el prompt del video de demostración del clasificador (con dos correcciones necesarias antes de la versión final) y a redactar este registro, no a generar ni inventar ninguna respuesta de usuario. El reporte queda marcado explícitamente como preliminar porque, al momento del corte, todavía faltan respuestas por llegar — se actualizará agregando filas, no reescribiéndolo.
