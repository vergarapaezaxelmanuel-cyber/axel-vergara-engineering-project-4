---
title: "Temas débiles de Vigilio y cómo defenderlos en la presentación (documento interno, NO para la página)"
fecha: "25-nov-2026 (actualizado 26-nov-2026: nuevo hallazgo sobre cuenta compartida padre/hijo)"
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

## 1bis. Lo que la pregunta de Pedro no cubría: ¿tiene sentido que el papá revoque desde la cuenta del hijo? (26-nov-2026)

**Qué pasa realmente:** hoy papá e hijo comparten el mismo login — un solo usuario y contraseña, dos vistas (`inicio`: "Soy hijo/a" / "Soy padre o madre"). No son cuentas independientes vinculadas por invitación; es una sola cuenta con un botón de cambio de vista. Esto es distinto del hallazgo de Pedro (que era de claridad de pantalla, ya resuelto con el portal de consentimiento) — este es un tema de arquitectura de cuentas, no de diseño de botones.

**Por qué no es tan grave como suena:** compartir login entre un adulto mayor y un hijo de confianza para gestionar trámites es un patrón real y común, no una rareza del prototipo. Lo que sí es cierto, y hay que decirlo así: la acción de revocar no depende de pedirle permiso al hijo en el momento — pero llegar a esa acción sí depende de tener las mismas credenciales, no de una cuenta propia del padre.

**Cómo argumentarlo (guion listo, verbatim):**
> "Hoy, en este prototipo, uso una sola cuenta con dos vistas — es una simplificación consciente para construir ambos lados de la app en un semestre, no un error que no vi. En producción, papá e hijo tendrían cuentas separadas, conectadas entre sí: el hijo genera un código de invitación desde su cuenta, se lo comparte a su papá por WhatsApp o como prefieran, y cuando el papá se registra con ese código, el sistema crea una relación en la base de datos que vincula las dos cuentas — es el mismo patrón que usan, por ejemplo, apps de pareja o de familia compartida, no estoy inventando una solución nueva. Con esa relación guardada, cuando mi papá conecta su cuenta bancaria y da su consentimiento, el sistema ya sabe a qué cuenta de hijo debe mandarle la alerta. Es trabajo de desarrollo real que ya tengo mapeado, no una pregunta abierta de si se puede hacer."

**Si insisten en "¿y eso es técnicamente viable en Bubble?":**
> "Sí — Bubble permite tipos de dato personalizados con campos de referencia a otro Usuario, así que una tabla 'Vínculo' con un campo 'cuenta_hijo' y otro 'cuenta_padre' resuelve la relación. El código de invitación es solo un texto único que se valida en un workflow al registrarse. No es una función exótica, es el mismo mecanismo de siempre para conectar dos registros en una base de datos relacional."

**Cómo manejarlo EN VIVO, sin que te trabe a media demo:** no lo expliques mientras das el clic de "Revocar acceso" — solo haz la acción y di la frase corta ("así es como mi papá quita el permiso, sin pedirme permiso a mí"). Guarda esta aclaración para el resumen de cierre ("qué funciona / qué falta"), donde ya vive de forma natural. Si el jurado pregunta directo, usa el guion de arriba.

---

## 2. 0 de 5 completaron la tarea sin ayuda (T1 — no cumple)

**Qué pasó:** las 5 sesiones de prueba (David, Daniela, María, Pedro, Sofia) dieron 0% de éxito sin ayuda, mediana de 20 minutos. SEQ promedio 4.8/7 — más alto de lo que esa tasa sugeriría, señal de que no es "la app en general" sino un número pequeño de puntos de fricción repetidos (sobre todo el de arriba).

**Cómo argumentarlo:**
> "0 de 5 es un resultado real que no suavizamos. Pero el SEQ de 4.8/7 nos dice algo importante: la gente no sintió que la app en general fuera difícil, tropezó con 2-3 puntos de confusión muy específicos y repetidos, no con un problema de fondo. Ya identificamos los 3 cambios de mayor impacto con menor esfuerzo, y el primero de ellos resuelve el punto que más se repitió."

