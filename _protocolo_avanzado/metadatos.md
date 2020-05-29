---
layout: page
title: Metadatos
tagline: para analistas de datos
description: Cómo agregar metadatos a un archivo de datos en Excel
order: 20
---

Los metadatos proporcionan información adicional sobre los datos. Existen diversas convenciones para estandarizar metadatos. La presente guía fue inspirada en [_NetCDF Climate and Forecast Metadata Conventions_ (CF Conventions)](http://cfconventions.org) y [Frictionless Data Specifications](http://specs.frictionlessdata.io/).

Los conceptos **atributo** (CF Conventions) y **propiedad** (Frictionless Data) son sinónimos en esta guía y se refieren al nombre de un metadato (ver tabla de sinónimos abajo). Una descripción más detallada de los metadatos se puede encontrar en el [apéndice A: Atributos](http://cfconventions.org/cf-conventions/cf-conventions.html#attribute-appendix) de la convención CF y en las diferenctes especificaciones de [Frictionless Data](http://specs.frictionlessdata.io/).

Aquí hay una tabla de sinónimos de conceptos definidos por CF Convetions, Frictionless Data y este protocolo.

CF Convetions  | Frictionless Data    | Protocolo GECI      |
---------------|----------------------|---------------------|
Attribute      | Property             | Nombre del metadato |
Root group (/) | Tabular Data Package | Paquete             |
Group          | Resource             | Tabla               |
Variable       | Field                | Columna             |

Cada metadato describe un elemento en alguno de los tres niveles de un conjunto de datos:

1. **Columna**. Es el elemento fundamental de un conjunto de datos. Es el contenedor directo de cada dato. Se refiere a una columna de una tabla o a un escalar. También podría referirse a un vector o una matriz. Equivale al concepto de [campo (field)](http://specs.frictionlessdata.io/table-schema/#field-descriptors) en los [paquetes de datos tabulados](http://specs.frictionlessdata.io/tabular-data-package/)
1. **Tabla**. Es un conjunto de _columnas_. Puede referirse a una tabla (_data frame_) en el sentido de _tidy data_. También podría referirse a una estructura de MATLAB o un diccionario de Python. En [NetCDF](http://www.unidata.ucar.edu/software/netcdf/docs/netcdf_data_set_components.html) se le llaman [Grupos](http://www.unidata.ucar.edu/software/netcdf/workshops/2011/groups-types/GroupsIntro.html) mientras que en la especificación de [_Frictionless Data_](http://specs.frictionlessdata.io/) se le conoce como [Recurso](http://specs.frictionlessdata.io/data-resource/)
1. **Paquete**. Es un conjunto de _tablas_ y constituye el nivel más alto de un conjunto de datos. Los metadatos que describen un _paquete_ se encuentran en la raíz del archivo descriptor de un [Data Package](http://specs.frictionlessdata.io/data-package/) o son los metadatos globales del gupo raíz (root o `/`) de un archivo NetCDF.

La tabla siguiente muestra la lista de matadatos reconocidos por este protocolo.

Metadato           | Uso      | Descripción
-------------------|----------|-------------
`comment`          | Paquete  | [Miscellaneous information about the data or methods used to produce it](http://cfconventions.org/cf-conventions/cf-conventions.html#description-of-file-contents)
`contributors`     | Paquete  | [The people or organizations who contributed to this Data Package](http://specs.frictionlessdata.io/data-package/#contributors)
`description`      | Paquete  | [A markdown formatted description of the package](http://specs.frictionlessdata.io/data-package/#description)
`history`          | Paquete  | [List of the applications that have modified the original data](http://www.unidata.ucar.edu/netcdf/docs/netcdf.html#Attribute-Conventions)
`homepage`         | Paquete  | [A URL for the home on the web that is related to this data package](http://specs.frictionlessdata.io/data-package/#homepage)
`institution`      | Paquete  | [Specifies where the original data was produced](http://cfconventions.org/cf-conventions/cf-conventions.html#description-of-file-contents)
`name`             | Paquete  | [A short url-usable (and preferably human-readable) name of the package](http://specs.frictionlessdata.io/data-package/#name)
`profile`          | Paquete  | [A string identifying the profile of this descriptor as per the profiles specification](http://specs.frictionlessdata.io/profiles/)
`references`       | Paquete  | [Published or web-based references that describe the data or methods used to produce it](http://cfconventions.org/cf-conventions/cf-conventions.html#description-of-file-contents)
`sources`          | Paquete  | [The raw sources for this data package](http://specs.frictionlessdata.io/data-package/#sources)
`title`            | Paquete  | [A succinct description of what is in the dataset (written in English)](http://www.unidata.ucar.edu/netcdf/docs/netcdf.html#Attribute-Conventions)
`titulo`           | Paquete  | Traducción al español de `title`
`description`      | Tabla  | [A description of the resource](http://specs.frictionlessdata.io/data-resource/#optional-properties)
`id`               | Tabla  | Igual que [`name`](http://specs.frictionlessdata.io/data-resource/#name) pero sin ".", "-" ni "_"
`name`             | Tabla  | [The name is a simple name or identifier to be used for this resource](http://specs.frictionlessdata.io/data-resource/#name)
`path` o `data`    | Tabla  | [Property describing the location of the data associated to the resource](http://specs.frictionlessdata.io/data-resource/#data-location)
`profile`          | Tabla  | [A string identifying the profile of this descriptor as per the profiles specification](http://specs.frictionlessdata.io/profiles/)
`source`           | Tabla  | [The method of production of the original data](http://cfconventions.org/cf-conventions/cf-conventions.html#description-of-file-contents)
`title`            | Tabla  | [A succinct description of what is in the dataset (written in English)](http://www.unidata.ucar.edu/netcdf/docs/netcdf.html#Attribute-Conventions)
`titulo`           | Tabla  | Traducción al español de `title`
`axis`             | Columna | [Identifies latitude, longitude, vertical, or time axes](http://cfconventions.org/cf-conventions/cf-conventions.html#coordinate-types)
`description`      | Columna | [A description for this field](http://specs.frictionlessdata.io/table-schema/#description)
`long_name`        | Columna | [A descriptive name that indicates a variable's content (written in English). This name is not standardized ](http://cfconventions.org/cf-conventions/cf-conventions.html#long-name)
`name`             | Columna | [This property should correspond to the name of field/column in the data file](http://specs.frictionlessdata.io/table-schema/#name)
`nombre_largo`     | Columna | Traducción al espanol de `long_name`
`standard_name`    | Columna | [A standard name that references a description of a variable's content in the standard name table](http://cfconventions.org/standard-names.html)
`units`            | Columna | [Units of a variable's content](http://www.unidata.ucar.edu/software/udunits/udunits.txt)

