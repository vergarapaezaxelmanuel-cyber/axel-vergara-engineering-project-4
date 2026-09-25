---
title: Evidencia — PDS y Arquitectura del Sistema (Semana 05)
layout: default
parent: Semanas
nav_exclude: true
---

# Evidencia — PDS y Arquitectura del Sistema (Semana 05)

**Nota de privacidad:** este registro no incluye nombres completos ni enlaces personales de nadie fuera de mí. Mi profesor se menciona sin nombrarlo, igual que en la Semana 4 — su retroalimentación y su plantilla de clase sí se citan, porque son parte legítima de mi proceso, pero sin exponer su identidad.

**Nota de fidelidad:** la mayor parte de este registro es 🟢 (texto real, tomado directo de la conversación), porque esta vez trabajé el PDS y la arquitectura en un chat aparte y guardé el proceso completo antes de traerlo aquí. Marco 🟡 únicamente donde resumo contenido extenso en vez de citarlo completo.

## Paso 1 — Ejercicio en clase (según recuerdo), prompt propio de "director de proyectos", 2 por categoría 🟢

> Prompt real: "Puedes ayudarme a generar un prompt desde un director de proyectos especializado en America latina y del norte y en México. El prompt tiene que encontrar 2 requerimientos funcionales, 2 requerimientos d edesempeño, 2 requerimientos de interfaz y 2 requerimientos de restricción, por favor."

**Resultado:** antes de generar el prompt, se corrigió el error de escritura ("d edesempeño" → "de desempeño") y se preguntó para qué proyecto era. Con la respuesta ("Vigía", corregido después a "Vigilio" — nombre ya cerrado desde Semana 3), se hizo una búsqueda web real: según Condusef, los adultos mayores de 60+ concentraron el 32% de las quejas por posible delito financiero en México en 2025, y una de las tres fuentes de fraude identificadas por la propia autoridad es el entorno familiar (hijos, nietos o cuidadores) que usa la tarjeta sin autorización (Zócalo, 2026). Ese hallazgo se usó para justificar incluir, de forma obligatoria, un requerimiento de restricción sobre consentimiento y alcance del acceso del cuidador. El prompt generado se corrió y produjo 8 requerimientos (2 por categoría), guardados como primera versión del PDS.

**Nota sobre el orden de los hechos:** este primer prompt se corrió antes de verificar el contenido real de la página de Semana 5 de mi profesor. No estoy seguro de que la instrucción de clase haya sido exactamente esta — se registra con esa incertidumbre explícita, no como un hecho confirmado.

## Paso 2 — Ampliación del prompt propio a 16 requerimientos (4 por categoría) 🟢

> Decisión real: completar primero mi propia versión del PDS — "faltaría poner primero mi prompt" — antes de compararla contra el prompt de mi profesor, para que la comparación fuera justa (16 contra 16, no 8 contra un prompt que ya pide completar huecos).

**Resultado:** se agregaron 8 requerimientos nuevos, cada uno anclado a evidencia real del proyecto: guía de resolución paso a paso y portal de consentimiento para el padre/madre (funcionales); disponibilidad y capacidad de procesamiento del piloto (desempeño); pantallas mínimas de la app e interfaz de transparencia regulatoria (interfaz); restricción de no-control sobre el gasto del padre/madre y restricción de no sobreprometer regulación propia (restricción). Dos de los ocho — la interfaz de transparencia regulatoria y su restricción asociada — nacen directo del hallazgo de mi novena entrevista (José, sobre la condición regulatoria — Semana 4). PDS completo en 16 requerimientos, 4 por categoría.

## Paso 3 — Arquitectura del sistema (Prompt 1 de mi profesor, adaptado a producto solo-software) 🟢

Compartí verbatim el bloque de la página real de Semana 5 de mi profesor (decisión edge/cloud/híbrido, diagrama de 3 capas, tabla de protocolos, viabilidad de manufactura, y el Prompt 1 completo). Ese prompt asume un producto mecatrónico con hardware propio — Vigilio no lo tiene, decisión de alcance ya confirmada. Antes de correrlo, se adaptó el prompt de entrada quitando las capacidades de hardware que no aplican, documentando explícitamente qué se adapta y por qué, sección por sección.

