---
layout: page
title: Nombre estándar
description: Metadato `standard_name`
---

Los posibles valores para el metadato `standard_name` se encuentran en [CF standard name
table](http://cfconventions.org/Data/cf-standard-names/current/build/cf-standard-name-table.html).
En la siguiente tabla se muestran algunos de los nombres estándares más usados.

_Tabla: Ejemplo de nombres estándares reconocidos por este protocolo._

**`standard_name`**       | **long_name** | Nombre Largo     | Descripción
--------------------------|---------------|------------------|--------------------------------------------------------------------
`altitude`                | Altitude      | Altitud          | Altitud sobre el geoide, la cual es la referencia de la superficie geopotencial
`height`                  | Height        | Elevación        | Distancia vertical sobre la superficie
`latitude`                | Latitude      | Latitud          | La latitud es positiva hacia el norte
`longitude`               | Longitude     | Longitud         | La longitud es positiva hacia el este
`projection_x_coordinate` | Easting       | Coordenada Este  | Componente vectorial a lo largo del eje x de la cuadrícula, es positiva al incrementar la x
`projection_y_coordinate` | Northing      | Coordenada Norte | Componente vectorial a lo largo del eje y, es positiva al incrementar la y
`time`                    | Time          | Tiempo           | &nbsp;
`utm_zone`                | UTM zone      | Zona UTM         | Una de las 60 zonas de proyección longitudinal.

Para incluir nuevos nombres estándares que no sean parte de la convención CF se debe utilizar la
[_guía de construccción de nombres
estándares_](http://cfconventions.org/Data/cf-standard-names/docs/guidelines.html) de la convención
CF.

---

&rarr; Siguiente: [Unidades](units.html).

&larr; Anterior: [Metadatos](metadatos.html).