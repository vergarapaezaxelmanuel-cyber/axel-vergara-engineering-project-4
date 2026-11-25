---
layout: default
title: Plan de Prototipado y DFM adaptado — Semana 8 (Vigilio)
---

# Plan de Prototipado y DFM — Semana 8

El material del profesor para esta semana está diseñado para un producto mecatrónico (carcasa, PCB, ESP32, sensores, manufactura física). Vigilio no tiene componente físico en el alcance del MVP de 6 meses — decisión ya tomada y confirmada con el profesor, documentada en `plan-de-accion-stack-vigia.md` y aplicada de la misma forma en `arquitectura-sistema-semana5-vigilio.md` y en el boceto técnico de Semana 6. Antes de llenar los formatos, qué se adapta y por qué:

| Elemento del material del profesor | ¿Aplica a Vigilio? | Adaptación |
|---|---|---|
| Prototipo de Forma (geometría, materiales, carcasa) | **No** | No hay artefacto físico que probar. |
| Prototipo de Función (sensor, electrónica, firmware) | **No** | No hay sistema embebido propio. |
| Prototipo de Experiencia (forma + función combinadas) | **Ya cubierto** | Es, en esencia, lo que ya se construyó en Semana 6 (wireframe de Figma del flujo de instalación asistida + pantalla principal). No se repite aquí. |
| Prototipo de Negocio (landing + precio real + pre-orden) | **Sí, íntegro — es el foco de este plan** | Encaja exactamente con la página web de lanzamiento que de todos modos debes entregar, y responde la pregunta de negocio más riesgosa que sigue abierta (ver Bloque 1-3 abajo). |
| DFM — costos de componentes/ensamble/soporte de manufactura física | **Se traduce** | "Componentes" → servicios/API que paga Vigilio por cuenta; "Ensamble" → fricción de onboarding (vincular una cuenta nueva); "Soporte" → soporte al cliente, QA del clasificador, documentación. |
| Economía Circular / Ley General / REP | **No aplica** | Ver nota al final del documento. |

---

## Bloque 1-3 adaptado — Plan de Prototipado (Parte A del taller)

### Por qué este supuesto y no otro

Siguiendo el criterio del propio material (mayor riesgo / mayor indefinición / mayor controversia), el supuesto de mayor riesgo que sigue sin validar con evidencia de comportamiento es la disposición a pagar. Hoy descansa sobre respuestas verbales de entrevista, no sobre una acción real: en `canvas-mercado-semana4.md`, 4 de 7 entrevistados dijeron "sí pagaría" y uno (Paulina) propuso el precio de $99 MXN/mes de forma espontánea — pero el mismo documento ya lo marca como una **"hipótesis crítica sin verificar"** (sección 1): *"que el precio de $99 MXN/mes convierta en la práctica a quienes hoy dicen 'sí', y no solo suene bien en una entrevista"*. Esto es exactamente el riesgo que el Mom Test (Fitzpatrick, 2013), ya citado en `reporte-oportunidad-semana2.md`, predice: las preguntas directas sobre precio dan respuestas infladas. Si este supuesto es falso, el modelo de negocio completo (todo el trabajo de Semana 7) se cae — no porque el producto no funcione, sino porque nadie paga por él.

**Corrección (06-nov-2026):** el segmento objetivo se escribía en este documento como "hijos/as de 35-45 años" — no coincide con el segmento real, ya establecido y corregido desde Semana 4 en `canvas-mercado-semana4.md` (sección 1): *"hijos e hijas de 24 años en adelante, con ingreso propio... alguien de 45 o 50 años con ingreso propio y un padre/madre de 60-70 también calificaría"*. No hay techo de edad fijo en 45, y el piso real es 24, no 35. Se corrige en todo este documento.

