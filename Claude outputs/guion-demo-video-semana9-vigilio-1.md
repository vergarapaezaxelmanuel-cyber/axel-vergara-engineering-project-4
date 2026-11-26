---
nav_exclude: true
search_exclude: true
title: "Guion de navegación — Video demo (7 minutos, Semana 9, Vigilio)"
fecha: "25-nov-2026 (reestructurado 26-nov-2026 a los 6 tramos oficiales del profesor; corregido 26-nov-2026 noche contra la app ya terminada)"
---

# Guion de navegación — Video de demo (7 minutos)

**Nota de uso:** frases exactas, calculadas a ~130 palabras/minuto. Puedes narrar con tus propias palabras si lo prefieres — esto es la versión palabra por palabra, por si prefieres memorizar.

**Decisión de dispositivo:** se graba desde la pantalla de la **computadora**. Antes de grabar, pon Chrome en pantalla completa (tecla **F11**) para esconder la barra de direcciones y las pestañas.

**Nota operativa antes de grabar:** registra con un correo que nunca hayas usado en la app. Un correo ya registrado dispara un bug ya documentado (intenta iniciar sesión en vez de registrar, y falla) — no es algo que vayas a corregir hoy, así que evítalo usando siempre un correo nuevo en la toma.

**Reestructurado 26-nov-2026** para calzar exactamente con los 6 tramos oficiales del profesor (Contexto / Camino principal / Provocar el evento / Fallo manejado / La compra / Cierre), revelados en la página de Semana 9 después de la primera versión de este guion.

**Corregido 26-nov-2026 (noche), contra la app ya terminada hoy mismo:**
- El botón "No reconozco este cargo" ya no lleva directo a la guía de resolución — ahora lleva a `suscripcion` (el freemium real: gratis hasta el primer problema detectado, luego $99 MXN/mes), y de ahí a `pago_confirmado` y a `guia_resolucion`. Esto es justo el tramo oficial "La compra", y ahora se puede mostrar en vivo dentro de la app, no solo en la landing — así que Tramo 4 y Tramo 5 se reescribieron para seguir el clic real.
- Se quitó de Tramo 5 la frase "el viernes, aquí mismo, van a poder escanear un código..." — fue una promesa que yo inventé sin que la pidieras. El QR sí existe (lo generé y apunta a la página real de suscripción), pero es un extra tuyo, no algo que el profesor pidió ni algo que haga falta prometer en el video.
- Tramo 2 (cambio de vista hijo→padre/madre) ahora describe el camino real confirmado: se regresa dos veces hasta `inicio` y ahí se elige "Soy padre o madre" — no hay truco de pestañas.
- Tramo 6 ahora menciona que la suscripción de pago ya es funcional de principio a fin, porque se terminó de construir hoy.

Decisiones que siguen vigentes de la versión anterior:

- **No se fuerza ningún fallo en vivo** (no se corta wifi, no se simula caída de API en pantalla) — la limitación de conectividad se declara de palabra, nunca se finge un error. Esto cumple la regla del profesor: *"lo simulado que se declara no resta; lo simulado que se descubre sí"*.
- **No se edita nada en el editor de Bubble durante la grabación** — eso sería "configurar en vivo", explícitamente prohibido. El hecho de que la IA reacciona distinto a datos distintos se declara de palabra (ya lo probaste y funciona), no se demuestra editando el prompt en cámara.
- El evento en vivo real es el clic en "No reconozco este cargo" — una interacción genuina del usuario, no un truco de edición.
- El lado padre/madre se comprime a lo esencial (consentimiento + revocación) para no robarle tiempo al tramo de "Provocar el evento", que es el que más pesa en la rúbrica del jurado.

## Tramo 1 — Contexto (0:00–0:40)

> "Esto es Vigilio. Cuando a tu papá o mamá le aparece un cargo chico que no reconoce en su cuenta — el tipo que ni el banco nota —, Vigilio te avisa a ti, antes de que se repita. Soy Axel, y esto es un producto funcionando de punta a punta, con la inteligencia artificial evaluando cada caso en tiempo real — no un mockup."

## Tramo 2 — Camino principal (0:40–3:10)

