---
layout: default
title: "Respuestas a posibles preguntas (Vigilio)"
fecha: "27-nov-2026"
nav_exclude: true
search_exclude: true
---

# Respuestas a posibles preguntas

## ¿Cómo se entera o revoca el padre/madre el consentimiento que ya dio?
**Fuente:** `protocolo-pruebas-usuario-semana9-vigilio.md`

Hoy no hay una pantalla clara donde el padre o madre vea el estado de su consentimiento o lo revoque con facilidad — es el hallazgo más repetido de las 5 pruebas de usuario, vivido por Pedro y María desde los dos lados de la app. Ya está priorizado como el cambio de mayor impacto: diferenciar visualmente "conectar cuenta nueva" de "gestionar y revocar consentimiento".

## ¿Tiene sentido que el padre revoque el acceso desde la cuenta del hijo?
**Fuente:** diseño propio del prototipo (arquitectura de cuentas)

Hoy padre e hijo comparten un solo login con dos vistas — una simplificación consciente para construir ambos lados de la app en un semestre. En producción serían cuentas separadas, conectadas por un código de invitación (una tabla "Vínculo" en Bubble), el mismo patrón que usan apps de familia compartida.

## ¿Por qué 0 de 5 usuarios completaron la tarea sin ayuda?
**Fuente:** `protocolo-pruebas-usuario-semana9-vigilio.md`

Las 5 pruebas de usuario dieron 0% de éxito sin ayuda, pero el SEQ promedio de 4.8/7 indica que no es un problema general de la app, sino 2-3 puntos de fricción específicos y repetidos. Ya se priorizaron los 3 cambios de mayor impacto, empezando por el más repetido.

## ¿Por qué no hay modo offline?
**Fuente:** `requerimientos-ieee830-semana5-vigilio.md` (RF-06); Reglamento de la LFPDPPP (Ley Federal de Protección de Datos Personales en Posesión de los Particulares), Art. 45-46

Ni Belvo ni Bubble operan sin internet, por diseño: Vigilio no guarda copia del historial bancario del padre/madre, se lo pide a Belvo en vivo cada vez, consistente con el principio de minimización de datos de la LFPDPPP (Ley Federal de Protección de Datos Personales en Posesión de los Particulares). RF-06 (reintentar y avisar en vez de fallar en silencio) está documentado pero no construido todavía.

## ¿Por qué no hay un mensaje amigable si falla la IA o Belvo?
**Fuente:** decisión de alcance del proyecto

Fue una decisión consciente de no construirlo este semestre, priorizando tener ambos roles de la app funcionando de punta a punta antes de pulir el manejo de errores. Es la siguiente mejora en la lista.

## ¿Sigue activo el bug de inicio de sesión?
**Fuente:** `protocolo-pruebas-usuario-semana9-vigilio.md`

David reportó no poder iniciar sesión, confirmado con una captura real del error. Es el único de los 5 hallazgos que puede ser un bloqueo real de acceso, por lo que es la prioridad #2 de la lista de cambios, pendiente de reconfirmar si sigue activo antes de cada demo.

## ¿Vigilio puede mover o cancelar dinero?
**Fuente:** `protocolo-pruebas-usuario-semana9-vigilio.md` (Sofia, Pedro)

No, Vigilio es de solo lectura y nunca mueve dinero, pero esa limitación no está comunicada con suficiente claridad en la app hoy. Ya está priorizado agregar una línea de texto visible en la pantalla de alerta.

## ¿Qué tan estable es la app en operación continua?
**Fuente:** `resumen-semana9-para-pagina.md` (tabla T1-T6)

El enlace en vivo no ha tenido caídas en ~48 horas de uso real por usuarios reales, pero esto es evidencia informal, no una prueba de carga formal con tráfico simulado.

## ¿Hay clientes pagando hoy?
**Fuente:** `resultado-validacion-semana3.md`

No hay preórdenes pagadas todavía. 3 de 9 entrevistados dijeron que pagarían directamente, con $99 MXN mencionado espontáneamente por dos personas distintas — es intención declarada, no dinero real. El piloto de 20 familias propuesto mide justo eso.

## ¿Tú solo podrías resolver cualquier problema técnico?
**Fuente:** `requerimientos-ieee830-semana5-vigilio.md` (RR-02); `plan-de-accion-stack-vigia.md`

No. Por eso se eligieron deliberadamente Bubble (no-code) y Claude Code como asistente de programación, reduciendo la necesidad de escribir código complejo desde cero. Contratar personal es una decisión de una etapa posterior, cuando el negocio tenga ingresos reales que lo sostengan (RR-02 confirma que el proyecto se construye por una sola persona, acordado con el profesor).

## ¿Qué analiza exactamente la inteligencia artificial?
**Fuente:** `simulacion-datos-belvo-vigilio.md`; `arquitectura-sistema-semana5-vigilio.md`

El clasificador da hoy un resultado binario (sospechosa/normal), comparando cada transacción nueva contra el historial reciente de esa cuenta, no contra una lista fija de tipos de fraude. Una clasificación más fina en 4 categorías ya está diseñada en la arquitectura, pero no implementada todavía.

## ¿Cómo distingue un cargo de prueba (card-testing) de una suscripción no reconocida?
**Fuente:** `arquitectura-sistema-semana5-vigilio.md`; Mastercard Newsroom (2024)

