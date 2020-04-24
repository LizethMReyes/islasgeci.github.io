---
layout: page
title: Fecha y hora
description: Formato para guardar fechas y horas
---

Guarda las fechas y horas en Excel como _texto_, no como fecha ni hora. De lo contrario, Excel guardará internamente las fechas como entero y las horas como fracciones. Y cuando importemos los datos no obtendremos lo mismo que tú viste al momento de guardar el archivo.

En Excel:

- Selecciona las celdas con fechas u horas
- Haz clic con el botón derecho
- Selecciona "Formato de Celdas..."
- Selecciona "Texto" del lado izquierdo

Guarda la fecha en una columna y la hora en otra columna distinta. Usa "`axis: T`" en los metadatos de las columnas que contengan fechas u horas.

Tienes dos opciones de formato para guardar fechas:

- Formato "`DD/MMM/AAAA`", donde `DD` es el día con dos dígitos, `MMM` son las tres primeras letras del mes en español y `AAAA` es el año con cuatro dígitos. Por ejemplo, "`31/Ene/2018`". En este caso la fecha es una cadena de exactamente 11 caracteres de longitud.

- Formato "`AAAA-MM-DD`", donde `AAAA` es el año con cuatro dígitos, `MM` es el mes con número de dos dígitos y `DD` es el día con dos dígitos. Por ejemplo, "`2018-01-31`". En este caso la fecha es una cadena de exactamente 10 caracteres de longitud.

En los metadatos usa "`standard_name`: `date`" para la fecha.

Para las horas usa el formato "`hh:mm:ss`", por ejemplo, "`18:00:00`". La hora es una cadena de exactamente 8 caracteres de longitud. En los metadatos usa "`standard_name`: `time`".

Ejemplo:

_Tabla: Hoja de datos_

**fecha**   | **hora** | **conteo**
------------|----------|-----------
07/Oct/1998 | 13:00:00 | 63
07/Oct/1998 | 13:30:00 | 27
07/Oct/1998 | 14:00:00 | 54


_Tabla: Hoja de metadatos_

**name**   | **nombre_largo**          | **long_name**     | **standard_name** | **axis** | **titulo**               | **title**
-----------|---------------------------|-------------------|-------------------|----------|--------------------------|---------------------
**TABLA**  | NA                        | NA                | NA                | NA       | Conteo de aves avistadas | Bird sighting counts
**fecha**  | Fecha de avistamiento     | Date of sighting  | date              | T        | NA                       | NA
**hora**   | Hora de avistamiento      | Time of sighting  | time              | T        | NA                       | NA
**conteo** | Cantidad de avistamientos | Sighting counts   | NA                | NA       | NA                       | NA


---

&rarr; Siguiente: [Validar un archivo de Excel](validacion.html).

&larr; Anterior: [Coordenadas UTM](utm.html).
