# Página de Axel — Proyecto de Ingeniería IV

Este sitio usa **Jekyll + just-the-docs** y se publica solo con GitHub Pages (GitHub Actions construye el sitio automáticamente en cada `push` a `main` — no necesitas instalar Ruby ni Jekyll en tu computadora).

## Estructura

```
.
├── _config.yml          ← título, descripción y URL del sitio (edítalo primero)
├── index.md              ← Portada
├── about.md               ← About me (las 4 secciones que pide el syllabus)
├── proyecto-final.md      ← Entrega final + checklist de ponderaciones
├── semanas/
│   ├── index.md           ← página que agrupa las semanas
│   └── semana-01.md ... semana-16.md   ← una por sesión, ya con el tema/actividad/producto del syllabus
├── assets/images/        ← pon aquí tus fotos/capturas
└── .github/workflows/pages.yml   ← el robot que publica tu sitio, no lo toques
```

## Flujo semanal (una vez configurado)

1. Abre la carpeta del repo en VS Code.
2. Edita el archivo `semanas/semana-XX.md` de esa semana (rellena "Lo que hice esta semana" y "Evidencias").
3. Guarda el archivo.
4. En GitHub Desktop: revisa los cambios → escribe un mensaje de commit corto → **Commit to main** → **Push origin**.
5. Espera 1-2 minutos: la pestaña **Actions** de tu repo en GitHub debe mostrar una palomita verde. Tu página ya está actualizada.

Ver la guía completa paso a paso que te mandó Claude en el chat.