---

## 3. No hay modo offline / no hay recuperación tras desconexión (T3 — no cumple, por diseño) (actualizado 27-nov-2026)

**Qué pasó:** ni Belvo ni Bubble (sin PWA/caché en la configuración actual) pueden operar sin internet. Cortar la red 10 minutos no revela información nueva — toda la app se cae. RF-06 (reintentar y avisar retraso en vez de fallar en silencio) está documentado pero nunca se construyó.

**Por qué no es solo "no lo resolvimos todavía" — hay una razón de seguridad real, con ley:** Vigilio no guarda una copia completa del historial bancario del padre/madre en su propia base de datos — se la pide a Belvo en vivo, cada vez que la necesita para clasificar. Esto es consistente con el Reglamento de la LFPDPPP, **artículo 45 ("Principio de proporcionalidad")**: "Sólo podrán ser objeto de tratamiento los datos personales que resulten necesarios, adecuados y relevantes en relación con las finalidades para las que se hayan obtenido", reforzado por el **artículo 46 ("Criterio de minimización")**. Duplicar el historial bancario completo dentro de la base de datos propia de Vigilio sería procesar más datos de los necesarios para el fin — por eso se pide en vivo a Belvo (el agregador regulado que ya lo resguarda), y Vigilio solo persiste las alertas ya generadas, no el historial completo. Esa es la causa real de la dependencia de internet, no una omisión.

**Cómo argumentarlo (verbatim):**
> "No es que se nos haya olvidado resolverlo — es una decisión de seguridad. Vigilio no guarda una copia completa del historial bancario de mi papá en su propia base de datos; se lo pide a Belvo en vivo, cada vez que lo necesita. Eso es justo lo que exige la ley mexicana de protección de datos — el Reglamento de la LFPDPPP, artículo 45, 'principio de proporcionalidad': solo procesar los datos necesarios para el fin, no duplicar información sensible que ya resguarda quien está autorizado para hacerlo. Por eso dependemos de internet — es el precio de no acumular datos bancarios de más, no una limitación que no supimos resolver. Y sí, ya tenemos documentado en RF-06 que el sistema debe reintentar y avisar un retraso en vez de fallar en silencio — es la siguiente pieza a construir."

**Si preguntan por qué no funciona en el wifi de la Ibero (versión corta):** "en la red de la Ibero me sale una advertencia de posible fraude al entrar — mi dominio es nuevo, y los filtros de seguridad de redes institucionales como la de la Ibero todavía no lo tienen registrado como confiable. Por eso uso datos móviles, no el wifi del lugar." (Precisión: no es que el dominio sea "privado" — `bubbleapps.io` es un dominio público normal — el problema es que, por ser nuevo, no está en las listas de confianza que usan esos filtros; explicación basada en lo que Axel vio en pantalla, no un diagnóstico confirmado con IT de la Ibero.)

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

## 11. "¿Cómo distingue la IA un card-testing de tus compras chiquitas normales, o una suscripción indeseada que coincide con tu categoría habitual de gasto?" (26-nov-2026)

**Qué pasa realmente:** el clasificador no compara solo el monto — compara comercio, hora y monto, con las transacciones recientes de esa cuenta como contexto (no evalúa el cargo nuevo aislado). Eso le permite notar si es un comercio ya conocido en esa cuenta o uno nuevo, y si aparecen varios cargos chicos seguidos en poco tiempo (el patrón de repetición típico de card-testing) o es un cargo aislado como los que esa cuenta siempre ha tenido.

**El caso difícil, honesto (el que preguntaste):** una suscripción accidental que cae en una categoría de gasto habitual (ej. "deportes") sí es un caso donde el sistema podría fallar si solo mirara la categoría del comercio. Lo que lo salva parcialmente: una suscripción tiene una firma distinta a una compra ocasional — mismo monto, repitiéndose cada mes, de un comercio sin historial previo de cobro recurrente en esa cuenta. Esa es una señal nueva (un patrón de cobro que nunca había existido), independiente de si la categoría del comercio "encaja" o no. Aun así, esto no elimina el 100% de los falsos negativos — ningún sistema de detección por patrones lo hace.

