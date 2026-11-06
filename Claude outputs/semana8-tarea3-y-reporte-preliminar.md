---
layout: default
title: Semana 8 — Tarea en casa 3 y Reporte de Prototipo
---

# Tarea en casa 3 — Aplicar la mejora DFM y actualizar el BOM

La revisión DFM de esta semana (ver Parte B del taller) detectó que el onboarding asistido por videollamada — el flujo por default del concepto ganador "Vigilio a Distancia" — no escala: a 20-30 cuentas (el rango del piloto) ya representa 7-15 horas de mi tiempo solo en conectar cuentas nuevas, y al tamaño real del mercado (304-608 hogares) es sencillamente imposible de sostener uno por uno.

**Decisión adoptada:** el onboarding por default pasa a ser autoservicio, mediante el widget de conexión de Belvo — el usuario conecta su banco solo, sin que yo esté presente. La videollamada asistida se mantiene, pero como soporte opcional, solo para quien de verdad la necesite (típicamente el padre o madre mayor con menos familiaridad tecnológica), no como el único camino.

Esto no elimina el acompañamiento que hizo ganar a este concepto en la Matriz de Pugh de Semana 6 — solo deja de forzarlo para todos. Quien pueda conectar su cuenta solo, lo hace más rápido; quien necesite ayuda, la sigue teniendo disponible. Resuelve el problema de escala sin sacrificar la confianza que el acompañamiento le da al padre/madre mayor.

**Impacto en el BOM:** el costo de "soporte técnico al cliente", presupuestado en $0 en el BOM de Semana 7, dependía de que el onboarding dejara de ser manual — con videollamada para todas las cuentas, ese $0 no se sostenía (crecía 1:1 con cada cuenta nueva, a 20-30 min de mi tiempo por cuenta). Con el onboarding por default en autoservicio, el supuesto de $0 vuelve a sostenerse para la mayoría de los casos: el costo de soporte deja de crecer con el total de cuentas y pasa a crecer solo con la fracción de usuarios que de verdad pida ayuda asistida. No cambia ningún número del BOM — lo que cambia es que la justificación detrás del $0 ahora sí es sólida.

---

# Reporte de Prototipo — Semana 8 (al corte del 6 de noviembre de 2026)

```
REPORTE DE PROTOTIPO — Semana 8
Equipo: Axel Vergara Páez · Concepto: Vigilio a Distancia

TIPO DE PROTOTIPO: Negocio
RESOLUCIÓN: Alta
MATERIALES Y TIEMPO: Landing page (GitHub Pages, extensión del sitio ya existente),
video de demostración del clasificador (grabación de pantalla, ~2 min), mecanismo
de pre-reserva real por WhatsApp (wa.me) con precio real ($99 MXN/mes). Tiempo
aproximado: medio día.

DESCRIPCIÓN DE CÓMO SE CONSTRUYÓ EL VIDEO DEL CLASIFICADOR: el video no salió a
la primera. Se construyó con un prompt a Claude que simula al clasificador de
Vigilio evaluando una transacción contra un historial de cuenta. La primera
versión incluyó, por error, una respuesta donde el asistente proponía "bloquear
la tarjeta" — contradice la arquitectura real del sistema (solo lectura vía
Belvo, RI-01, sin capacidad de bloquear ni mover dinero), así que se corrigió el
prompt para prohibir explícitamente esa acción. La segunda versión corrigió eso,
pero dejó una advertencia de limitación (sobre el tamaño de la ventana de datos)
filtrada dentro de la respuesta que vería el usuario, lo cual podía dar la
impresión de que el producto no funciona bien — se corrigió separando esa
advertencia del mensaje de cara al usuario. La tercera versión, ya limpia en
ambos aspectos, fue la que se grabó para el video final.

PREGUNTA QUE RESPONDÍA:
¿Puede un hijo/a con ingreso propio (24 años en adelante, sin techo fijo) que ya
apoya a un padre/madre de 60-70 años con sus finanzas completar una pre-orden real
— después de ver un video corto del clasificador — a $99 MXN/mes, al ver la landing
real de Vigilio, sin que nadie del equipo esté presente explicándole nada?
[Corrección 06-nov-2026: el segmento se había escrito como "35-45 años" — no
coincide con el segmento real, establecido y corregido desde Semana 4 en
`canvas-mercado-semana4.md`, sección 1.]

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
no tiene techo de edad en 45, ver corrección arriba): confirmó por texto haber
revisado la página y el video ("si esta padre la idea y si lo usaria"). Opinión
verbal positiva. No dio clic en "Reserva tu lugar" hasta el momento del corte.

Usuario 4 — Aledi (dentro del segmento validado, mismo criterio que Betsy — su
hermana; ingreso propio y padre/madre en 60-70): confirmó haber revisado la
página y el video. Opinión verbal positiva y elaborada, mencionando espontáneamente
el problema de cargos no reconocidos en adultos mayores como algo que "luego pasa"
— es decir, reconoció el dolor que Vigilio busca resolver sin que se le explicara.
No dio clic en "Reserva tu lugar" hasta el momento del corte.

Con esto, **4 de 4 respuestas recibidas caen dentro del segmento objetivo real**
(ingreso propio, padre/madre 60-70) — ya se cumple, y se supera, el mínimo de 3
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
