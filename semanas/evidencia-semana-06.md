---
title: Evidencia — Generación y Selección de Concepto de Diseño (Semana 06)
layout: default
parent: Semanas
nav_exclude: true
---

# Evidencia — Generación y Selección de Concepto de Diseño (Semana 06)

**Nota de privacidad:** este registro no incluye nombres completos ni enlaces personales de nadie fuera de mí. Mi profesor se menciona sin nombrarlo, igual que en semanas anteriores — sus prompts reales y la verificación en el repositorio del curso sí se citan, porque son parte legítima de mi proceso.

**Nota de fidelidad:** a diferencia de un borrador anterior de este registro, esta versión sí guarda el texto completo de los prompts y resultados de toda la semana, recuperado de mi Proyecto de Claude. Casi todo este documento es 🟢 (texto real).

## Paso 1 — Tabla morfológica 🟢

**Prompt real:**

> "Actúa como un director de proyectos con experiencia en análisis morfológico de productos y en el sector bancario/fintech de México y América Latina. Para la aplicación Vigilio (app que monitorea cuentas bancarias de un padre/madre mayor y alerta a un hijo/a adulto sobre cargos sospechosos vía Belvo), define de 6 a 7 parámetros de diseño relevantes para la experiencia de usuario y la arquitectura de la interfaz. Para cada parámetro, genera exactamente 3 variantes claramente distintas entre sí (no variaciones superficiales). El objetivo es que al combinar variantes de parámetros distintos se puedan construir 3 conceptos de app genuinamente diferentes entre sí, no 3 versiones de la misma idea. Presenta el resultado en una tabla: columna de parámetro, y 3 columnas de variante (Variante A, B, C)."

**Resultado:**

| Parámetro | Variante A | Variante B | Variante C | Complejidad técnica (A/B/C) |
|---|---|---|---|---|
| 1. Vinculación y consentimiento inicial | Flujo guiado: el padre/madre ingresa sus credenciales en el widget de Belvo, con el hijo/a presente supervisando. | Flujo delegado: el hijo/a envía un enlace al padre/madre, quien completa la vinculación solo. | Flujo asistido a distancia: videollamada donde el hijo/a guía verbalmente al padre/madre. | Media / Baja / Alta |
| 2. Canal principal de alertas | Notificación push dentro de la app nativa. | Alerta por WhatsApp/SMS, sin abrir la app. | Correo con resumen diario consolidado. | Baja / Media / Baja |
| 3. Nivel de automatización de la respuesta | Solo informativa, el hijo/a decide manualmente. | Acciones rápidas integradas en la notificación. | Escalamiento semi-automático a un segundo familiar. | Baja / Media / Alta |
| 4. Interfaz principal del hijo/a (dashboard) | Feed cronológico. | Vista tipo "semáforo". | Vista organizada por banco/cuenta. | Baja / Media / Media |
| 5. Participación del padre/madre | Ninguna interfaz propia (invisible). | Vista mínima de solo lectura. | Confirmaciones pasivas por llamada automatizada. | Baja / Media / Alta |
| 6. Personalización de umbrales de alerta | Umbrales fijos. | Ajustables, con mínimo y máximo (refinamiento mío). | Adaptativos según patrón de gasto. | Baja / Media / Alta |
| 7. Gestión de múltiples cuentas/bancos | Vista unificada, un solo stream. | Segmentada por pestañas. | Jerárquica, resumen + detalle expandible. | Baja / Media / Media |

## Paso 2 — Analogías tecnológicas 🟢

**Parámetros elegidos:** canal principal de alertas, nivel de automatización de la respuesta, gestión de múltiples cuentas/bancos — los tres más débiles de la tabla del Paso 1.

**Prompt propio (corregido y corrido):**

> "Piensa como un director/gestor de proyectos especializado en México y América Latina, con experiencia en temas bancarios y en identificar analogías tecnológicas entre sectores para resolver problemas de experiencia de usuario. [...] De esos 7 parámetros, los que consideramos más débiles o menos resueltos son: canal principal de alertas, nivel de automatización de la respuesta, y gestión de múltiples cuentas/bancos vinculados. Para cada uno [...] dime qué problemas de experiencia podríamos tener [...] y cómo los resuelve cada uno de estos sectores distintos al bancario: una aplicación bancaria tradicional, una aplicación de videojuegos, una aplicación para leer libros, y cualquier otro sector que te parezca relevante."

**Prompt real de mi profesor (verificado en la fuente, adaptado a los mismos 3 parámetros):**