```
PLAN DE PROTOTIPADO
Equipo: Axel Vergara Páez (equipo de una sola persona — confirmado con el profesor,
        ver `estructura-ejercicios-semanas.md`)
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

QUÉ VAN A CONSTRUIR:
Una landing page real (extensión de la que ya existe en GitHub Pages,
`prototipo-vigilio.html`) con:
- El headline y la propuesta de valor ya validados y pulidos en `canvas-mercado-
  semana4.md` ("Vigilio vigila lo que tu banco no ve...").
- El precio real: $99 MXN/mes.
- Un video corto embebido (sección "Así funciona") que muestra al clasificador de
  IA evaluando una transacción nueva contra un historial simulado de la cuenta —
  no contra una regla de monto fijo — y generando la alerta que recibiría el
  hijo/a. Esto demuestra detección basada en perfil de comportamiento, no en
  reglas estáticas (Bolton & Hand, 2002), que es justo lo que distingue a Vigilio
  de una alerta bancaria genérica.
- Un mecanismo de pre-orden real — botón "Reserva tu lugar" que abre un enlace de
  WhatsApp (wa.me) con un mensaje pre-cargado ("Quiero reservar mi lugar en
  Vigilio a $99 MXN/mes"), directo al número de Axel. Ajuste respecto al plan
  original: no se usa Stripe Payment Link porque activar el cobro en modo real en
  México requiere una cuenta de persona física con actividad empresarial (RFC) —
  trámite que no es viable en el tiempo disponible para esta entrega (Stripe,
  2026). El mensaje de WhatsApp sigue siendo una acción real y con fricción (la
  persona tiene que escribir, no solo opinar); si de ahí surge un apartado con
  dinero real, se confirma por transferencia manual después de la conversación,
  nunca cobro automático ni tarjeta guardada.
Tiempo estimado: medio día a un día (regla del material: "hazlo en un día o menos").

Consideración ética, no solo técnica: una pre-orden real de un producto que todavía
no existe es una técnica legítima y usada (Bird Buddy la usó en Kickstarter antes de
tener versión final de producción, según el propio material de esta semana) — pero
solo si es transparente: la landing debe decir con claridad que es pre-lanzamiento,
con fecha estimada y política de reembolso explícita, y pedirla *antes* de solicitar
cualquier apartado — no es solo una nota de estilo, es la diferencia entre un
prototipo de negocio honesto y una promesa que no puedes cumplir.

CÓMO VAN A CAPTURAR EVIDENCIA:
- Comportamiento a observar: tasa de conversión de visita → mensaje de WhatsApp
  enviado con el texto de reserva pre-cargado (es la evidencia de compromiso real
  equivalente a "completar la pre-orden" cuando el mecanismo es WhatsApp en vez de
  un checkout automatizado) — no "cuántos dijeron que les gustó".
- Dónde abandonan los que no completan (en el precio, al ver el video, antes de
  escribir el mensaje) — con Google Analytics (eventos) o, dado el tráfico bajo
  esperado a esta escala, revisión manual.
- A quién mandarle el link primero: los mismos contactos ya entrevistados que
  dijeron "sí" (Melissa, Pedro, José) — son la prueba más dura posible: si ellos,
  que ya mostraron interés verbal, no completan la pre-orden, el supuesto está en
  problemas serios.

UMBRAL DE ÉXITO (propuesto — ajústalo si no te convence, el curso no da un número
fijo y tu muestra va a ser chica):
Si al menos 3 de las 7-9 personas ya entrevistadas (o de tráfico nuevo del mismo
segmento) escriben el mensaje de WhatsApp con la reserva, el supuesto de
disposición a pagar queda validado con evidencia de comportamiento — no solo de
palabra. Si menos de eso, la pregunta de seguimiento obligatoria es "¿qué te
detuvo justo antes de escribir?", porque esa respuesta sí es confiable (es sobre
un momento real que acaba de pasar, no una proyección a futuro).
```

### Qué responder si alguien sí completa un apartado con dinero real

Esto no estaba en el plan original porque se asumía Stripe automatizado; con WhatsApp manual, Axel sí tiene que decidir qué decir en el momento. El guion correcto, consistente con lo que ya promete la landing ("Esto es una pre-reserva, no un cobro automático... te confirmamos la fecha estimada de lanzamiento y la política de reembolso antes de pedirte cualquier apartado"):

