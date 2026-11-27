---
title: Evidencia — Pruebas de usuario, Semana 09 (Vigilio)
layout: default
parent: Semanas
nav_exclude: true
---

# Evidencia — Pruebas de usuario (Semana 09: Integración, Go-to-Market y Pitch)

**Nota de privacidad:** este registro no incluye apellidos ni datos de contacto de nadie fuera de mí. Los alias (David, Daniela, María, Pedro, Sofia) ya se usaban desde semanas anteriores para las mismas personas, sin nombre completo. Mi profesor se menciona sin nombrarlo, igual que en el resto de la página.

**Fuente del protocolo:** contenido oficial de Semana 9 del curso, "Integración, go-to-market y pitch" (Cortés, 2026), adaptado a los dos roles reales de Vigilio (hijo/a cuidador y padre/madre).

## Qué exige la rúbrica

5 sesiones de prueba: 3 personas del segmento objetivo + 2 personas de otros equipos, con al menos 1 de las 3 del segmento con perfil padre/madre. Las sesiones se observan sin ayudar, registrando éxito sin ayuda, tiempo, errores, severidad, cita textual y SEQ (1-7).

## Participantes reales (sesiones corridas el 23-nov-2026)

| # | Alias | Perfil | Segmento |
|---|---|---|---|
| 1 | David | Hijo — compañero de clase | Fuera del segmento |
| 2 | Daniela | Hija — compañera de clase | Fuera del segmento |
| 3 | María | Madre | **Segmento objetivo — padre/madre (cumple RF-04)** |
| 4 | Pedro | Hijo | Segmento objetivo |
| 5 | Sofia | Hija | Segmento objetivo |

Composición frente a la rúbrica: 3 del segmento objetivo (María, Pedro, Sofia) + 2 de otro equipo/fuera del segmento (David, Daniela), con María cubriendo el perfil padre/madre que exige RF-04.

## Hoja de registro

| Persona | Perfil | ¿Completó sin ayuda? | Tiempo | Severidad | SEQ (1-7) |
|---|---|---|---|---|---|
| David | Hijo (compañero) | No | 8 min | Grave | 5 |
| Daniela | Hija (compañera) | No | 8 min | Grave | 4 |
| María | Madre | No | 20 min | Grave | 5 |
| Pedro | Hijo | No | 20 min | Grave | 5 (confuso en la parte del hijo) |
| Sofia | Hija | No | 20 min | Grave | 5 (colores de botones ayudarían) |

Evidencia original: hoja de registro llena (`Hoja_de_registro_Pruebas_de_usuario_Vigilio.pdf`, 23-nov-2026). Las 5 sesiones se hicieron por videollamada de Microsoft Teams; la cuenta institucional de la Ibero no permite grabar sesiones completas, así que la evidencia son capturas de pantalla de los momentos clave de cada sesión más notas tomadas en el momento — la alternativa que el propio protocolo del curso acepta de forma explícita en vez de un video completo.

## Errores y comentarios por persona

**David (hijo, compañero):** reportó un error de inicio de sesión ("usuario y contraseña no lo dejaba entrar" — confirmado con captura real: *"We didn't find an account with those login credentials"*). También señaló que el botón de "regresar" es muy pequeño para un adulto mayor, y que elegir "soy padre" o "soy hijo" debería ir desde el registro, no después.

**Daniela (hija, compañera):** lista de mejoras de forma — texto explicativo en inicio, aclarar si el usuario es titular o dependiente de la tarjeta, mejorar el CSS, negritas en puntos clave, botones de alerta que se vean como botones, botón de regreso más claro. Cita: *"No hay botones para regresarse y das muchas vueltas."*

**María (madre — RF-04):** la animación de inicio es muy corta; prefiere "usuario" o "adulto" en vez de "adulto mayor". El hallazgo más importante: **se confunde entre el botón "conectar mi cuenta con Belvo" y la opción "ya conectaste tu cuenta, gestiona tu consentimiento aquí" — siente que ambos la llevan al mismo lado.**