> "Actúa como consultor de innovación de diseño con experiencia en transferencia de soluciones entre sectores. [...] Para cada parámetro señalado, encuentra 2–3 productos de sectores completamente distintos al nuestro que hayan resuelto el mismo problema de experiencia de forma brillante. [...]"

**Resultado — convergencia entre ambas versiones:**

- Canal de alertas: debe escalar por severidad en vez de ser fijo (push → WhatsApp/SMS → llamada), inspirado en sistemas de alerta médica para adultos mayores y alertas de fraude bancario en tiempo real.
- Automatización de la respuesta: el sistema debe actuar como filtro antes de molestar al hijo/a, automatizando por completo solo con alta confianza del clasificador, inspirado en sistemas de seguridad doméstica (Ring/ADT) y triage de líneas de atención a fraude.
- Multi-cuenta/banco: vista unificada con etiqueta visual del banco de origen, inspirado en agregadores financieros (Fintonic/Finerio), apps de correo multi-cuenta y wallets cripto multi-cadena.

Ambas versiones (la abierta y la estructurada de mi profesor) llegaron a las mismas conclusiones — señal de que el hallazgo es robusto, no un capricho del formato del prompt. Por decisión mía, la tabla morfológica del Paso 1 no se modificó con estos hallazgos (se mantuvo A/B/C sin fusionar parámetros); quedaron como criterio racional para elegir combinaciones en el paso siguiente.

## Paso 3 — Los 3 conceptos de diseño 🟢

**Combinaciones de variantes:**

| Parámetro | Concepto 1 — "Vigilio Inmediato" | Concepto 2 — "Vigilio Colaborativo" | Concepto 3 — "Vigilio a Distancia" (ganador) |
|---|---|---|---|
| Vinculación | B | A | C |
| Canal de alertas | B | A | C |
| Automatización | C | A | B |
| Dashboard | B | A | C |
| Padre/madre | A | B | C |
| Umbral | C | B refinado | A |
| Multi-cuenta | A | C | B |

**Prompt real de mi profesor (verbatim, bloque "artefacto físico" adaptado a "sistema" por ser Vigilio software-only):**

> "Actúa como diseñador industrial y UX designer con experiencia en productos de hardware + software para mercados emergentes. [...] Para cada concepto, desarrolla los tres componentes del producto: ARTEFACTO FÍSICO (instalación, uso cotidiano, principios activos), APP — pantalla principal (estado normal, alerta, acción principal, qué NO muestra), LANDING PAGE (headline, visual principal, CTA)."

**Resultado:**

- **Concepto 1 — Vigilio Inmediato:** onboarding delegado al padre/madre; umbral adaptativo; escalamiento automático a un segundo familiar. App: semáforo verde/rojo, acción desde WhatsApp/SMS. Landing: "Protege a tus papás sin tener que estar pegado al celular."
- **Concepto 2 — Vigilio Colaborativo:** onboarding conjunto; decisiones 100% manuales; umbral ajustable con mínimo/máximo. App: feed cronológico, botones reconozco/no reconozco. Landing: "La tranquilidad de saber qué pasa con la cuenta de tus papás, juntos."
- **Concepto 3 — Vigilio a Distancia (ganador):** onboarding asistido por videollamada; resumen diario por correo organizado por banco; llamada automatizada semanal al padre/madre. App: vista jerárquica por banco, se expande sola donde hay alerta. Landing: "Un resumen al día, sin saturarte de notificaciones."

## Paso 4 — Matriz de Pugh 🟢

**Prompt real de mi profesor (verbatim):**

> "Actúa como un ingeniero de producto con experiencia en selección de concepto usando la Matriz de Pugh [...] 1. CRITERIOS: 8–10 criterios, mínimo 3 de DESEABILIDAD (suman mínimo 40% del peso) y mínimo 3 de FACTIBILIDAD. 2. EVALUACIÓN: Concepto 1 y 2 vs. Concepto 3 (datum): +/-/S. 3. PUNTUACIÓN: puntaje ponderado por concepto. 4. ANÁLISIS: concepto ganador, riesgo principal, iteración recomendada."

**Datum:** Concepto 2 — "Vigilio Colaborativo". 9 criterios (55% deseabilidad: velocidad de alerta 15%, facilidad de vinculación 12%, transparencia/confianza 10%, baja carga de interrupciones 8%, alineación con el propósito 10%; 45% factibilidad: complejidad de desarrollo 15%, costo operativo 10%, tiempo de desarrollo 10%, escalabilidad 10%).

