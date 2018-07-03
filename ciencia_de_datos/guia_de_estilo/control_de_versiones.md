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
Hay dos ramas principales: _default_ y _stable_. La rama _default_ es la rama normal de desarrollo; mientras que la rama _stable_ sólo contiene revisiones donde se verificó que `testMake` está corriendo adecuadamente, es decir, cada _objetivo_ puede ser generado mediante Make. Ver [`hg help branches`](https://selenic.com/hg/help/branches).

## Contenido
- Sólo se consignaran archivos de texto sin formato (csv, json, svg, tex, txt, etc.), nunca binarios.
- No se consignarán archivos mayores a 1 MB (> 10 mil líneas de código).
- Se prefieren las imágenes `svg` sobre cualquier formato binario. Excepcionalmente se podrán consignar imágenes binarias si son para una aplicación que depende de las imágenes para funcionar siempre y cuando el lado más grande sea ≤ 256 pixeles
- Las excepciones a las reglas anteriores serán consensuadas.

---

&#8811; Siguiente: [Formato de los archivos](formato_de_archivos.html)

&#8810; Anterior: [Nomenclatura](nomenclatura.html)