**Prompt real de entrada (adaptado, resumido de la versión completa que guardo en mi Proyecto de Claude):**

> "Actúa como un arquitecto de sistemas de software... Somos un equipo de una sola persona en México desarrollando un producto EXCLUSIVAMENTE DE SOFTWARE (sin componente físico en su alcance actual)... Nuestra decisión de arquitectura de IA: Cloud. Justificación (3 puntos): [contexto amplio que no cabe en un dispositivo, margen de latencia de hasta 15 minutos, ausencia de dispositivo físico propio]. Con esta información, diseña la arquitectura del sistema completo en el mismo formato de 4 pasos... pero ADAPTA la Capa Física y la Viabilidad de Manufactura al hecho de que no existe componente físico: no inventes hardware que el producto no tiene, declara explícitamente por qué esa sección no aplica y qué la reemplaza."

**Resultado:** arquitectura completa de 3 capas (origen de datos, datos, presentación), con flujo de datos y latencias estimadas paso a paso (webhook de Belvo → REST → clasificador → notificación push/correo, ~3-6 segundos en total sin contar el intervalo de sincronización de Belvo), y viabilidad de piloto de software en vez de viabilidad de manufactura: Belvo Sandbox gratis, el clasificador en fracciones de centavo, pero el salto a Belvo Production (~$1,000 USD/mes) rompería el modelo de precio a la escala del piloto (20-30 familias). Todo esto quedó documentado con su tabla de adaptación completa en el Proyecto.

## Ronda — Hueco de proceso encontrado y no escondido 🟢

Al revisar el registro para documentar el siguiente paso, encontré una inconsistencia real: el documento del PDS decía "ver registro de prompts para el texto completo" de la primera auditoría (la que llevó de 16 a 18 requerimientos), pero ese prompt nunca se había guardado ahí — no existía. Decisión tomada en el momento: no reconstruirlo de memoria e inventar una versión "parecida", porque sería exactamente el tipo de contenido fabricado que este proyecto ha evitado en todos los demás documentos (mismo criterio ya aplicado con el Pain-Gain Map de Semana 2). En vez de eso, se buscó el prompt real de mi profesor directamente en el código fuente de su página de clase en GitHub — la página renderizada lo resume por espacio, el markdown crudo lo trae completo.

## Paso 4 — Ajuste posterior: cobertura multi-banco y línea base histórica 🟢

Esto no fue un prompt formal con el formato de mi profesor, fue una conversación de refinamiento sobre la arquitectura ya entregada, motivada por dos preguntas mías:

> Pregunta 1: ¿cuántos bancos o cuentas puede manejar Belvo para un mismo usuario? ¿Solo uno, o se pueden conectar todos los que tenga el padre/madre?

**Resultado:** se consultó la documentación real de desarrolladores de Belvo. Cada institución bancaria se conecta como un link independiente, y un mismo usuario puede mantener varios links activos a la vez — sin límite documentado. Lo que sí se confirmó como límite real: no existe una lista pública fija de qué bancos mexicanos cubre Belvo para el producto de cuentas bancarias, solo la cifra de marketing "+90% de las cuentas en América Latina". Queda pendiente de mi parte verificar la lista real en el dashboard antes de prometer cobertura total como diferenciador de venta. Decisión tomada: sí, el objetivo es cubrir la totalidad de las cuentas del padre/madre, sin importar el banco.

> Pregunta 2: confirmar que el tier Sandbox de Belvo es 100% simulado, no cuentas reales.

**Resultado:** confirmado con fuente — Sandbox entrega datos ficticios para prototipar, nunca cuentas ni bancos reales.

## Paso 5 — El Prompt 2 real de mi profesor, encontrado y corrido 🟢

