---
layout: page
title: Coordenadas Geográficas
description: "Para coordenadas geográficas debes incluir dos columnas: latitud y longitud"
---

Para coordenadas geográficas debes incluir dos columnas: _latitud_ y _longitud_.

Para la variable que representa la latitud usa los metadatos "`axis: Y`" y "`standard_name: latitude`". Te recomiendo que como unidades uses "`units: degree_north`".

Para la variable que representa la longitud usa los metadatos "`axis: X`" y "`standard_name: longitude`". Te recomiendo que como unidades uses "`units: degree_west`" o "`units: degree_east`" según corresponda.

Los valores de las columnas de latitud y longitud deben ser grados decimales. Ten cuidado al convertir de grados, minutos y segundos a grados decimales. Recuerda que `30° 18′` **NO** es igual a 30.18 grados. `30° 18′` es igual a 30.3 grados y 30.18 grados es igual a `30° 10′ 48″`.

Ejemplo:

_Tabla: Hoja de datos_

**lat**   | **lon**     | **conteo**
----------|-------------|-----------
31.857778 | -116.605833 | 63
31.858147 | -116.601270 | 27
31.859058 | -116.609134 | 54


_Tabla: Hoja de metadatos_

**name**   | **nombre_largo** | **long_name** | **standard_name** | **axis** | **units**     | **titulo**                                             | **title**
-----------|------------------|---------------|-------------------|----------|---------------|--------------------------------------------------------|------------------------------------
**TABLA**  | NA               | NA            | NA                | NA       | NA            | Muestreo por cuadrantes de madrigueras de aves marinas | Quadrat sampling of seabird burrows
**lat**    | Latitud          | Latitude      | latitude          | Y        | degree_north  | NA                                                     | NA
**lon**    | Longitud         | Longitude     | longitude         | X        | degree_west   | NA                                                     | NA
**conteo** | Madrigueras      | Burrows       | NA                | NA       | NA            | NA                                                     | NA

---

&rarr; Siguiente: [Coordenadas UTM](utm.html).

&larr; Anterior: [Sistemas de Coordenadas](coordenadas.html).