| Criterio (peso) | C1 — Inmediato | C2 — Colaborativo (datum) | C3 — A Distancia |
|---|---|---|---|
| Velocidad de alerta (15%) | + | datum | – |
| Facilidad de vinculación (12%) | – | datum | S |
| Transparencia/confianza (10%) | – | datum | S |
| Baja carga de interrupciones (8%) | S | datum | + |
| Alineación con el propósito (10%) | – | datum | + |
| Complejidad de desarrollo (15%) | – | datum | S |
| Costo operativo (10%) | – | datum | S |
| Tiempo de desarrollo (10%) | – | datum | S |
| Escalabilidad (10%) | + | datum | S |

**Puntuación ponderada:** C1 = –42 · C2 (datum) = 0 · C3 = +3 (ganador)

**Por qué ganó:** refuerza el propósito central (umbral fijo, sin riesgo de perder sensibilidad a cargos pequeños) y reduce interrupciones; el Concepto 1 acumuló las variantes más caras/complejas de la tabla y su umbral adaptativo arriesgaba la sensibilidad del producto.

**Riesgo principal:** su punto más débil es el criterio de mayor peso — velocidad de alerta (15%), ya que el resumen diario no es tiempo real.

**Iteración recomendada:** adoptar del Concepto 1 el escalamiento inmediato, pero solo para alertas de alta confianza del clasificador.

## Paso 5 — Wireframe de baja fidelidad del concepto ganador 🟢

**Cambio de herramienta (decisión mía):** el wireframe se construye en Figma, no en draw.io. El archivo `wireframe-vigilio-a-distancia.drawio` generado inicialmente queda solo como referencia/respaldo del contenido (flujo de 5 pasos de vinculación + pantalla principal con estado de alerta), no como el entregable final. El entregable real se armó directamente en Figma, con apoyo de Claude revisando capturas de pantalla del avance.

