---
layout: page
title: Nomenclatura
tagline: Guía de estilo
description: Cómo nombramos las cosas
---

## Archivos de datos

Consulta nuestro protocolo para [nombrar un archivo de datos](../protocolo_basico/nomenclatura.html).

## Archivos de código (_scripts_)

- Empiezan con un verbo
- Nombres en inglés
- Nombres pueden incluir únicamente letras (excepto eñe y vocales con acento) y números

El nombre de un programa que genera resultados debe coincidir con el nombre de la variable en el
`Makefile` que define el conjunto de resultados que el programa genera (excepto tal vez por algunas
omisiones para evitar redundancias). Por ejemplo, el programa que genera los resultados definidos
por la variable `png_density_maps_albatross_guadalupe` se debe llamar
`plot_density_maps_albatross_guadalupe`; en este ejemplo se omite el formato `PNG` del nombre porque
el mismo programa también genera los resultados en formato `SHP` definidos por la variable
`shp_density_maps_albatross_guadalupe`.

## Funciones

- Los nombres de las funciones se escriben en inglés
- El nombre debe estar compuesto por un verbo seguido de un objeto. Ejemplos: `process_data()`,
  `pet_dog()`. Si la función realiza tantas tareas que no sabes cual verbo escoger entonces tu
  función es incorrecta; cada función debe realizar una única acción y la debe hacer bien.
- Si la función cambia el formato del argumento de entrada, usamos la notación `input2output`.
  Ejemplos: `jpg2bmp()`, `txt2pdf()`, `lbs2kg()`
- En algunos casos es aceptable nombrar a una función con un sustantivo que describe una operación,
  por ejemplo: `mean()`, `square()`
- Si la función devuelve valores lógicos, usamos el prefijo `is`. Ejemplo: `is_dog()`

## Pruebas

Los nombres de los archivos que contienen pruebas deben seguir las reglas de nomenclatura del
_testing framework_ que se use. Si el _testing framework_ lo permite, se seguirán las siguiente
reglas:

- Se usa el prefijo `test_`, por ejemplo, `test_plot_island`
- Nombres en inglés
- Nombres pueden incluir únicamente letras (excepto eñe y vocales con acento) y números

## Makefile

### Variables dentro del Makefile

Los nombres de las variables que dentro del `Makefile` definen un conjunto de archivos están formado
por cinco elementos y son en inglés.

Las variables que definen conjuntos de archivos de **datos** se nombran como:

- formato
- variable(s)
- tipo de monitoreo (o simplemente la palabra `data`)
- especie (o grupo)
- región geográfica

Ejemplos: `xlsx_nests_census_albatross_guadalupe`, `xlsx_burrows_sampling_guadalupe_murrelet`

Las variables que definen conjuntos de archivos de **resultados** se nombran como:

- formato
- variable(s)
- tipo de resultado
- especie (o grupo)
- región geográfica

Ejemplo: `png_density_maps_albatross_guadalupe`.

En ambos casos se pueden omitir las palabras reduntantes que se incluyan en el nombre del
repositorio

### Objetivos _phonies_

Los nombres de los objetivos _phonies_ son sustantivos o adjetivos en inglés. Si el sustantivo se
omite, se entiende que el adjetivo se refiere al repositorio. Los nombres son en
[_snake_case_](https://en.wikipedia.org/wiki/Snake_case).

## Otros archivos y directorios

- Los nombres no incluyen espacios y serán en inglés
- Sólo puedes usar guiones bajos (`_`) para separar palabras
  ([_snake_case_](https://en.wikipedia.org/wiki/Snake_case))
- Todo el nombre está escrito en minúsculas solamente (excepto cuando sea requiera lo contrario de
  forma explícita)
- Los nombres pueden incluir únicamente letras minúsculas (excepto eñe y vocales con acento),
  números o guiones bajos (`_`)
- Si el nombre del archivo incluye una fecha, usa el formato `YYYY-MM-DD` (año-mes-día) o `YYYYMMDD`
  (añomesdía)

## Variables

- Los nombres de las variables se escriben en inglés
- Deben ser nombres descriptivos y, en general, sin abreviaturas. Las excepciones serán
  consensuadas. Actualmente, las únicas abreviaturas aceptadas son:
    - `TSM`: Temperatura Superficial del Mar
    - `ZEE`: Zona Económica Exclusiva
    - `x`: Coordenadas UTM zonales de un conjunto de puntos (e.g. vértices de un polígono). Salida
      del método `getPointX`
    - `y`: Coordenadas UTM meridionales de un conjunto de puntos (e.g. vértices de un polígono).
      Salida del método `getPointY`
    - `xEje`: Vector de coordenadas UTM zonales (usualmete equiespeciadas) que definen el dominio o
      eje. Salida del método `getAxisX`
    - `yEje`: Vector de coordenadas UTM meridionales (usualmete equiespeciadas) que definen el
      dominio o eje. Salida del método `getAxisY`
    - `X`: Malla de coordenadas UTM zonales. Salida del método `getGridX`
    - `Y`: Malla de coordenadas UTM meridionales. Salida del método `getGridY`
    - `lon`: Coordenadas geográficas zonales de un conjunto de puntos (e.g. vértices de un
      polígono). Salida del método `getPointLon`
    - `lat`: Coordenadas geográficas meridionales de un conjunto de puntos (e.g. vértices de un
      polígono). Salida del método `getPointLat`
    - `Lon`: Vector de coordenadas geográficas zonales (usualmete equiespeciadas) que definen el
      dominio o eje. Salida del método `getAxisLon`
    - `Lat`: Vector de coordenadas geográficas meridionales (usualmete equiespeciadas) que definen
      el dominio o eje. Salida del método `getAxisLat`
    - `LON`: Malla de coordenadas geográficas zonales. Salida del método `getGridLON`
    - `LAT`: Malla de coordenadas geográficas meridionales. Salida del método `getGridLAT`
- Si la variable representa el número total de elementos de un conjunto se usa el prefijo `n`.
  Ejemplos: `n_files`, `n_dogs`
- Si la variable se usa para iterar se utiliza el prefijo `i`. Ejemplo: `for i_dog = 1:n_dogs, ... ,
  end`
- Para variables lógicas usamos el prefijo `is`. Ejemplos: `is_dog`, `is_cat`
- Si la variable es el índice de un arreglo se usa el prefijo `ind`. Ejemplo: `ind_dog =
  find(is_dog)`
- Indicamos la unidades de las variables con un sufijo separado del nombre de la variable por un
  guión bajo. Ejemplos: `distance_m`, `weight_kg`, `time_s`

## Programación Orientada a Objetos

- Los nombres son en inglés
- Los nombres de las clases son sustantivos
- los nombres de los métodos inician con un verbo

---

&#8811; Siguiente: [Control de versiones](control_de_versiones.html)

&#8810; Anterior: [Documentación](documentacion.html)
