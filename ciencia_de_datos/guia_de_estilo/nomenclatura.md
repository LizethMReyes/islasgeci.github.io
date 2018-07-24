---
layout: page
title: Nomenclatura
tagline: Guía de estilo
description: Este documento extiende las guías de estilo adoptadas por el equipo de Ciencia de Datos de GECI
---

## Funciones
- Los nombres de las funciones se escriben en inglés
- El nombre debe estar compuesto por un verbo seguido de un objeto.
Ejemplos: `processData()`, `petDog()`. Si la función realiza tantas
tareas que no sabes cual verbo escoger entonces tu función es incorrecta;
cada función debe realizar una única acción y la debe hacer bien.
- Si la función cambia el formato del argumento de entrada se usa la
notación `input2output`. Ejemplos: `jpg2bmp()`, `txt2pdf()`, `lbs2kg()`
- Las funciones que calculan un sólo dato de salida se pueden nombrar
como ese dato (para evitar tener demasiadas funciones con el prefijo
`compute`). Ejemplos: `promedio = mean(datos)`, `cuadrado =
square(numero)`
- Si la función devuelve valores lógicos se usa el prefijo `is`.
Ejemplos: `esPerro = isDog(perroGris)`

## Pruebas
Los nombres de los archivos que contienen pruebas deben seguir las reglas de nomenclatura del _testing framework_ que se use. Si el _testing framework_ lo permite, se seguirán las siguiente reglas:

- Se usa el prefijo `test`, por ejemplo, `testIslas`
- Nombres en inglés
- Nombres en _lowerCamelCase_ (sin espacios)
- Nombres pueden incluir únicamente letras (excepto eñe y vocales con acento) y números

## Makefile

### Variables dentro del Makefile