**Por qué vale la pena aunque no sea perfecto:** el punto de comparación real no es "IA perfecta vs. IA imperfecta" — es "IA imperfecta vs. nada". Los bancos, por diseño, no avisan de cargos de entre $0.50 y $5 USD, el rango exacto que usa el card-testing para probar tarjetas robadas (Mastercard Newsroom, 2024) — no es que lo hagan mal, es que ni siquiera lo intentan, porque sus alertas están calibradas para montos grandes. Así que aunque el clasificador de Vigilio falle en el caso difícil de la suscripción camuflada, sigue siendo estrictamente mejor que la alternativa de hoy, que es cero detección en ese rango de montos.

**Cómo argumentarlo (guion listo, verbatim):**
> "El clasificador no mira solo si el monto es chico — mira comercio, hora y monto juntos, con el historial reciente de esa cuenta como contexto. Un cargo chico en un comercio que tu papá ya usa seguido, a su hora de siempre, no se ve igual que un cargo chico en un comercio nuevo, de madrugada, seguido de otros parecidos en minutos — eso es justo el patrón de card-testing. El caso más difícil es una suscripción indeseada que cae en una categoría de gasto habitual: ahí lo que delata el problema no es el comercio, es que es un cobro que se repite mes con mes y nunca había existido antes en esa cuenta — una firma de suscripción nueva, no una compra ocasional. Y aun así, no prometo que esto atrape el 100% de los casos: ningún sistema de detección por patrones lo hace, por eso la decisión final siempre la toma el hijo, revisando el detalle, no la inteligencia artificial sola. Y aunque no fuera perfecto, ya es mejor que lo que hay hoy: los bancos ni siquiera intentan avisar de cargos de entre 50 centavos y 5 dólares, que es justo el rango que usa el card-testing — sus alertas están calibradas para montos grandes, no para esto."

---

## 12. "Si un banco también analiza patrones, ¿qué nos diferencia? ¿Y cómo hubiera resuelto Vigilio el caso real de María, si Uber Eats alguna vez fue parte de su patrón normal?" (27-nov-2026)

**Qué pasa realmente:** el clasificador compara la transacción nueva contra el historial **reciente** de la cuenta (per `arquitectura-sistema-semana5-vigilio.md`: "transacción nueva + N transacciones recientes de la misma cuenta"), no contra todo el historial de vida de esa cuenta. **Ventana propuesta: 90 días (3 ciclos de facturación mensual)** — suficientemente largo para capturar gastos recurrentes mensuales sin ruido de un mes atípico, suficientemente corto para que un comercio ausente por más de 3 meses ya no cuente como "normal" al reaparecer. **Nota: esto es una decisión de diseño razonada, no un número ya verificado dentro del prompt real de Haiku — Axel debe confirmar o fijar este valor en su prompt antes de citarlo como un hecho ya implementado.** **Por qué 90 y no 60 o 120 (si preguntan):** 60 días son solo 2 ciclos de facturación — muy poco para distinguir un gasto recurrente real de ruido de un mes atípico. 120 días (4 ciclos) funcionan, pero tardan más en notar que un comercio "dormido" volvió a cobrar. 90 días es el punto medio: suficiente estabilidad estadística para lo recurrente, suficientemente corto para notar una reactivación con rapidez.

**Respaldo externo real (no solo lógica interna), 27-nov-2026:** un artículo técnico sobre detección de fraude en pagos en tiempo real describe perfiles de comportamiento de cuenta calculados sobre "una ventana móvil de 90 días, actualizada diariamente", comparando cada transacción nueva contra esa distribución (categoría de comercio, monto, hora del día) (System Hardening, 2026). Es el mismo mecanismo que Vigilio propone. Honestidad: ninguna fuente encontrada justifica matemáticamente por qué 90 días específicamente — es una práctica establecida en la industria, no una fórmula estadística derivada; el argumento lógico (3 ciclos de facturación) sigue siendo el complemento.

