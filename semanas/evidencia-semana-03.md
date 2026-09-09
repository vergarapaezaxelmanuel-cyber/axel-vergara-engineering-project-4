---
title: Evidencia — Propiedad Intelectual, Marca y Vigilancia Tecnológica (Semana 03)
layout: default
parent: Semanas
nav_exclude: true
---

# Evidencia — Semana 03: Propiedad Intelectual, Marca y Vigilancia Tecnológica

Este registro cubre el Paso 3 (selección y validación de marca) y el Paso 5 (vigilancia tecnológica). A diferencia del registro de la Semana 2, este es texto real de esta misma conversación, sin reconstrucción de memoria — los prompts están palabra por palabra, y las respuestas están condensadas para que el documento sea legible, pero conservan los nombres, puntajes y conclusiones exactos que dio Claude.

## Paso 3 — Selección y validación de marca con IA

### Prompt 1 (Claude) — Generación de 12 nombres

> Actúa como un Consultor de Branding especializado en el mercado mexicano y experto en Propiedad Industrial (IMPI). Necesito que generes una lista de 12 propuestas de nombres de marca únicos, memorables y legalmente viables en México para una nueva aplicación móvil (App).
>
> *(Incluía el contexto completo del problema — hijos de 35 a 40 años, padres de 60 a 70 años, card-testing de $10-50 MXN, Belvo + IA — instrucciones de branding: evitar palabras descriptivas como "App", "Alerta", "Fraude", "Banco", "Seguridad", nombres cortos de 1 a 3 sílabas, y pedía la respuesta dividida en 3 categorías de 4 nombres, cada uno con justificación comercial y análisis de registrabilidad IMPI, Clase 9 o Clase 36.)*

**Resultado:** 12 nombres en 3 categorías:
- Evocativos de cuidado/familia: Nido, Abrazo, Fiel, Arrimo.
- Vigilancia inteligente: Vigía, Vela, Ojo, Atisbo.
- Neologismos/abstractos: Vigilio, Kuido, Alento, Fisgo.

Cada nombre venía con justificación comercial y un análisis de qué tan registrable era en el IMPI (Clase 9 software / Clase 36 servicios financieros), aclarando que ninguno estaba confirmado todavía — eso le tocaba al Paso 4.

### Prompt 2 (Claude) — Filtro a 3 finalistas

> Actúa como un Consultor de Branding... Tengo una lista de 12 nombres de marca previamente generados... Tu tarea es aplicar un filtro estratégico y quedarte únicamente con 3 nombres finales, que cumplieran 4 criterios: evocadores, compuestos (combinar dos conceptos), inventados (neologismos) y disruptivos (evitar términos genéricos).

**Resultado:** Antes de filtrar, Claude señaló que ninguno de los 12 cumplía de verdad el criterio "compuestos" (fusión literal de dos raíces) y lo dijo explícitamente en vez de forzar la justificación. Con eso aclarado, el shortlist final fue Vigilio, Alento y Kuido, cada uno con su justificación en los otros tres criterios y su análisis de registrabilidad IMPI. Atisbo quedó mencionado como alternativa si se prefería una palabra real en vez de un neologismo.

### Prompt 3 (Claude) — Evaluación integral de los 3 finalistas

> Actúa como un Consultor de Branding... Tengo 3 nombres finalistas... Tu tarea es evaluar estos 3 nombres de forma integral, con 5 criterios (evocación emocional, distintividad legal IMPI, memorabilidad y fonética, potencial comercial, comparación relativa), puntuación de 1 a 5 y conclusión (recomendado / viable con ajustes / descartado).

**Resultado:** Puntuaciones y promedio:
- Vigilio: 4, 5, 4, 4 → promedio 4.25. Conclusión: recomendado.
- Alento: 5, 4, 5, 4 → promedio 4.5. Conclusión: recomendado.
- Kuido: 4, 3, 5, 3 → promedio 3.75. Conclusión: viable con ajustes, con la recomendación de verificarlo primero en el Paso 4 por ser el más riesgoso legalmente.

Comparación relativa: por promedio simple ganaba Alento, pero por seguridad legal (el criterio de mayor consecuencia a largo plazo) Vigilio iba adelante — Claude dejó ese empate técnico explícito en vez de elegir un ganador único.

## Paso 4 — Búsqueda fonética en el IMPI

*(Esto no fue un prompt de IA — lo corrí yo mismo en acervomarcas.impi.gob.mx y compartí las capturas para que Claude interpretara el resultado.)*

- **Kuido:** con búsqueda amplia salieron 3 coincidencias, incluyendo "KUIDO." registrada de forma idéntica (Clase 16) y un aviso comercial que combina esa palabra con "tarjeta, seguridad y protección" — mismo terreno conceptual del proyecto. Veredicto: descartado.
- **Vigilio:** sin resultados tanto en búsqueda amplia como en búsqueda exacta — el más limpio de los tres en el IMPI.
- **Alento:** con búsqueda amplia salieron resultados de "TALENTO" (falso positivo, palabra distinta que contiene las mismas letras); con coincidencia exacta marcada, sin resultados. Limpio, pero requirió el filtro exacto para confirmarlo.

Verificación digital adicional (fuera del IMPI): "Vigilio" ya lo usan dos empresas fuera de México (Vigilio Solutions y una firma de investigación en seguridad de IA), lo que complica conseguir un dominio limpio a futuro. "Alento" no mostró ese choque, pero sí el problema de confusión con "Talento" en dominios. Por eso la decisión final fue Vigilio (ver [semana-03.md](./semana-03.html)).

## Paso 5 — Vigilancia tecnológica

### Prompt (Claude) — Actores tecnológicos LATAM

> Actúa como analista de inteligencia tecnológica en LATAM. Busca primero en MX y LATAM, luego global. Concepto: [descripción + sector]. Entrega: Actores en México (nombre, tipo, qué hace, nivel de actividad), Actores en LATAM (BR, CO, AR, CL, PE), Actores globales con presencia en LATAM, 2–3 papers relevantes últimos 3 años, Conclusión: densidad MX/LATAM + implicación para el equipo.

**Resultado** (con búsqueda real, no solo conocimiento previo):
- México: Belvo (infraestructura, no competencia — es la misma que uso), una startup mexicana sin nombre público con motor de IA antifraude (jul-2025), y RAMONA IA (fraude laboral, no bancario). Ningún competidor directo del ángulo "detectar y delegar al hijo".
- LATAM: Colombia (GatekeeperX, IA antifraude en expansión activa) y Chile (Approbe, 95% de detección reportado) como los actores más fuertes; Brasil solo con iniciativas bancarias y una propuesta de ley, sin startup dedicada; Argentina y Perú sin actor específico encontrado — se documentó como hueco de información, no se inventó un nombre para rellenarlo.
- Globales con presencia en LATAM: Feedzai (confirmado con cliente en Colombia) y Galileo Financial Technologies; Sardine y Unit21 mencionados pero sin presencia confirmada en la región.
- 3 papers de los últimos 3 años: un análisis bibliométrico sobre fraude financiero a adultos mayores (2025), una revisión sistemática de detección de fraude con deep learning (2025), y un estudio comparativo de modelos de machine learning para transacciones fraudulentas (2025).
- Conclusión: densidad baja de competencia directa en México, densidad media en LATAM pero toda concentrada en modelos B2B (le venden a bancos, no a familias) — el ángulo B2C hijo-padre sigue sin competencia identificada. Riesgo de mediano plazo: si GatekeeperX u otro proveedor B2B le vende su tecnología a bancos mexicanos, se debilita el supuesto de que "el banco no detecta esto".