Los nombres de las variables que dentro del `Makefile` definen un conjunto de archivos están formado por cinco elementos, son en español y [_lowerCamelCase_](https://en.wikipedia.org/wiki/Camel_case).

Las variables que definen conjuntos de archivos de **datos** se nombran como:

- formato
- variable(s)
- tipo de monitoreo (o simplemente la palabra `Datos`)
- especie (o grupo)
- región geográfica

Ejemplos: `xlsxNidosCensoAlbatrosGuadalupe`, `xlsxMadriguerasBusquedaMerguloGuadalupe`

Las variables que definen conjuntos de archivos de **resultados** se nombran como:

- formato
- variable(s)
- tipo de resultado
- especie (o grupo)
- región geográfica

Ejemplo: `pngDensidadMapasAlbatrosGuadalupe`.

En ambos casos se pueden omitir las palabras reduntantes que se incluyan en el nombre del repositorio

### Objetivos _phonies_

Los nombres de los objetivos _phonies_ son sustantivos o adjetivos en inglés. Si el sustantivo se omite, se entiende que el adjetivo se refiere al repositorio. Los nombres son en [_snake_case_](https://en.wikipedia.org/wiki/Snake_case).

## Programas

- Empiezan con un verbo
- Nombres en español
- Nombres en _lowerCamelCase_ (sin espacios)
- Nombres pueden incluir únicamente letras (excepto eñe y vocales con acento) y números

El nombre de un programa que genera resultados debe coincidir con el nombre de la variable en el `Makefile` que define el conjunto de resultados que el programa genera (excepto tal vez por algunas omisiones para evitar redundancias). E.g. el programa que genera los resultados definidos por la variable `pngDensidadMapasAlbatrosGuadalupe` se debe llamar `graficaDensidadMapasAlbatrosGuadalupe`; en este ejemplo se omite el formato `PNG` del nombre porque el mismo programa también genera los resultados en formato `SHP` definidos por la variable `shpDensidadMapasAlbatrosGuadalupe`.

## Otros archivos y directorios

- Los nombres no incluyen espacios
- Sólo puedes usar guiones bajos (`_`) para separar palabras ([_snake_case_](https://en.wikipedia.org/wiki/Snake_case))
- Todo el nombre está escrito en minúsculas solamente (excepto cuando sea requiera lo contrario de forma explícita)
- Los nombres pueden incluir únicamente letras minúsculas (excepto eñe y vocales con acento), números o guiones bajos (`_`)
- Si el nombre del archivo incluye una fecha, usa el formato `YYYY-MM-DD` (año-mes-día) o `YYYYMMDD` (añomesdía)

## Variables
- Los nombres de las variables se escriben en español.
- Deben ser nombres descriptivos y, en general, sin abreviaturas. Las excepciones serán consensuadas. Actualmente, las únicas abreviaturas aceptadas son:
    - `LEO`: Local Environmental Observer
    - `TSM`: Temperatura Superficial del Mar
    - `ZEE`: Zona Económica Exclusiva
    - `x`: Coordenadas UTM zonales de un conjunto de puntos (e.g. vértices de un polígono). Salida del método `getPointX`
    - `y`: Coordenadas UTM meridionales de un conjunto de puntos (e.g. vértices de un polígono). Salida del método `getPointY`
    - `xEje`: Vector de coordenadas UTM zonales (usualmete equiespeciadas) que definen el dominio o eje. Salida del método `getAxisX`
    - `yEje`: Vector de coordenadas UTM meridionales (usualmete equiespeciadas) que definen el dominio o eje. Salida del método `getAxisY`
    - `X`: Malla de coordenadas UTM zonales. Salida del método `getGridX`
    - `Y`: Malla de coordenadas UTM meridionales. Salida del método `getGridY`
    - `lon`: Coordenadas geográficas zonales de un conjunto de puntos (e.g. vértices de un polígono). Salida del método `getPointLon`
    - `lat`: Coordenadas geográficas meridionales de un conjunto de puntos (e.g. vértices de un polígono). Salida del método `getPointLat`
    - `Lon`: Vector de coordenadas geográficas zonales (usualmete equiespeciadas) que definen el dominio o eje. Salida del método `getAxisLon`
    - `Lat`: Vector de coordenadas geográficas meridionales (usualmete equiespeciadas) que definen el dominio o eje. Salida del método `getAxisLat`
    - `LON`: Malla de coordenadas geográficas zonales. Salida del método `getGridLON`
    - `LAT`: Malla de coordenadas geográficas meridionales. Salida del método `getGridLAT`

- La primer letra de cada palabra en mayúsculas, excepto en la primer
palabra ([lowerCamelCase](http://es.wikipedia.org/wiki/CamelCase)).
Ejemplos: `tiempo`, `distanciaHorizontal`, `perroGris`
- En MATLAB, si la variable es una estructura (clase `struct`) o una tabla (clase `table`) también la primer letra de la primer
palabra es mayúscula ([UpperCamelCase](http://es.wikipedia.org/wiki/CamelCase)). Ejemplos: `PerroGris.estatura`,
`PerroGris.nombreCompleto`, `PerroGris.ComidaFavorita.desayuno`
- Si la variable representa el número total de elementos de un conjunto
se usa el prefijo `n`. Ejemplos: `nArchivos`, `nPerros`
- Si la variable se usa para iterar se utiliza el prefijo `i`. Ejemplo:
`for iPerro = 1:nPerros, ... , end`
- Para variables lógicas se usa el prefijo `es`. Ejemplos: `esPerro`,
`esGato`
- Si la variable es el índice de un arreglo se usa el prefijo `ind`.
Ejemplo: `indPerro = find(esPerro)`
- Se indican la unidades de las variables con un sufijo separado del
nombre de la variable por un guión bajo. Ejemplos: `distancia_m`,
`peso_kg`, `tiempo_s`
- Para nombrar variables dentro del `Makefile` sigue [esta guía](estructura.html#makefile)

## Programación Orientada a Objetos
- Los nombres de las clases son sustantivos en inglés y en UpperCamelCase;
- los nombres de los objetos en español y en UpperCamelCase;
- los nombres de los métodos inician con verbos, son en inglés y en lowerCameslCase;
- los nombres de los atributos son en español y en lowerCamelCase.

## Archivos que contengan un conjunto de funciones
* Se debe llamar igual que el repositorio a donde pertenecen
* En el caso de Python, se debe evitar importar todas las funciones al namespace global (`from datos-netcdf import *`), se prefiere importar cada una de forma individual. Ejemplo `from datos-netcdf import makeAnualDirs`

---

&#8811; Siguiente: [Control de versiones](control_de_versiones.html)

&#8810; Anterior: [Documentación](documentacion.html)