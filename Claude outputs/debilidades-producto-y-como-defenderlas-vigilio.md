---
title: "Temas débiles de Vigilio y cómo defenderlos en la presentación (documento interno, NO para la página)"
fecha: "25-nov-2026"
---

# Temas débiles de Vigilio — qué falta, por qué es real, y cómo argumentarlo

Este documento junta los huecos genuinos del producto (no los inventa, no los suaviza) con una respuesta lista para cuando te pregunten en vivo. La idea no es memorizar una mentira — es entender bien cada hueco para poder explicarlo con seguridad, que es justo lo que pide la rúbrica del curso ("un equipo que sabe diagnosticar su propio sistema vale más que uno que esconde los bugs").

---

## 1. La pregunta de Pedro: ¿cómo sabe el padre/madre qué está pasando con su consentimiento ya dado?

**Qué pasó realmente (verificado en `protocolo-pruebas-usuario-semana9-vigilio.md`):** la pregunta funcional de Pedro, tal como quedó registrada, fue "¿cómo se entera o revoca el papá/mamá el permiso ya dado?" — no es exactamente "cómo sabe el padre qué hace el hijo en la app", es más específico: una vez que el padre/madre ya conectó su cuenta, hoy no hay una pantalla clara donde pueda ver el estado de ese consentimiento o revocarlo con facilidad.

**Por qué es un hueco real, no solo percepción de Pedro:** María (la única participante del perfil padre/madre en las pruebas) vivió el mismo problema desde el otro lado — se confundió entre el botón "conectar cuenta nueva" y la opción "ya conectaste tu cuenta, gestiona tu consentimiento aquí", sintiendo que ambos la llevaban al mismo lugar. Dos personas distintas, dos roles distintos, tocando la misma falla de diseño — eso la hace un hallazgo sólido, no un comentario aislado.

**Cómo argumentarlo en la presentación:**
> "Es el hallazgo más repetido de nuestras 5 pruebas de usuario — lo vivieron tanto Pedro como María, desde los dos lados de la app. Ya lo tenemos clasificado como severidad mayor, y es justo el cambio de mayor impacto con menor esfuerzo que priorizamos: diferenciar visualmente el botón de 'conectar cuenta nueva' del de 'gestionar y revocar tu consentimiento', para que el padre o madre siempre pueda ver y controlar en qué estado está su permiso, sin depender de su hijo para saberlo."

Esto convierte una debilidad en evidencia de que sabes leer tus propios datos de usuario — no la escondas, úsala como prueba de rigor.

---

## 2. 0 de 5 completaron la tarea sin ayuda (T1 — no cumple)

**Qué pasó:** las 5 sesiones de prueba (David, Daniela, María, Pedro, Sofia) dieron 0% de éxito sin ayuda, mediana de 20 minutos. SEQ promedio 4.8/7 — más alto de lo que esa tasa sugeriría, señal de que no es "la app en general" sino un número pequeño de puntos de fricción repetidos (sobre todo el de arriba).

**Cómo argumentarlo:**
> "0 de 5 es un resultado real que no suavizamos. Pero el SEQ de 4.8/7 nos dice algo importante: la gente no sintió que la app en general fuera difícil, tropezó con 2-3 puntos de confusión muy específicos y repetidos, no con un problema de fondo. Ya identificamos los 3 cambios de mayor impacto con menor esfuerzo, y el primero de ellos resuelve el punto que más se repitió."

---

## 3. No hay modo offline / no hay recuperación tras desconexión (T3 — no cumple, por diseño)

**Qué pasó:** ni Belvo ni Bubble (sin PWA/caché en la configuración actual) pueden operar sin internet. Cortar la red 10 minutos no revela información nueva — toda la app se cae. RF-06 (reintentar y avisar retraso en vez de fallar en silencio) está documentado pero nunca se construyó.

**Cómo argumentarlo:**
> "Es una limitación real de cualquier producto que depende de datos bancarios en vivo, no solo de Vigilio — ningún agregador bancario promete funcionar sin conexión, porque los datos que muestra no son tuyos, son del banco. Lo que sí es nuestra responsabilidad es cómo avisamos cuando falla: ya tenemos documentado (RF-06) que el sistema debe reintentar y notificar un retraso en vez de fallar en silencio — es la siguiente pieza a construir, no un hueco que no vimos."

---

## 4. No hay degradación elegante si falla la IA o Belvo (T5 — decisión consciente de no construir)

**Qué pasó:** hoy, si el clasificador o Belvo no responden, la app muestra el error crudo de Belvo (por ejemplo 400/500), no un mensaje amigable. Se decidió conscientemente no construir esto este semestre por tiempo — no es un bug que no viste, es una priorización.

**Cómo argumentarlo:**
> "Decidimos no construir el mensaje de degradación amigable este semestre, por tiempo — priorizamos tener ambos roles de la app funcionando de punta a punta antes que pulir el mensaje de error. Es la siguiente mejora en la lista, con el costo ya estimado."

---

## 5. Posible bug de inicio de sesión (David) — sin confirmar si sigue activo