**Importante — cuándo se entera Vigilio de un cargo nuevo (aclaración conceptual):** los 90 días NO son el intervalo al que se le pregunta a Belvo — son solo la ventana de comparación usada en cada clasificación. La detección en sí es event-driven: Belvo manda un webhook (`new_transactions_available`) al backend de Vigilio apenas el banco reporta una transacción nueva (`arquitectura-sistema-semana5-vigilio.md`) — es decir, Vigilio se entera el mismo día que ocurre el cargo, no "cuando se cumplen los 90 días". Los 90 días se recalculan hacia atrás desde HOY cada vez que llega una transacción nueva, nunca es un reloj fijo que hay que esperar a que se cumpla.

**Sobre la latencia de Belvo (si preguntan "¿y cuánto tarda Belvo en darte la info?"):** no inventar un número — ya está documentado como pendiente de medir (tabla T2 de `resumen-semana9-para-pagina.md`: "⚠ Pendiente de medir — no se pudo completar porque Belvo falló del lado de ellos"). Lo único disponible es un estimado, no medido en el entorno real: la llamada REST del backend a Belvo se estima en 200-500ms, pero el verdadero cuello de botella es el intervalo de sincronización del link de Belvo con el banco, que es configurable y Belvo no publica como cifra fija (`arquitectura-sistema-semana5-vigilio.md`). **Dónde vive ese historial:** Belvo es quien resguarda el historial real de transacciones (el agregador regulado); Vigilio no duplica ese historial completo en su propia base de datos de Bubble — solo persiste las alertas ya generadas, y pide los últimos 90 días a Belvo en vivo cada vez que clasifica un cargo nuevo (mismo principio de minimización del punto 3). Esto es la pieza clave que resuelve la duda: si un comercio dejó de aparecer en las transacciones recientes durante meses, y de pronto reaparece, NO cuenta como "normal" para el modelo — aunque alguna vez, hace mucho, sí lo haya sido. El caso real de María (Uber Eats, sin usarlo desde hace un año, cargos chicos que seguían llegando) es exactamente el tipo de caso que esta ventana de recencia atraparía: para el modelo, un comercio ausente durante meses y luego activo de nuevo se ve como un comercio nuevo, no como parte del patrón.

**Qué nos diferencia realmente de un banco (no es "nosotros categorizamos, ellos no"):** los bancos sí hacen análisis de patrones de fraude, pero a gran escala y de forma genérica (modelos poblacionales, no por cuenta individual), y calibrados para montos grandes — por diseño, ni siquiera miran el rango de $0.50 a $5 USD que usa el card-testing (Mastercard Newsroom, 2024). La diferencia real de Vigilio no es un método exótico — es comparar contra lo reciente de UNA cuenta específica, a un nivel de detalle (monto chico, ventana de tiempo corta) en el que un banco, por diseño de escala, no está mirando.

**Cómo argumentarlo (guion listo, verbatim):**
> "Un banco también analiza patrones, es cierto — pero a gran escala, con modelos genéricos para millones de cuentas, calibrados para montos grandes. Vigilio compara contra lo reciente de UNA cuenta específica, no contra todo su historial de toda la vida. Eso es lo que hubiera atrapado el caso real de mi mamá: Uber Eats había sido parte de su gasto normal hace tiempo, pero llevaba casi un año sin usarlo — para el modelo, un comercio que no aparece en las transacciones recientes y de pronto reaparece ya no cuenta como normal, así haya sido normal en el pasado. No es que nosotros 'categoricemos' y el banco no — es que miramos lo reciente de una cuenta, a un nivel de detalle en montos chicos donde el banco, por diseño de escala, ni siquiera está mirando."

---

## 13. "¿Qué marco legal aplica a tu proyecto?" (27-nov-2026, consolidado de `checklist-regulatorio-semana9-vigilio.md`)