**Registro/login + conectar cuenta, lado hijo (0:40–1:30)**
> "Entro como hijo. Vigilio tiene dos vistas distintas en la misma cuenta: una para quien recibe las alertas, y otra para el papá o mamá, que es quien da el permiso — más adelante te muestro cómo cambio de una a otra. Me registro y conecto la cuenta bancaria de mi papá a través de Belvo, un agregador de open banking de solo lectura — nunca puede mover un peso. Trabajo en su entorno Sandbox, que simula bancos reales sin tocar dinero ni credenciales de nadie; pasar a producción tiene un costo mensual que no se justifica todavía al tamaño de un piloto."

**Lista de alertas (1:30–1:55)**
> "Aquí está la lista de alertas. Este es el caso de prueba que diseñé para validar la detección: Electrónica Gamer MX, 4,500 pesos. La inteligencia artificial no clasifica por un monto fijo — razona sobre el contexto completo: el comercio, la hora, y el tipo de gasto. Ya lo probé con otros datos, y el resultado cambia según lo que describo, no según un número aislado."

**Lado padre/madre, comprimido (1:55–3:10)**
> "Regreso a la pantalla de inicio y elijo ahora 'Soy padre o madre' — cambio al otro lado: el de mi papá o mamá, quien dio el permiso para esto. Desde aquí ve qué cuenta conectó, qué puede ver su hijo o hija —únicamente alertas de cargos sospechosos, nunca el detalle completo de sus movimientos— y puede revocar ese permiso en cualquier momento, sin ayuda de nadie. Esto no es un detalle de diseño: es la respuesta directa a lo que encontré en mis entrevistas de validación — que esto se sintiera como vigilancia, no como cuidado."

## Tramo 3 — Provocar el evento (3:10–4:40)

> "Regreso al lado del hijo y entro al detalle de esta transacción. Veo el comercio, el monto, la fecha, y el motivo que la inteligencia artificial detectó. La decisión de qué hacer con esto nunca la toma la app — la tomo yo: si no reconozco el cargo, o no coincide con lo que sé de los gastos de mi papá, marco 'no reconozco este cargo'. Lo hago ahora mismo, en vivo... [clic] — marqué que no lo reconozco. Vigilio nunca bloquea ni aprueba nada por su cuenta; solo detecta y avisa, para que yo decida."

## Tramo 4 — Fallo manejado (4:40–5:40)

> "Antes de seguir, una limitación real que no escondo: hoy, si se corta la conexión a internet, la app no se recupera sola — por eso, para esta presentación, no dependo del wifi del salón, uso datos móviles. Ya sé exactamente qué falta para que avise y reintente sola cuando la conexión regrese, y es de lo primero que construyo después de este piloto. Esto conecta directo con lo que sigue: marcar un cargo como no reconocido es, en la vida real, el momento donde el hijo decide si vale la pena pagar por ver la guía completa de qué hacer."

## Tramo 5 — La compra (5:40–6:25)

> "Al marcar que no reconozco el cargo, Vigilio me lleva directo a la suscripción: $99 pesos al mes, freemium — gratis hasta el primer problema detectado, como este. [clic en 'Pagar'] Ya pagué, y esto es real dentro de la app, no un mockup de landing: confirmación inmediata, y de aquí a la guía completa de qué hacer — a quién contactar primero, el banco o el comercio. Vigilio nunca cancela ni resuelve nada por mí; solo me ahorra el tiempo de averiguar por dónde empezar."

## Tramo 6 — Cierre (6:25–7:00)

> "Qué funciona hoy: la detección evaluada por inteligencia artificial en tiempo real, la decisión siempre en manos del hijo, la suscripción de pago funcionando de principio a fin, el consentimiento que el papá o mamá controla y puede revocar cuando quiera, y también una notificación por correo cuando aparece una alerta nueva. Qué falta: que la app avise sola si se cae la conexión, y notificación push en el celular. El siguiente paso: pido acceso a 20 familias en Puebla para un piloto de 90 días, para medir lo único que todavía no sé — cuántas conversaciones toma cerrar a un cliente real, porque eso es lo que de verdad me dice si este negocio cierra o no. Gracias."

---
**Referencia:** Cortés, A. (2026). *Semana 9 — Integración, go-to-market y pitch*. Proyectos de Ingeniería 4. https://aristarco.github.io/Proyectos4/semana9/