[Ver el wireframe interactivo en Figma →](https://www.figma.com/make/7NO7cD9TAUvuXbwztLwh4L/Typewriter-Text-Effect)

## Paso 6 — Boceto técnico del concepto elegido (adaptado) 🟢

La rúbrica pide "cotas aproximadas, materiales indicados y sección transversal" — lenguaje de ingeniería mecánica para un objeto físico que Vigilio no tiene. Identifiqué el choque yo mismo ("nosotros no son materiales"). Adaptación: un corte transversal de las capas del sistema, cada una con su "material" (la tecnología que la implementa) y su "cota" (una métrica de tiempo o volumen en vez de una medida física):

- Capa de presentación (UI): material = Bubble (builder no-code, decisión cerrada en Semana 5 sobre FlutterFlow — ver `plan-de-accion-stack-vigia.md`); cota = render de pantalla < 1s.
- Capa de lógica/clasificador de IA: material = Claude Haiku o GPT-4o-mini vía API, llamado desde los API Workflows de Bubble; cota = clasificación por transacción < 2s.
- Capa de integración bancaria: material = Belvo API (tier Sandbox); cota = historial de ~12 meses por cuenta.
- Capa de datos: material = base de datos nativa de Bubble (sin sistema externo aparte); cota = retención según RR-07 (eliminación al revocar consentimiento).

**Corrección, post-entrega (2-oct-2026):** la primera versión de este boceto usaba "React Native/Flutter" como material de la capa de presentación y una base de datos externa genérica para la capa de datos — ambos ya estaban mal: el stack quedó cerrado en Bubble desde la Semana 5 (`plan-de-accion-stack-vigia.md`: "Decisión cerrada, Bubble, no FlutterFlow"), y no lo verifiqué contra ese documento antes de dibujar el boceto. Yo mismo detecté la inconsistencia y corregí el archivo `.drawio` directamente, sin esperar a que alguien más lo notara.

Archivo: `boceto-tecnico-vigilio-corte-transversal.drawio` (versión corregida).

## Paso 7 — Crítica técnica del boceto 🟢

**Prompt real de mi profesor (verbatim):**

> "Actúa como un ingeniero de diseño industrial con experiencia en revisar bocetos técnicos de productos de hardware en etapa de pre-CAD. [...] No corriges todo — priorizas los 3 problemas más importantes. [...] 1. PROBLEMAS CRÍTICOS (máximo 3). 2. PREGUNTAS SIN RESOLVER. 3. UNA FORTALEZA DEL DISEÑO. LISTO PARA CAD: sí / con ajustes menores / necesita revisión."

**Resultado:**

1. Llamada automatizada sin manejo de fallo: si el padre/madre no contesta, no hay reintento definido → solución: 2 reintentos + notificación al hijo/a si ambos fallan.
2. Sin escalamiento si el correo diario no se revisa: una alerta real podría quedar enterrada → solución: escalar a push/SMS inmediato solo con alta confianza del clasificador.
3. La integración trata "Belvo" como una sola unidad: no distingue que cada banco es un link independiente → solución: anotar que cada banco tiene su propio estado de salud.

**Fortaleza:** la separación en capas independientes permite agregar un banco nuevo o cambiar el clasificador sin tocar las demás capas.

**Listo para desarrollo:** con ajustes menores.

## Paso 8 — Defensa de concepto (guion de 3 minutos) 🟢

> **Minuto 1:** "Elegimos Vigilio a Distancia. Es una app organizada en capas de software, vinculada a las cuentas del padre/madre vía Belvo mediante una videollamada asistida. El usuario sabe que funciona porque recibe un resumen diario por correo y puede ver cada banco expandible con sus transacciones recientes."
>
> **Minuto 2:** "Lo elegimos sobre los otros dos porque en la Matriz de Pugh ganó en alineación con el propósito central y en baja carga de interrupciones. El Concepto 1 tenía ventaja en velocidad de alerta, pero perdió porque acumulaba las variantes más caras y complejas, y su umbral adaptativo arriesgaba la sensibilidad a cargos pequeños."
>
> **Minuto 3:** "El riesgo principal es que el resumen diario no es tiempo real. Lo mitigamos con un escalamiento híbrido: correo diario por default, push/SMS inmediato cuando el clasificador detecta alta confianza de fraude."

## Paso 9 — Renders de apoyo visual (no calificado, pero incluido como evidencia del proceso) 🟢

**Prompts usados** (en inglés, con el texto de pantalla en español entre comillas, por mejor legibilidad de texto en los modelos de imagen):

> **Concepto 1:** "A clean modern mobile banking security app screen inside a smartphone mockup, vertical orientation. Large circular status indicator glowing soft green at center with the text 'Todo en orden' beneath it. Below it, a notification card with a red left border shows: '$450 - Farmacia San Pablo - hace 2 horas' with two buttons labeled 'Reconozco' and 'No reconozco'. [...]"
>
> **Concepto 2:** "Two smartphone mockups side by side. The left phone shows a chronological list of bank transaction cards [...] highlighted with a red border showing a suspicious charge [...] The right phone shows a much simpler screen for an elderly parent: large readable text reading 'Tus cuentas están protegidas' [...]"
>
> **Concepto 3:** "A clean modern mobile banking security app screen [...] hierarchical list of bank accounts grouped by institution [...] one automatically expanded and highlighted with a red border, revealing a flagged transaction: '$85 - App de streaming no reconocida' [...]"

**Resultado en Gemini** (descartado):

![Render en Gemini — nombres de banco inventados](../assets/images/semana6-render-gemini.png)

**Resultado en Copilot** (el elegido):

![Render en Copilot/DALL-E 3 — el elegido](../assets/images/semana6-render-copilot.png)

**Por qué se eligió Copilot sobre Gemini:** ambas herramientas acertaron en los textos de botones y mensajes de alerta ("Reconozco"/"No reconozco", "Todo en orden"), pero Gemini generó nombres de banco ilegibles o inventados ("Bank Finante", "Bank Anrmacia", "Bank of Brania") en el concepto ganador, mientras que Copilot (basado en DALL-E 3) renderizó nombres y logos de bancos reales y correctos (BBVA, Santander, Banamex, HSBC), con encabezados claros por concepto. DALL-E 3 es consistentemente más preciso renderizando texto legible dentro de una imagen que el motor de Gemini — una diferencia técnica conocida entre ambos modelos, relevante aquí porque el render es de una pantalla llena de texto, no de un objeto sin texto.

---

## Estado final de entregables de Semana 6 (verificado contra la rúbrica real) 🟢

| Entregable | Estado |
|---|---|
| Mínimo 3 conceptos de diseño | Hecho (Paso 3) |
| Matriz de Pugh completa | Hecho (Paso 4) |
| Boceto técnico del concepto elegido | Hecho, adaptado, en draw.io — corregido (Paso 6) |
| Wireframe de baja fidelidad | Hecho, en Figma (Paso 5) |

**Fuera de la rúbrica, opcional:** render de apoyo visual del concepto ganador (Paso 9) — hecho.

---

## Nota final sobre cómo se trabajó esta semana

A diferencia de un borrador anterior de este registro, esta versión sí tiene el texto completo de los prompts y resultados de los 9 pasos de la semana, recuperado de un documento aparte donde guardé todo el proceso. Por eso casi todo este documento es 🟢. La corrección del boceto técnico (Paso 6) quedó documentada tal como pasó: la detecté yo mismo después de entregar, no me la señaló nadie más, y la corregí directo en el archivo.