**Cómo argumentarlo (verbatim):**
> "Para el consentimiento del papá específicamente, aplica la LFPDPPP — exige un aviso de privacidad con finalidades específicas, derechos ARCO, y consentimiento libre, específico e informado antes de conectar la cuenta, que es justo lo que ya tengo en el portal de consentimiento. Hoy la vigila la Secretaría Anticorrupción y Buen Gobierno, que reemplazó al INAI en marzo de 2025. Por el lado de Belvo, opera bajo la Ley Fintech, con autorización de la CNBV como Institución de Fondos de Pago Electrónico. Por el lado de la inteligencia artificial, los Términos Comerciales de Anthropic permiten uso comercial, pero piden avisar que las alertas son una ayuda, no una verificación garantizada — por eso la decisión final siempre la toma el hijo, nunca la IA sola. Y para la suscripción, aplica la Ley Federal de Protección al Consumidor — ahí sí tengo un pendiente honesto: todavía no publico términos de servicio y política de cancelación completos, solo el aviso de privacidad."

**Qué NO decir:** no digas que los términos de servicio de la suscripción ya están publicados — sigue marcado como POR VERIFICAR en el checklist regulatorio. Tampoco afirmes haber leído a detalle los términos de Belvo para reventa a terceros — también está pendiente.

---

## 14. "¿Cómo se entera Vigilio, en el momento, de que hay un cargo nuevo? ¿No tiene que estar preguntando todo el tiempo?" (27-nov-2026)

**Qué pasa realmente:** Vigilio no consulta la cuenta del papá a cada rato — es Belvo quien vigila la cuenta en segundo plano (es su función como agregador de open banking) y, en cuanto el banco registra una transacción nueva, le manda un webhook (`new_transactions_available`) al backend de Vigilio (`arquitectura-sistema-semana5-vigilio.md`). El webhook solo avisa que hay algo nuevo, no trae el detalle — el backend entonces llama al endpoint de Transactions de Belvo para traer esa transacción específica.

**Cómo argumentarlo (verbatim, con analogía simple):**
> "No es que Vigilio esté preguntándole al banco a cada rato si hay algo nuevo — es al revés. Belvo vigila la cuenta en segundo plano, y en cuanto el banco registra una transacción nueva, le avisa automáticamente a mi backend, parecido a como WhatsApp te manda una notificación en cuanto llega un mensaje, sin que tu teléfono esté preguntando constantemente. Ese aviso es lo que dispara todo: pido el detalle de esa transacción, lo junto con los últimos 90 días de historial de la cuenta, y mando los dos a Claude Haiku para que compare. Si dice que es normal, ahí se queda, nunca me llega a mí. Si dice que es sospechosa, ahí es cuando se genera la alerta y yo decido, con lo que sé de los gastos de mi papá, si estoy de acuerdo o no con lo que dice la IA."

---

## 15. "En promedio, ¿cuánto cuesta cada llamada — a Belvo y a Claude Haiku — y qué tan seguido se hacen?" (27-nov-2026)

**Qué pasa realmente:** son dos modelos de costo distintos, no comparables uno a uno — hay que decirlo así, no simplificarlo a "cuestan lo mismo por llamada" (`bom-costo-ia-semana7-vigilio.md`):

- **Belvo (Sandbox, la que usa el prototipo hoy):** no cobra por llamada individual — es tarifa plana de **$0 USD/mes**, con consultas simuladas ilimitadas. En producción (no vigente hoy, riesgo de escalamiento) sería ~$1,000 USD/mes (~$17,580 MXN/mes) repartido entre 304-608 hogares (SOM) ≈ $29-58 MXN/hogar/mes — tampoco por llamada, es tarifa por volumen de cuentas atendidas.
- **Claude Haiku 5.5 (el clasificador, el que sí cobra por uso real):** **$0.00025 USD por clasificación** (~2,000 tokens de entrada + ~100 de salida, a $0.10/$0.50 USD por millón de tokens input/output) ≈ $0.0044 MXN por llamada.
- **Frecuencia:** ~1 llamada/día por cuenta — derivada de un supuesto de 20-40 transacciones/mes por cuenta (0.7-1.3 llamadas/día), redondeado al alza. **Marcado explícitamente en el documento fuente como "supuesto a validar con datos reales de Sandbox"**, no una cifra ya confirmada con uso real.
- A esa frecuencia: **$0.0075 USD/mes por cuenta** (~$0.13 MXN/mes); a escala del piloto (20-30 cuentas): **$0.15 a $0.23 USD/mes en total** (~$2.6 a $4 MXN/mes).