El clasificador compara comercio, hora y monto contra lo reciente de la cuenta, no solo el monto aislado. El caso más difícil —una suscripción indeseada en una categoría de gasto habitual— se delata porque es un cobro nuevo que se repite mes con mes; no se atrapa el 100% de los casos, pero sigue siendo mejor que la alternativa actual, ya que los bancos no avisan de cargos de entre $0.50 y $5 USD.

## ¿Qué te diferencia de un banco, si ellos también analizan patrones?
**Fuente:** `arquitectura-sistema-semana5-vigilio.md`; System Hardening (2026)

El clasificador compara contra los últimos 90 días de UNA cuenta específica, no contra modelos poblacionales genéricos como hacen los bancos a gran escala. Esto es lo que hubiera atrapado el caso real que inspiró el proyecto: un comercio ausente por meses que reaparece ya no cuenta como "normal" para el modelo, aunque alguna vez lo fue.

## ¿Qué marco legal aplica al proyecto?
**Fuente:** `checklist-regulatorio-semana9-vigilio.md`

Aplican la LFPDPPP —Ley Federal de Protección de Datos Personales en Posesión de los Particulares— (consentimiento del padre/madre, vigilada hoy por la Secretaría Anticorrupción y Buen Gobierno), la Ley Fintech con autorización CNBV para Belvo, los Términos Comerciales de Anthropic para el uso de la IA, y la Ley Federal de Protección al Consumidor para la suscripción — donde queda pendiente publicar términos de servicio y política de cancelación completos.

## ¿Cómo funciona Vigilio en general? ¿Cómo detecta los cargos sospechosos?
**Fuente:** `arquitectura-sistema-semana5-vigilio.md`

El flujo completo, paso a paso: (1) Belvo —el agregador de open banking— vigila en segundo plano la cuenta bancaria del padre o madre, ya conectada con su consentimiento; (2) en cuanto el banco reporta una transacción nueva, Belvo envía un **webhook** (`new_transactions_available`) al backend de Vigilio en Bubble — una notificación automática, no una consulta constante; (3) el backend responde con una **llamada API** al endpoint de Transacciones de Belvo para traer el detalle de ese cargo (comercio, monto, fecha, hora); (4) ese cargo se junta con los últimos 90 días de historial de la misma cuenta; (5) ambos se envían en otra **llamada API**, esta vez a Claude Haiku 5.5, el modelo de inteligencia artificial que compara el cargo nuevo contra el patrón normal de esa cuenta y clasifica el resultado como "sospechosa" o "normal"; (6) si es sospechosa, un workflow de Bubble genera una alerta visible para el hijo o hija, con el motivo explicado en lenguaje natural; si es normal, no se genera nada y el hijo nunca la ve.

## ¿Cómo se entera Vigilio, en el momento, de un cargo nuevo?
**Fuente:** `arquitectura-sistema-semana5-vigilio.md`

Belvo vigila la cuenta en segundo plano y manda un webhook (`new_transactions_available`) al backend apenas el banco reporta un cargo nuevo. El backend pide el detalle de esa transacción, lo junta con los últimos 90 días de historial, y llama a Claude Haiku para clasificar — si es sospechosa, se genera la alerta; si es normal, no llega nada. Belvo no publica una cifra exacta de milisegundos o segundos para este proceso.

## ¿Cuánto cuesta cada llamada a Belvo y a Claude Haiku?
**Fuente:** `bom-costo-ia-semana7-vigilio.md`

Son dos modelos de costo distintos: Belvo cobra tarifa plana ($1,000 USD/mes en producción, sin importar el volumen de cuentas), mientras que Claude Haiku cobra por uso real ($0.00025 USD por clasificación, menos de medio centavo de peso mexicano). A la frecuencia estimada de ~1 llamada/día por cuenta, el costo de IA es de apenas $0.13 MXN/mes por cuenta.

## ¿De dónde sacas que ~85% de los adultos mayores tiene al menos un hijo adulto?
**Fuente:** Monroy-Gómez-Franco & Vélez-Grajales (2015)

No existe una cifra mexicana oficial exacta para esto — es el supuesto más frágil del tamaño de mercado, buscado a propósito por ser el más frágil. El Mexican Health and Aging Study (MHAS, Ola 3, 2012, N=13,102) encontró que entre adultos mexicanos de 75 años o más, solo ~4% no tuvo hijos — es decir, ~96% sí tuvo al menos uno. Es una cohorte algo mayor que el rango de 60-70 años del proyecto, pero dadas las tasas de fecundidad más altas de esas generaciones (4.7-6.9 hijos en promedio por persona), el supuesto del 85% usado en el modelo es conservador, no inflado para que el número se vea bien.

## ¿Cuál es el punto de equilibrio real del negocio?
**Fuente:** `modelo-financiero-actualizado-27nov-vigilio.md`; Belvo (2026)

El modelo financiero debe usar el plan de producción de Belvo ($17,580 MXN/mes), no el Sandbox gratuito, porque operar con familias reales necesita cuentas bancarias reales. Con ese costo, el punto de equilibrio real es de 204 cuentas pagando (solo costos operativos) o 230 cuentas (recuperando también la inversión inicial en 12 meses) — números que caen dentro de la meta de año 1-2 (300-600 hogares), no del piloto académico mismo.

---
**Referencia:** Cortés, A. (2026). *Semana 9 — Integración, go-to-market y pitch*. Proyectos de Ingeniería 4. https://aristarco.github.io/Proyectos4/semana9/
