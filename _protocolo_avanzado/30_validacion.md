---
layout: page
title: Validar un archivo de Excel
tagline: para analistas de datos
description: Cómo verificar si un archivo de Excel cumple con este protocolo
---

Usamos [jsonschema](https://github.com/Julian/jsonschema) para validar que:

- el [descriptor de la tabla de datos](http://frictionlessdata.io/specs/tabular-data-resource/) generado a partir del segundo renglón de la segunda hoja de Excel (el primer renglón es el encabezado) cumple con [este JSON Schema](http://frictionlessdata.io/schemas/tabular-data-resource.json), y
- el [esquema de la tabla](http://frictionlessdata.io/specs/table-schema/) (generado a partir del resto de la segunda hoja de Excel) cumple con [este JSON Schema](http://frictionlessdata.io/schemas/table-schema.json).

Usamos [_Good Tables_](https://github.com/frictionlessdata/goodtables-py) para validar que la tabla de datos CSV (generada a partir de la primer hoja del archivo de Excel) es congruente con el esquema definido por `datapackage.json`.