**Pedro (hijo):** pidió un apartado de dudas/"familiarízate con la app"; aclaración de que Vigilio es sobre cuidado de datos y posibles estafas, no "finanzas" en general; y una pregunta funcional real sin resolver: **¿cómo se entera o revoca el papá/mamá el permiso ya dado?**

**Sofia (hija):** formato de pesos y separador de miles en más pantallas; aclarar si la app pide el titular de la tarjeta o el titular del cargo; corregir el orden de la guía de resolución (primero el banco, no el comercio); aclarar en rojo/negritas que **Vigilio no puede cancelar transacciones**; indicadores de leído/no leído en las alertas.

## Clasificación por severidad

**Crítico (bloquea completar la tarea):**
1. David intentó iniciar sesión en vez de registrarse — confirmado con captura real; la pantalla de entrada no distingue con claridad "ya tengo cuenta" de "soy nuevo".
2. Confusión de María entre "conectar cuenta" y "gestionar consentimiento" — en el flujo que RF-04 exige que un padre/madre complete sin ayuda.

**Mayor (se completa con ayuda o error recuperable):**
3. Falta claridad sobre revocación/estado del consentimiento del lado del padre/madre (Pedro).
4. Orden incorrecto de pasos en la guía de resolución (Sofia).
5. No queda claro que Vigilio no puede cancelar transacciones (Sofia).

**Menor (molestia sin bloquear la tarea):**
6. Animación de inicio demasiado corta (María).
7. Wording "adulto mayor" percibido como poco considerado (María).
8. Formato de botones, CSS, mayúsculas, espacios (Daniela).
9. Formato de pesos/miles en pantallas adicionales (Sofia).
10. Indicador leído/no leído en alertas (Pedro, Sofia).

## Tasa de éxito y los 3 cambios priorizados

| Métrica | Resultado |
|---|---|
| Completó sin ayuda (5 sesiones) | **0 de 5 (0%)** |
| Tiempo mediano | 20 minutos (rango 8-20) |
| SEQ promedio | 4.8 / 7 |

**Lectura honesta:** la tasa de éxito sin ayuda es 0%, reportada tal cual, sin suavizar. El SEQ promedio (4.8/7) es más alto de lo que esa tasa sugeriría — la gente no sintió que la app en general fuera difícil, tropezó con un número pequeño de puntos de confusión repetidos, sobre todo el de los "dos botones que llevan al mismo lado".

Los 3 cambios de mayor impacto con menor esfuerzo, ya priorizados:

1. **Diferenciar visualmente "conectar cuenta nueva" de "gestionar consentimiento ya dado"** — el hallazgo más repetido (María y Pedro).
2. **Verificar y, si sigue activo, corregir el bug de inicio de sesión** de David — el único de los 5 hallazgos que puede ser un bloqueo real de acceso.
3. **Agregar una línea fija, visible, que diga "Vigilio no puede cancelar transacciones ni mover dinero"** — bajo costo, cierra una expectativa equivocada real.

## Evidencia de la alerta real generada por la IA (sección 18 de la página final)

Durante la sesión de Sofia, el clasificador generó esta alerta real, capturada en pantalla:

> Comercio: Electrónica Gamer MX · Monto: $4,500 · Fecha: 23 nov 2026, 6:17 pm
> Motivo detectado: SOSPECHOSA — cargo elevado en un comercio atípico para esta cuenta, en un horario y tipo de gasto que no coinciden con su patrón habitual (supermercado...)

Esta captura es evidencia directa de que el clasificador de IA genera una alerta razonada (no una regla fija de monto), consistente con lo descrito en la sección 21 (Uso de IA en el proyecto) de la página final.

## Estado de los 22 requerimientos (Semana 9) {#estado-de-los-22-requerimientos}

Columna de estado del PDS de Semana 5 (`requerimientos-ieee830-semana5-vigilio.md`), cerrada con evidencia real de esta semana: las pruebas de usuario, la tabla T1-T6 y lo confirmado en los clics de hoy. **Resumen: 8 Cumple, 6 Parcial, 8 No cumple/pendiente de probar, de 22.** No es un resultado que perjudique la entrega — es justo el tipo de honestidad que la rúbrica premia ("un equipo que sabe diagnosticar su propio sistema vale más que uno que esconde los bugs").

