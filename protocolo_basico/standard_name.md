---
layout: page
title: Nombre estándar
description: Metadato `standard_name`
---

Los posibles valores para el metadato `standard_name` se encuentran en [CF standard name table](http://cfconventions.org/Data/cf-standard-names/55/build/cf-standard-name-table.html). En la siguiente tabla se muestran algunos de los nombres estándares más usados.

_Tabla: Ejemplo de nombres estándares reconocidos por este protocolo._

**`standard_name`**       | **long_name** | Nombre Largo     | Descripción
--------------------------|---------------|------------------|--------------------------------------------------------------------
`altitude`                | Altitude      | Altitud          | Height above the geoid, which is the reference geopotential surface
`height`                  | Height        | Elevación        | Vertical distance above the surface
`latitude`                | Latitude      | Latitud          | Latitude is positive northward
`longitude`               | Longitude     | Longitud         | Longitude is positive eastward
`projection_x_coordinate` | Easting       | Coordenada Este  | Vector component along the grid x-axis, when this is not true longitude, positive with increasing x
`projection_y_coordinate` | Northing      | Coordenada Norte | vector component along the grid y-axis, when this is not true latitude, positive with increasing y
`time`                    | Time          | Tiempo           | &nbsp;
`utm_zone`                | UTM zone      | Zona UTM         | One of the 60 longitudinal projection zones. (Most of these zones are 6 degrees wide.)

Para incluir nuevos nombres estándares que no sean parte de la convención CF se debe utilizar la [_guía de construccción de nombres estándares_](http://cfconventions.org/Data/cf-standard-names/docs/guidelines.html) de la convención CF.

---

&rarr; Siguiente: [Unidades](units.html).

&larr; Anterior: [Metadatos](metadatos.html).