**Qué pasó:** David reportó "usuario y contraseña no lo dejaba entrar" — confirmado con captura real ("We didn't find an account with those login credentials"). No se trata de que no distinguiera "ya tengo cuenta" de "soy nuevo" solamente — hay una captura real del error. No se ha verificado si el bug sigue presente hoy.

**Cómo argumentarlo:**
> "Es el único de los 5 hallazgos que puede ser un bloqueo real de acceso, no solo de claridad, y lo tratamos como la prioridad #2 de nuestra lista de cambios. Antes de la demo en vivo, voy a volver a probar ese flujo exacto para confirmar si sigue ahí."
(Hazlo de verdad antes de la presentación — intenta loguearte como un usuario nuevo sin cuenta para ver si el error se repite.)

---

## 6. Vigilio no puede cancelar transacciones ni mover dinero — pero no está dicho con suficiente claridad en la app

**Qué pasó:** Sofia lo pidió explícitamente ("en rojo/negritas, en un lugar muy visible"); Pedro tocó el mismo punto desde la confusión de qué puede o no puede hacer el sistema. Hoy esa limitación no está comunicada de forma visible.

**Cómo argumentarlo:**
> "Es una sola línea de texto, bajo costo, que ya identificamos como el cambio #3 de mayor impacto: dejar explícito en la pantalla de alerta que Vigilio es de solo lectura y nunca mueve dinero. Preferimos que el usuario lo sepa de entrada a que lo descubra reclamando."

---

## 7. T6 (operación continua) — evidencia informal, no prueba de carga formal

**Qué pasó:** el link en vivo (el que usaron tus participantes reales) no ha tenido caídas en ~48h (23-25 nov); el Preview del editor de Bubble sí tuvo fallas de carga en ese periodo, pero es tu herramienta de desarrollo, no el entorno real de uso.

**Cómo argumentarlo:**
> "Tenemos evidencia informal de estabilidad en el entorno real — 48 horas de uso continuo sin caídas para los usuarios reales que probaron la app — pero no es una prueba de carga formal con tráfico simulado. Lo decimos así, sin inflar lo que tenemos."

---

## 8. Cero preórdenes pagadas, validación de disposición a pagar basada en entrevistas, no en dinero real sobre la mesa

**Qué pasó:** 3 de 9 entrevistados dijeron que pagarían directamente; nadie ha puesto dinero real todavía. Es intención declarada (Mom Test: la evidencia más fuerte es comportamiento pasado, no una afirmación a futuro), no comportamiento confirmado.

**Cómo argumentarlo:**
> "Tenemos disposición a pagar declarada por 3 de 9 personas, con el precio de $99 surgido espontáneamente en dos entrevistas distintas — es una señal fuerte, pero sabemos que la prueba real es que alguien ponga dinero, y eso es exactamente lo que mide el piloto de 20 familias que proponemos a continuación."

---

## 9. "¿Tú solo podrías manejar todo? ¿Podrías resolver cualquier problema?"

**Qué pasa con el modelo financiero:** confirmado — **no** necesitas recalcular nada agregando un sueldo para otra persona. El costo de "ciclos de aprendizaje" ($200 MXN/h en `notas-financieras-internas-vigilio.md`) ya es, explícitamente, el costo de que **tú mismo** hagas el trabajo — no el de un programador contratado. Contratar a alguien es una decisión de una etapa posterior (cuando el negocio ya tenga ingresos reales que sostengan ese gasto), no del piloto académico de este semestre. Esto ya está respaldado desde el inicio del proyecto: RR-02 dice textual que Vigilio se construye "por una sola persona sin experiencia previa en programación ni hardware... confirmado con el profesor" — no es una limitación que estés inventando ahora para salir del paso.

**Por qué es una pregunta real que te pueden hacer, y por qué la respuesta honesta es "no":** tú mismo no tienes experiencia previa de programación (documentado desde `plan-de-accion-stack-vigia.md`). Decir "sí, puedo resolver cualquier problema técnico yo solo" sería falso y, si te presionan con un ejemplo técnico concreto, se nota. La respuesta correcta no es negar la limitación — es mostrar que ya la resolviste con una decisión de diseño, no con una promesa vacía.

**Cómo argumentarlo:**
> "No, no podría resolver cualquier problema de programación yo solo — por eso elegí deliberadamente herramientas que reducen esa necesidad: Bubble, que es no-code, para no depender de escribir código desde cero, y Claude Code como asistente de programación para la lógica más compleja del backend. Los límites que sí existen hoy — por ejemplo, si Belvo falla de su lado, o si hay un bug de la propia plataforma de Bubble — tampoco los resolvería un programador contratado, porque son dependencias de terceros fuera de mi control, no un problema de mi capacidad. Contratar a alguien es parte del plan, pero es una decisión de la siguiente etapa, cuando el piloto ya valide que hay ingresos reales que sostengan ese costo — no tiene sentido presupuestarlo antes de eso."

