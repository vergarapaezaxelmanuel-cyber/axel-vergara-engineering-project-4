---
layout: default
title: Guion de pitch — 3 minutos (Semana 9, Vigilio)
nav_exclude: true
search_exclude: true
---

# Guion de pitch — 3 minutos

**Nota de alcance:** Axel es un equipo de una sola persona (confirmado con el profesor, ver `plan-prototipado-dfm-semana8-vigilio.md`). El guion está adaptado para fundador único — no inventa compañeros de equipo.

## Guion completo (leer en voz alta, ~130 palabras/minuto)

**1. Impacto y problema (35 s)**
> María tiene 60 años. Desde marzo, le han ido metiendo cargos chicos de Uber Eats a su cuenta — de 150 y 300 pesos — sin que ella use esa app hace un año. No se dio cuenta a tiempo: ya le habían cobrado 8,500 pesos antes de notarlo. Los recuperó, pero le costó horas en espera telefónica y un proceso de aclaración desgastante con el banco. El banco no avisa, porque sus alertas están hechas para montos grandes, no para los cargos de prueba que un fraude usa antes de un golpe mayor.

**2. Solución y por qué yo (35 s)**
> Vigilio conecta, de solo lectura, a la cuenta del papá o la mamá — nunca puede mover un peso — y una inteligencia artificial clasifica cada movimiento buscando justo ese patrón: cargos chicos y repetidos, y suscripciones no reconocidas. La alerta le llega al hijo o hija — no ve todas las transacciones, solo las alertas — para que decida, sin que su padre o madre sienta que lo están vigilando. Un banco mexicano tarda hasta 12 meses en lanzar algo así. Vigilio ya existe hoy, y nace de nueve entrevistas reales, no de una corazonada.

**3. Mercado y modelo (35 s)**
> En México hay 14.5 millones de adultos mayores con un hijo que podría protegerlos, y 2 millones de hogares bancarizados que calzan con el perfil. Empezando solo en Puebla-Tlaxcala, la meta realista de año uno y dos es de 300 a 600 hogares pagando. El modelo es freemium: gratis hasta el primer problema detectado, luego 99 pesos al mes. Con mis números actuales, cada cliente deja más de tres veces lo que cuesta conseguirlo.

**4. Tracción (35 s)**
> Validé el problema con nueve entrevistas reales, no encuestas, y tres de nueve dijeron que pagarían hoy mismo. Ya completé las cinco pruebas de usuario que pide el curso, con un hallazgo honesto: ninguno de los cinco logró completar la tarea sin ayuda. Desde entonces ya hice varias correcciones — entre ellas, la navegación de regreso que faltaba —, y tengo el resto ya diagnosticado y priorizado.

**5. Equipo (15 s)**
> Soy Axel Vergara, estudiante de Ingeniería en Negocios en la Ibero Puebla. Construí solo la investigación, el stack técnico, la app y el modelo financiero de Vigilio.

**6. Ask y cierre (25 s)**
> Pido acceso a 20 familias en Puebla para un piloto de 90 días. En ese tiempo mido lo único que me falta: cuántas conversaciones toma cerrar a un cliente, para saber si el negocio de verdad cierra. María no necesita más estudios. Necesita enterarse a tiempo del próximo cargo chico, antes de que se repita.

---

## Afirmaciones marcadas PENDIENTE (sin evidencia completa todavía)

1. **"Tres de nueve dijeron que pagarían hoy mismo"** — correcto en espíritu (`resultado-validacion-semana3.md` reporta 3 de 7 del núcleo de hijos dijo sí de forma directa), pero la cifra exacta de disposición a pagar nunca se preguntó formalmente a las 9 personas con el mismo criterio — **PENDIENTE verificar la cifra exacta antes de decirla así de categórica frente al jurado.**
2. **Las cinco pruebas de usuario sí se corrieron** (David, Daniela, María, Pedro, Sofia — `protocolo-pruebas-usuario-semana9-vigilio.md`), con hallazgo real: 0 de 5 completaron sin ayuda. No es un pendiente — ya está dicho tal cual en la sección de Tracción.
3. **"Casi tres veces y cuarto lo que cuesta conseguirlo"** (LTV/inversión 3.25) descansa en dos supuestos sin benchmark real del giro (conversaciones de venta y horas por conversación) — documentado en `cac-ltv-payback-semana9-vigilio.md`. Es un resultado frágil, no una cifra sólida.
4. **El 30% de la rúbrica para "producto físico con IA"** no tiene respuesta confirmada del profesor sobre cómo se evalúa sin componente físico (decisión RR-02 ya tomada). Esto es un riesgo real para la demostración, no solo para el pitch.

## Las 5 preguntas más difíciles que haría un jurado

| Pregunta | De dónde sale la respuesta |
|---|---|
| ¿Cuánto cuesta operar un usuario y cómo lo sabes? | `bom-costo-ia-semana7-vigilio.md` — $7.387 MXN/usuario/mes (nube + IA + soporte) |
| Si Vigilio no tiene hardware, ¿cómo se evalúa el 30% de "producto físico con IA"? | Pregunta abierta, sin respuesta oficial del profesor todavía (`estructura-pagina-final-proyecto.md`) — hay que decir esto tal cual, no inventar una respuesta |
| ¿Por qué un banco no hace esto mejor que tú? | `canvas-mercado-semana4.md`, sección 3 — bancos tardan ~12 meses en lanzar, 75% dice que sus sistemas legacy restringen productos nuevos (SoFi Tech Solutions, 2026) |
| ¿Qué pasa si sube el precio de la API de IA o falla Belvo? | Costo de IA ya medido (`bom-costo-ia-semana7-vigilio.md`); manejo de falla de Belvo/clasificador es uno de los 4 huecos encontrados en la auditoría de requerimientos (`requerimientos-ieee830-semana5-vigilio.md`) |
| ¿Qué necesitas para vender esto legalmente? | `checklist-regulatorio-semana9-vigilio.md` — aviso de privacidad bajo la ley 2025 es VERIFICADO en vigencia, POR VERIFICAR en si el texto actual ya cumple el detalle nuevo |

## Referencia del formato (APA-7)

Cortés, A. (2026). *Semana 9 — Integración, go-to-market y pitch*. Proyectos de Ingeniería 4. https://aristarco.github.io/Proyectos4/semana9/