1. Agradecer y confirmar que recibiste el mensaje.
2. Aclarar, antes de pedir cualquier dinero, que Vigilio está en fase de prototipo: no hay producto terminado ni cobro automático todavía.
3. Dar una fecha estimada de lanzamiento (aunque sea aproximada) y la política de reembolso en una sola frase clara.
4. Preguntar si, sabiendo eso, quiere de todos modos dejar un apartado simbólico (sugerido: una cantidad pequeña, no el mes completo) por transferencia directa — nunca pedir que guarde una tarjeta.
5. Si acepta, documentar nombre, monto y fecha en un registro simple (aunque sea una hoja de cálculo) — es la evidencia de comportamiento real para el Reporte de Prototipo, y es lo que te obliga, éticamente, a cumplir el reembolso si te lo piden.

Ejemplo de mensaje:

> "¡Gracias por tu interés en Vigilio! Antes de que apartes algo, te cuento rápido: todavía estamos en fase de prototipo, no hay cobro automático ni producto terminado. El lanzamiento estimado es [fecha] y, si decides no continuar o se retrasa, el apartado se reembolsa completo. Si aun así quieres reservar tu lugar, te paso los datos para una transferencia — tú decides el monto, no tiene que ser el mes completo."

No necesitas que alguien pague de verdad para que el prototipo cuente como válido — la evidencia mínima que exige el supuesto es que la persona *escriba el mensaje con intención real de reservar*, no que complete una transferencia. Si alguien sí llega a pagar, es evidencia todavía más fuerte, pero entonces la responsabilidad de cumplir lo prometido (fecha, reembolso) ya no es hipotética.

---

## Bloque 4 adaptado — Revisión "DFM" de costos operativos (Parte B del taller)

Sigue el proceso de 5 pasos de Ulrich, Eppinger y Yang (2026, cap. 13), con "componentes/ensamble/soporte de manufactura" traducido a "servicios/fricción de onboarding/soporte operativo" — mismo tratamiento que ya se usó en `bom-costo-ia-semana7-vigilio.md` para el BOM.

### Paso 1 — Estimar costos (actualizado 25-nov-2026)

Con los datos ya calculados en Semana 7 (`matematicas-financieras-bloque4-5-semana7-vigilio.md`, `bom-costo-ia-semana7-vigilio.md`), corregidos el 25-nov-2026 tras revisar el precio real de Bubble y sumar Claude Pro como gasto de desarrollo:

| Concepto | Costo | Fuente |
|---|---|---|
| "Componente" — clasificador de IA (Claude Haiku 5.5) | $0.13 MXN/cuenta/mes | `bom-costo-ia-semana7-vigilio.md` |
| "Componente" — procesamiento de pago (Stripe) | $7.257 MXN/cuenta/mes | 3.6% + $3.00 MXN + 0.7% sobre $99 MXN (Stripe, 2026) |
| Costo variable total por cuenta | **$7.387 MXN/cuenta/mes** | Suma de los dos anteriores |
| Costo fijo mensual (Bubble + Claude Pro + dominio) | $1,055.97 MXN/mes | `Supuestos` del modelo financiero |
| "Ensamble" — un ciclo completo de ajuste/mejora | $5,267.80 MXN/ciclo | `bom-costo-ia-semana7-vigilio.md` (15h de Axel + Bubble prorrateado + Claude Pro prorrateado + pruebas + indirectos + contingencia) |
| "Ensamble" — onboarding de una cuenta nueva (estimado, no medido todavía) | ~20-30 min de tiempo de Axel por cuenta | Estimación propia — el concepto ganador usa onboarding **asistido por videollamada** (`registro-completo-semana6-para-pagina.md`), no autoservicio |

### Paso 2 — Reducir costos de "componentes" (servicios)

