---
layout: page
title: Coordenadas UTM
description: "Para coordenadas UTM debes incluir tres columnas: coordenada Este, coordenada Norte y zona UTM."
---

Para coordenadas UTM debes incluir tres columnas: _coordenada Este_, _coordenada Norte_ y _zona UTM_.

Para la variable que representa la coordenada Este usa los metadatos "`axis: X`" y "`standard_name: projection_x_coordinate`". Te recomiendo que como unidades uses "`units: mE`".

Para la variable que representa la coordenada Norte usa los metadatos "`axis: Y`" y "`standard_name: projection_y_coordinate`". Te recomiendo que como unidades uses "`units: mN`".

Para la variable que representa la zona UTM usa el metadato "`standard_name: utm_zone`". Los valores de la columna de la zona UTM están compuestos por un número entero entre 1 y 60 indicando la zona longitudinal y una letra entre C y X (excepto I y O) indicando la zona meridional. El territorio mexicano se encuentra entre las zonas latitudinales P ([Ciudad Hidalgo, Chis.](https://es.wikipedia.org/wiki/Ciudad_Hidalgo_%28Chiapas%29)) y S ([Tijuana, B.C.](https://es.wikipedia.org/wiki/Tijuana)). [Aquí](http://www.dmap.co.uk/utmworld.htm) puedes ver un mapa con los números y letras de las zonas UTM.

Ejemplo:

_Tabla: Hoja de datos_

**x**  | **y**   | **zona** | **conteo**
-------|---------|----------|-----------
375774 | 3211856 | 11R      | 63
375493 | 3212124 | 11R      | 27
374958 | 3212535 | 11R      | 54


_Tabla: Hoja de metadatos_

**name**   | **nombre_largo** | **long_name** | **standard_name**       | **axis** | **units** | **titulo**                                       | **title**
-----------|------------------|---------------|-------------------------|----------|-----------|--------------------------------------------------|----------------------------------
**TABLA**  | NA               | NA            | NA                      | NA       | NA        | Muestreo por cuadrantes de nidos de aves marinas | Quadrat sampling of seabird nests
**x**      | Coordenada Este  | Easting       | projection_x_coordinate | X        | mE        | NA                                               | NA
**y**      | Coordenada Norte | Northing      | projection_y_coordinate | Y        | mN        | NA                                               | NA
**zona**   | Zona UTM         | UTM zone      | utm_zone                | NA       | NA        | NA                                               | NA
**conteo** | Nidos            | Nests         | NA                      | NA       | NA        | NA                                               | NA

---

&rarr; Siguiente: [Fecha y hora](tiempo.html).

&larr; Anterior: [Coordenadas Geográficas](geograficas.html).