**Dato de respaldo adicional, por si insisten en "¿y el soporte a escala?":** ya está documentado en `plan-prototipado-dfm-semana8-vigilio.md` que el soporte técnico a $0 "se sostiene solo si el onboarding deja de ser asistido por ti y pasa a autoservicio vía el widget de Belvo" — es decir, el propio plan ya reconoce que el modelo actual (tú resolviendo todo) no escala indefinidamente, y ya tiene identificado qué cambiar antes de que eso se vuelva un problema real.

---

## 10. "¿Tu app detecta suscripciones no reconocidas?" / "¿Qué analiza exactamente la IA de Vigilio?" (25-nov-2026)

**Qué pasa realmente:** el prompt que se probó en Sandbox (`simulacion-datos-belvo-vigilio.md`) genera un resultado binario — **SOSPECHOSA o NORMAL** — comparando la transacción nueva contra el historial reciente de esa cuenta como línea base de comportamiento normal. La arquitectura documentada desde Semana 5 (`arquitectura-sistema-semana5-vigilio.md`) sí contempla una clasificación más fina en 4 categorías (cargo pequeño inusual / card-testing repetido / suscripción no reconocida / sin anomalía), pero esa clasificación de 4 categorías **no está implementada** — el workflow de Bubble depende hoy del texto exacto "SOSPECHOSA", así que no se puede decir que ya existe internamente y solo se oculta al usuario. Decir eso sería falso y, si alguien pidiera ver el prompt o el workflow, se notaría de inmediato.

**Por qué el binario de hoy sí cubre funcionalmente el caso de las suscripciones, sin necesitar la etiqueta explícita:** el mecanismo no funciona con una lista fija de "tipos" de fraude — compara la transacción nueva contra la línea base histórica de esa cuenta específica. Un cargo chiquito atípico (el patrón de card-testing) y una suscripción recurrente que no coincide con el historial son, para el modelo, lo mismo: "esto no se parece al patrón normal de esta cuenta". Por eso el binario de hoy ya detectaría ambos casos en la práctica, aunque no los nombre por separado.

**Cómo argumentarlo (guion listo, verbatim):**
> "El clasificador no funciona con una lista fija de tipos de fraude — compara cada transacción nueva contra el historial de comportamiento normal de esa cuenta. Eso quiere decir que tanto un cargo chiquito atípico de prueba como una suscripción recurrente que no coincide con el patrón de esa cuenta caen en la misma lógica de detección: ambos se salen de lo normal para esa cuenta, y ambos se marcan como sospechosos. Lo que ya probé en el prototipo de este semestre da un resultado binario —sospechosa o normal— con una justificación en lenguaje natural que puede mencionar el motivo específico, por ejemplo 'este cargo recurrente no coincide con tu historial, parece una suscripción no reconocida'. El siguiente paso, ya diseñado en la arquitectura del sistema pero no implementado todavía por tiempo, es que el output distinga explícitamente 4 categorías —cargo pequeño inusual, card-testing repetido, suscripción no reconocida, sin anomalía— para que la alerta sea más clara, no para detectar más de lo que ya detecta."

**Argumento adicional, si insisten en "¿por qué no simplemente le dices al usuario qué tipo de cargo es?":**
> "Porque decirle al usuario 'es un cargo chiquito' invita a que lo ignore — justo el patrón que le costó $8,500 MXN en cargos hormiga a una de las personas que entrevisté (`descripcion-negocio-vigilio.md`, citado también en `notas-financieras-internas-vigilio.md`). La severidad de la alerta no depende del tamaño del cargo, depende de si se sale del patrón normal de la cuenta — por eso el mensaje se mantiene simple ('esto merece tu atención'), no una etiqueta que reste importancia antes de que la persona vea el detalle."

**Qué NO decir:** evita cualquier frase tipo "ya cubre las 4 categorías, nada más que la app no te las muestra" — no es cierto, y es fácil de desmentir si alguien pide ver el prompt o el workflow de Bubble.

---

## Cómo usar este documento en la presentación

No leas esto en voz alta tal cual — apréndete la estructura: **qué falta → por qué ya lo sabes (evidencia) → qué vas a hacer al respecto (ya priorizado o ya decidido)**. Esa estructura, repetida en cualquier pregunta sobre debilidades, es lo que la rúbrica premia. Si te preguntan algo que no está aquí, usa el mismo patrón: admite el hueco, di de dónde sale la evidencia, di qué harías.

---
**Fuentes de este documento:** `protocolo-pruebas-usuario-semana9-vigilio.md`, `resumen-semana9-para-pagina.md` (tabla T1-T6), `arquitectura-sistema-semana5-vigilio.md` (RF-06, clasificación de 4 categorías), `requerimientos-ieee830-semana5-vigilio.md` (RR-02), `plan-de-accion-stack-vigia.md`, `plan-prototipado-dfm-semana8-vigilio.md`, `notas-financieras-internas-vigilio.md`, `simulacion-datos-belvo-vigilio.md` (prompt real probado en Sandbox), `descripcion-negocio-vigilio.md` (caso de cargos hormiga).