Esto ya está resuelto en `bom-costo-ia-semana7-vigilio.md` y no hay que repetirlo, solo citarlo: Bubble está clasificado como **F** (candidato de recorte si aprieta el presupuesto, ya evaluado contra FlutterFlow), Claude Pro también está clasificado como **F** (herramienta de productividad negociable, no el motor del producto — revisión 25-nov-2026 tras analizar Bubble AI Agent, Claude Pro y Claude Haiku como los tres posibles costos de IA del proyecto), Belvo y Stripe son **S** (infraestructura regulada de terceros, sin margen de negociación a esta escala), y la decisión de distribuir como web/PWA en vez de apps nativas ya evita una comisión de plataforma de 15-30% que no aporta nada a esta escala. El hallazgo nuevo que sí vale la pena repetir aquí: el salto de costo fijo más grande de todo el modelo no es ningún componente de IA, es Belvo Sandbox → Production (de $0 a ~$17,580 MXN/mes) cuando el número de cuentas cruza el umbral de producción — es el equivalente directo a un molde de inyección en manufactura física: costo fijo alto que solo se justifica a partir de cierto volumen.

### Paso 3 — Disminuir costos de "ensamble" (fricción de onboarding)

Aquí sí hay un hallazgo nuevo. Los principios de DFA que pide el material (inserción desde arriba, autoalineación, sin herramientas, una sola mano, un solo movimiento, aseguramiento inmediato) se traducen a onboarding así:

| Principio DFA | Traducción a onboarding de Vigilio |
|---|---|
| No requiere orientación ni herramientas especiales | El usuario no debería necesitar copiar manualmente CLABE/número de cuenta |
| Una sola mano / un solo movimiento | Un solo flujo de autenticación, sin coordinar llamada telefónica aparte |
| Autoalineación (no se puede insertar mal) | El widget de conexión de Belvo (ya referenciado en `arquitectura-sistema-semana5-vigilio.md`) guía al usuario al banco correcto, reduce error |
| Se asegura de inmediato | Confirmación inmediata de vinculación exitosa, no espera de validación manual |

El diseño actual de "Vigilio a Distancia" — onboarding **asistido por videollamada** — viola casi todos estos principios: requiere una persona (Axel) presente, no escala, y es estructuralmente el mismo problema que el propio material describe en el Bloque 4 como advertencia ("el primer prototipo tarda 40 horas de trabajo manual... solo la persona que lo hizo sabe cómo ensamblarlo"). A 20-30 cuentas (RD-04) son 7-15 horas de tu tiempo solo en onboarding; a escala de SOM (304-608 hogares) es sencillamente imposible de sostener uno a uno.

**Recomendación DFM:** migrar el camino por default al widget de conexión de Belvo (autoservicio), dejando la videollamada asistida como soporte opcional solo para quien la necesite — no como el flujo estándar.

### Paso 4 — Reducir costos de soporte

Ya documentado en `bom-costo-ia-semana7-vigilio.md` como **F**, "$0 presupuestado hoy porque lo atiende Axel directamente" — pero esa cifra de $0 solo se sostiene si el Paso 3 se resuelve. Si el onboarding sigue siendo manual, el "soporte" no es $0, es exactamente las 20-30 min por cuenta del Paso 1, y crece 1:1 con cada cuenta nueva — es la misma relación que el material describe entre los Pasos 2-3 y el Paso 4 ("cada paso de ensamble simplificado reduce automáticamente los costos de soporte").

### Paso 5 — Efectos en otros factores (el trade-off que no se puede ignorar)

Aquí está el punto que el material pide evaluar explícitamente, no esconder: la razón por la que "Vigilio a Distancia" ganó la Matriz de Pugh con onboarding asistido por videollamada no fue un descuido — es que el padre o madre (60-70 años, quien de hecho tiene que autenticarse con su propio banco, no el hijo que paga) probablemente necesita más acompañamiento que un flujo de autoservicio típico, y ese acompañamiento genera confianza, un criterio que pesó explícitamente en la selección del concepto. Migrar a autoservicio puro reduce el costo pero puede fallar justo con la población para la que se diseñó el concepto. No es una contradicción con la recomendación del Paso 3 — es la razón para probarla como prototipo de negocio/experiencia antes de comprometerse: ¿el padre/madre puede completar el widget de conexión de Belvo solo, o de verdad necesita la videollamada? Esa es, de hecho, una segunda pregunta de prototipado candidata para después de validar la disposición a pagar.