El hueco anotado arriba quedó cerrado el mismo día: se encontró el texto verbatim del segundo prompt de mi profesor ("validar y completar el PDS") directamente en el repositorio de GitHub detrás de su página de clase — el markdown fuente lo trae completo, la página renderizada solo lo resume. Se confirmó de paso que el Prompt 1 (arquitectura), ya adaptado en el Paso 3, coincidía en estructura con el original — la adaptación había sido fiel.

**Prompt 2 real, verbatim (resumido — el texto completo vive en mi Proyecto de Claude):**

> "Actúa como un ingeniero de producto senior... Tu especialidad es identificar requerimientos mal redactados — demasiado vagos para verificarse, demasiado restrictivos para ser alcanzables, o que faltan y harán falta en el desarrollo... Revisa el PDS completo y entrega: 1. Diagnóstico por categoría. 2. Correcciones. 3. Requerimientos faltantes (mínimo 2 por categoría)."

Se llenaron los placeholders con los datos reales de Vigilio y los 16 requerimientos base, para probar el prompt limpio, sin contaminar con hallazgos de la ronda informal anterior.

**Resultado (diagnóstico real):** confirmó los dos hallazgos de la ronda anterior (compatibilidad de plataforma, restricción de tiempo) y encontró cuatro huecos nuevos: vinculación inicial de la cuenta (nadie describía cómo el hijo/a conecta la cuenta del padre/madre por primera vez), manejo de falla de la integración con Belvo o el clasificador, accesibilidad mínima para el padre/madre, y qué pasa con los datos ya descargados al revocar el consentimiento.

**Mi objeción y cómo se resolvió (real):** cuestioné el hallazgo sobre manejo de fallas — "no aplicaría tanto porque Belvo nada más sería para leer". El argumento que me hizo cambiar de opinión: que la integración sea de solo lectura no reduce la gravedad de una falla — lo que está en juego no es que Vigilio mueva dinero por error, es que yo deje de enterarme de un cargo real durante la ventana en la que el producto promete avisar. Acepté el argumento.

**Decisión final sobre los 6 candidatos:** se adoptaron 4 de 6. Vinculación inicial y accesibilidad, sin objeción. Manejo de falla de terceros, después de la discusión de arriba. Retención/cifrado y eliminación al revocar se fusionaron en un solo requerimiento (en vez de dos redundantes). Se descartó el intervalo de sincronización de Belvo por ser un parámetro de configuración, no una meta independiente. Resultado: RF-05, RF-06, RI-05 y RR-07 agregados — el PDS pasa de 18 a **22 requerimientos**.

## Cierre de la semana 🟢

> Mensaje real de cierre: "necesito que lo formalices y una vez ya formalizado, pues ya se generaría el resumen de la semana 5 justamente. Ya tienes igual incluso la foto del mapa, no, no para que lo pongas, sino para que lo menciones... pero pues ya me gustaría cerrar justamente ya la semana 5."

**Resultado:** se formalizaron los 4 requerimientos nuevos en el PDS (18 → 22), se cerró el registro de prompts con el Prompt 2 real y su resultado completo, se agregaron referencias cruzadas en la arquitectura, y se generó un resumen de la semana para la página, mencionando el diagrama sin incrustarlo — esa versión resumida es la base de `semana-05.md`, adaptada aquí a mi voz de reporte y con el nombre de mi profesor retirado del texto público, siguiendo el mismo criterio de privacidad que ya usé en Semana 4.

---

## Nota final sobre cómo se trabajó esta semana

A diferencia de Semana 4, todo el trabajo del PDS y la arquitectura se hizo en un chat aparte de Claude, con el proceso completo guardado ahí antes de traerlo a este registro — por eso la mayoría de este documento es 🟢 en vez de 🟡. Lo que sí hice al traerlo aquí fue quitar el nombre de mi profesor de todo el texto público (queda solo como "mi profesor", igual que en Semana 4) y omitir el enlace directo a su repositorio de GitHub — esa referencia académica completa se queda en mi Proyecto de Claude, que no es público, para no exponer su identidad en la página del curso.
