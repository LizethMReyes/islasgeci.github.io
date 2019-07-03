---
layout: page
title: Control de versiones
tagline: Guía de estilo
description: Este documento extiende las guías de estilo adoptadas por el equipo de Ciencia de Datos de GECI
---

## Mensajes de consignación

La siguiente es una lista de recomendaciones para escribir mensajes de
consignación útiles.

- Indica el número de tarea al inicio del mensaje (e.g. _#999_).
- El mensaje de consignación debe describir _qué_ cambio se hizo y _por qué_.
- El mensaje debe comenzar con un verbo en modo imperativo para describir _qué_ cambio se hizo.
- Describir _por qué_ se hizo el cambio es más importante que describir _qué_ cambio se hizo.
- Cada línea debe ser menor o igual a 80 caracteres.
- La primer línea debe ser una oración completa.
- El resto del mensaje se debe ser un texto formado por párrafos.
- El mensaje puede ser tan extenso como sea necesario para describir la consignación de forma detallada.
- Es más fácil redactar los mensajes cuando se hacen muchas consignaciones con pocos cambios en lugar de pocas consignaciones con muchos cambios.

## Marcadores
Si el repositorio es complejo, se pueden usar marcadores (_bookmarks_) para indicar la tarea, proyecto o componente en la que se está trabajando actualmente. Ver [`hg help bookmarks`](https://selenic.com/hg/help/bookmarks).

## Etiquetas
Las etiquetas (_tags_) se usan para indicar el número de versión siguiendo [versionamiento semántico](http://semver.org/). Ver [`hg help tags`](https://selenic.com/hg/help/tags).

## Ramas

- [`hg help branches`](https://selenic.com/hg/help/branches).

### Ramas en repos clase 1

Hay dos ramas principales: _development_ y _default_. La rama _development_ es la rama de desarrollo normal; mientras que la rama _default_ sólo contiene revisiones donde se verificó que las pruebas pasan.

**Siempre** debes trabajar en la rama _development_. **Nunca** debes trabajar en la rama _default_. Cuando termines un _issue_, debes pedir a otro analista que revise y apruebe tu revisión. El proceso de revisión sucede en la rama _development_. Te recominedo que uses _bookmarks_ en la rama _development_ para comunicar a tu revisor cuál _issue_ te están revisando. Una vez que tu tarea haya sido aprobada, debes llevarte hacia la rama _default_ la revisión aprobada. La rama _default_ sólo avanza mediante _merge_.

```bash
hg update default
hg merge development
hg commit -m "Resuelve issue #XXX"
```

Además, también deberás fusionar la revisión aprobada en cada cabeza de la rama _default_ (si acaso existe más de una cabeza en la rama _default_). Pide permiso al equipo antes de fusionar cualquier cambio en las cabezas de _default_ ya que más de una cabeza significa que alguien está trabajando en el mismo repositorio. En caso de conflicto en los cambios introducidos, trabajaran juntos quienes trabajan en cada cabeza para incorporar los cambios. Los cambios introducidos por la cabeza con la revisión aprobada tienen prioridad sobre el resto de los cambios, es decir, la cabeza recién aprobada tiene prioridad. Cada vez que se abruebe una revisión quedará una cabeza menos en _development_ (hasta que quede una única cabeza).

### Ramas en repos clase 3

En los repos clase 3 usamos Mercurial con una adaptación de GitFlow

Hay tres ramas con nombre: _features_, _develop_ y _default_. La rama _features_ es la rama de desarrollo normal; mientras que la rama _develop_ sólo contiene revisiones que fueron aprobadas en revisión por pares mediante _pull request_, es decir, cumplen con el _checklist_ de una columna (nomenclatura, `testMake` corre remoto, etcétera).

**Siempre** debes trabajar en la rama _features_. **Nunca** debes trabajar en la rama _develop_. Cuando termines el _checklist_ de una columna, debes pedir a otro analista que revise y apruebe tu tarea. El proceso de revisión sucede en la rama _features_. Te recominedo que uses _bookmarks_ en la rama _features_ con el prefijo `feature/tarea_NUMERO` (donde `NUMERO` representa el número de la tarea en el KanbanTool) para comunicar a tu revisor cuál tarea te están revisando. Una vez que tu tarea haya sido aprobada, debes llevarte hacia la rama _develop_ la revisión aprobada. La rama _develop_ sólo avanza mediante _merge_.

```bash
hg update develop
hg merge feature/tarea_NUMERO
hg commit -m "Agrega [nombre de la tarea] aprobada en columna [nombre de la columna]"
```

Además, también deberás fusionar la tarea aprobada en cada cabeza de la rama _features_ (si acaso existe más de una cabeza). Pide permiso al equipo antes de fusionar cualquier cambio en las cabezas de _features_ ya que más de una cabeza significa que alguien está trabajando en el mismo repositorio. En caso de conflicto en los cambios introducidos, trabajaran juntos quienes trabajan en cada cabeza para incorporar los cambios. Los cambios introducidos por la cabeza con la tarea aprobada tienen prioridad sobre el resto de los cambios, es decir, la cabeza recién aprobada tiene prioridad. Cada vez que se abruebe una tarea quedará una cabeza menos en _features_ (hasta que quede una única cabeza).

## Contenido
- Sólo se consignaran archivos de texto sin formato (csv, json, svg, tex, txt, etc.), nunca binarios.
- No se consignarán archivos mayores a 1 MB (> 10 mil líneas de código).
- Se prefieren las imágenes `svg` sobre cualquier formato binario. Excepcionalmente se podrán consignar imágenes binarias si son para una aplicación que depende de las imágenes para funcionar siempre y cuando el lado más grande sea ≤ 256 pixeles
- Las excepciones a las reglas anteriores serán consensuadas.

---

&#8811; Siguiente: [Formato de los archivos](formato_de_archivos.html)

&#8810; Anterior: [Nomenclatura](nomenclatura.html)