---

## Bloque 5 — Economía Circular y Ley General: no aplica

La Ley General de Economía Circular (DOF, 19-ene-2026) regula el Diseño Circular, la Modularidad, la Reparabilidad y la Responsabilidad Extendida del Productor de productos físicos — reciclaje de materiales, separación de componentes, disponibilidad de refacciones. Vigilio no fabrica ni vende un artefacto físico en el alcance del MVP, así que no hay Ciclo de Vida de materiales, REP, ni Distintivo Nacional de Economía Circular que evaluar. Se documenta como "No aplica" explícitamente, mismo criterio que ya se usó para la capa física en `arquitectura-sistema-semana5-vigilio.md` — no se fuerza una traducción donde no la hay.

---

## Bloque 6/7 — Taller y defensa

Las Partes A y B del taller (plan de prototipado y revisión DFM) ya están completas arriba. La defensa de 3-4 minutos (Bloque 7), como ya quedó establecido en este proyecto (`estructura-ejercicios-semanas.md`), la escribes tú en tu propia voz — yo no genero ese contenido, solo reviso ortografía y claridad una vez que me la mandes.

---

## Reporte de prototipo — plantilla para llenar después de construir y probar

Esta parte no la puedo llenar yo: requiere que construyas la landing con pre-orden real y la pruebes con al menos 3 usuarios. Llenar esto con datos inventados sería exactamente lo que el material advierte no hacer ("la evidencia no es lo que dicen los usuarios, es lo que hacen").

```
REPORTE DE PROTOTIPO — Semana 8
Equipo: Axel Vergara Páez · Concepto: Vigilio a Distancia

TIPO DE PROTOTIPO: Negocio
RESOLUCIÓN: Alta
MATERIALES Y TIEMPO: [qué usaste y cuánto tardaste]

PREGUNTA QUE RESPONDÍA:
¿Puede un hijo/a con ingreso propio completar una pre-orden real a $99 MXN/mes
viendo la landing de Vigilio, sin que nadie del equipo esté presente?

EVIDENCIA RECOLECTADA:
Usuario 1: [qué hizo, no qué opinó]
Usuario 2: [qué hizo]
Usuario 3: [qué hizo]

¿SE VALIDÓ EL SUPUESTO? Sí / No / Parcialmente
Por qué: [qué evidencia lo soporta]

APRENDIZAJE CLAVE:
[lo más importante que aprendiste que no sabías antes]

CAMBIO AL DISEÑO:
[qué cambia como resultado de esto]

SIGUIENTE HIPÓTESIS A PROTOTIPAR:
[candidata ya identificada arriba: ¿el padre/madre puede usar el widget de
conexión de Belvo solo, o necesita la videollamada asistida?]
```

---

## Referencias (APA-7)

Belvo. (2026). *Developer docs — Sandbox*. https://developers.belvo.com/es/apis/belvoopenapispec/section/introduccion/sandbox

Blank, S., & Dorf, B. (2012). *The startup owner's manual*. K&S Ranch.

Bolton, R. J., & Hand, D. J. (2002). Statistical fraud detection: A review. *Statistical Science*, *17*(3), 235–249. https://doi.org/10.1214/ss/1042727940

Fitzpatrick, R. (2013). *The mom test: How to talk to customers and learn if your business is a good idea when everyone is lying to you*.

IDEO U. (2026). *Business design*. IDEO. https://www.ideou.com/pages/business-design

Ries, E. (2011). *The lean startup*. Crown Business.

Stripe. (2026). *Precios de Stripe en México*. https://stripe.com/mx/pricing

Ulrich, K. T., Eppinger, S. D., & Yang, M. C. (2026). *Product design and development* (7.ª ed.). McGraw-Hill.