**Cómo argumentarlo (verbatim):**
> "Son dos modelos de costo distintos. Belvo, en el tier que uso hoy — Sandbox —, no cobra por consulta individual: es gratis, con uso ilimitado simulado. En producción sería una tarifa fija mensual de alrededor de mil dólares, que se reparte entre cientos de hogares, no un cobro por llamada. El que sí cobra por uso real es el clasificador, Claude Haiku: cada clasificación cuesta $0.00025 dólares, menos de medio centavo de peso. Con el supuesto de una llamada al día por cuenta — basado en 20 a 40 transacciones al mes, todavía por validar con datos reales —, el costo de IA por cuenta es de apenas $0.13 pesos al mes. A la escala del piloto, 20 a 30 cuentas, el total es de $2.60 a $4 pesos al mes. La innovación en Vigilio es cara en tiempo de desarrollo, no en el centavo que cuesta cada clasificación."

**Qué NO decir:** no digas que Belvo "cuesta X por llamada" — en ningún tier cobra así, es tarifa plana mensual. Tampoco presentes "1 llamada/día" como un dato ya medido con uso real — está marcado como supuesto a validar.

---

## Cómo usar este documento en la presentación

No leas esto en voz alta tal cual — apréndete la estructura: **qué falta → por qué ya lo sabes (evidencia) → qué vas a hacer al respecto (ya priorizado o ya decidido)**. Esa estructura, repetida en cualquier pregunta sobre debilidades, es lo que la rúbrica premia. Si te preguntan algo que no está aquí, usa el mismo patrón: admite el hueco, di de dónde sale la evidencia, di qué harías.

---
**Fuentes de este documento:** `protocolo-pruebas-usuario-semana9-vigilio.md`, `resumen-semana9-para-pagina.md` (tabla T1-T6), `arquitectura-sistema-semana5-vigilio.md` (RF-06, clasificación de 4 categorías), `requerimientos-ieee830-semana5-vigilio.md` (RR-02), `plan-de-accion-stack-vigia.md`, `plan-prototipado-dfm-semana8-vigilio.md`, `notas-financieras-internas-vigilio.md`, `simulacion-datos-belvo-vigilio.md` (prompt real probado en Sandbox), `checklist-regulatorio-semana9-vigilio.md`, `bom-costo-ia-semana7-vigilio.md` (costo por llamada de Belvo y Claude Haiku).

**Referencias adicionales (APA-7):**

Secretaría de Gobernación / Cámara de Diputados. (2011). *Reglamento de la Ley Federal de Protección de Datos Personales en Posesión de los Particulares* (Art. 45, "Principio de proporcionalidad"; Art. 46, "Criterio de minimización"). Diario Oficial de la Federación, 21 de diciembre de 2011. https://inicio.inai.org.mx/Rendicion_Cuentas/Volumen%20IV%20Tomo%202%20Reglamento%20de%20la%20LFPDPPP.pdf

System Hardening. (2026, 7 de mayo). *Real-time payment fraud detection: Velocity rules, device signals, and behavioral baselines*. https://www.systemshardening.com/articles/observability/payment-fraud-detection/

Anthropic. (2026). *Pricing*. Claude Developer Platform. https://platform.claude.com/docs/en/about-claude/pricing

Belvo. (2026). *Plans and pricing*. https://belvo.com/plans-and-pricing/