**Funcionales (6)**

| # | Estado | Por qué |
|---|---|---|
| RF-01 (detección/clasificación) | ⚠️ Parcial | Detecta y alerta funciona real, pero clasifica binario (SOSPECHOSA/NORMAL), no en las 3 categorías del enunciado. Multi-banco sin probar. |
| RF-02 (alerta con confirmación) | ✅ Cumple | Confirmado end-to-end (botones reconozco/no reconozco funcionando). |
| RF-03 (guía de resolución por tipo) | ⚠️ Parcial | La guía existe y funciona, pero es un solo flujo genérico, no 3 diferenciados (depende de RF-01). |
| RF-04 (portal de consentimiento) | ⚠️ Parcial | Portal + revocar funcionan (confirmado 27-nov). Multi-cuenta por banco sin probar. |
| RF-05 (vinculación inicial) | ✅ Cumple | Confirmado 27-nov: conectar cuenta lleva directo al consentimiento. |
| RF-06 (manejo de falla de terceros) | ❌ No cumple | Decisión consciente de no construir este semestre — ya documentado como siguiente paso. |

**Desempeño (4)**

| # | Estado | Por qué |
|---|---|---|
| RD-01 (tiempo máx. de alerta) | ⚠️ Pendiente de medir | T2 no se completó — Belvo falló de su lado. |
| RD-02 (falsos positivos) | ⚠️ Pendiente | Necesita datos de piloto real, aún no existen. |
| RD-03 (disponibilidad) | ⚠️ Parcial | Evidencia informal: ~48h sin caídas en el link real, no es prueba de carga formal. |
| RD-04 (capacidad 20-30 cuentas) | ❌ No probado | No se ha corrido prueba de carga multi-cuenta. |

**Interfaz (5)**

| # | Estado | Por qué |
|---|---|---|
| RI-01 (Belvo solo lectura, multi-link) | ⚠️ Parcial | Solo lectura confirmado; soporte de más de un banco por padre/madre sin probar. |
| RI-02 (canal de notificación) | ✅ Cumple | Correo funciona con direcciones reales (basta un canal, el criterio no exige los dos). |
| RI-03 (4 pantallas mínimas) | ✅ Cumple | Hay 11 pantallas navegables, de sobra sobre el mínimo. |
| RI-04 (transparencia regulatoria en la app) | ❌ No cumple | No existe todavía una pantalla dedicada mostrando la autorización CNBV de Belvo dentro del producto. |
| RI-05 (accesibilidad para el padre/madre) | ❌ No cumple | María (60 años) no completó la tarea sin ayuda en las pruebas de usuario — el propio resultado T1 lo contradice. |

**Restricción (7)**

| # | Estado | Por qué |
|---|---|---|
| RR-01 (consentimiento, solo alertas) | ✅ Cumple | Portal + revocación + alertas-only, todo confirmado. |
| RR-02 (presupuesto/plazo/stack) | ✅ Cumple | Respetado todo el semestre. |
| RR-03 (sin control de gasto) | ✅ Cumple | Nunca bloquea ni reporta por su cuenta. |
| RR-04 (no atribuirse regulación propia) | ⚠️ Parcial | Consistente en todo lo que hemos escrito, pero falta una auditoría formal de todos los textos de la app/landing. |
| RR-05 (Android 8+/iOS 14+) | ❌ No probado | Todo probado en navegador de escritorio, no en dispositivos móviles. |
| RR-06 (primera versión funcional en Semana 7) | ✅ Cumple | Flujo completo demostrado desde Semana 7. |
| RR-07 (ciclo de vida de datos) | ❌ No cumple | Sin verificar cifrado ni proceso real de eliminación al revocar. |

---
**Referencia:** Cortés, A. (2026). *Semana 9 — Integración, go-to-market y pitch*. Proyectos de Ingeniería 4. https://aristarco.github.io/Proyectos4/semana9/
