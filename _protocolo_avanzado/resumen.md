---
layout: page
title: 1. Resumen
tagline: para analistas de datos
---

- Recibimos cada tabla de datos en un archivo de Excel que cumple [este protocolo](../index.html)
- Convertimos el archivo de Excel validado a [_Tabular Data Package_ (TDP)](https://frictionlessdata.io/docs/tabular-data-package/)
    - Convertimos la primer hoja de Excel en una tabla de datos CSV
    - Convertimos el segundo renglón de la segunda hoja de Excel en el [descriptor de la tabla de datos](http://frictionlessdata.io/specs/tabular-data-resource/)
    - Convertimos el resto de la segunda hoja en el [esquema de la tabla](http://frictionlessdata.io/specs/table-schema/)
- Importamos el TDP anterior como un objeto `DataPackage` (**datatools**)
- Procesamos los datos de forma [reproducible](http://kbroman.org/steps2rr/) siguiendo nuestro [manual de procedimientos](https://bitbucket.org/IslasGECI/analisis/src/default/README.md) y nuestra [guía de estilo](https://islasgeci.github.io/guia_de_estilo/)
- Entregamos los resultados mediante Trello (evitando enviar archivos adjuntos por correo)
