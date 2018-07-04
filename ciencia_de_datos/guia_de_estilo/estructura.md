---
layout: page
title: Estructura de los directorios
tagline: [Guía de estilo](..)
description: Este documento extiende las guías de estilo adoptadas por el equipo de Ciencia de Datos de GECI
---

Aquí se define la estructura requerida en las carpetas de trabajo.

En la raíz de la carpeta de trabajo se encuentran los archivos:

- `Makefile`
- `README.md`

Además, se encuentran directorios que contienen:

| Carpeta                  | R                | MATLAB                  |
|--------------------------|------------------|-------------------------|
| Funciones                | `R/`             | `MATLAB/funciones`      |
| Clases                   | `R/`             | `MATLAB/clases`         |
| Demostraciones           | `vignettes/`     | `MATLAB/demostraciones` |
| Pruebas                  | `tests/`         | `tests/`                |
| Datos en formato nativo  | `data/*.RData`   | `data/*.mat`            |
| Datos en otro formato    | `inst/extdata/`  | `inst/extdata/`         |
| Programas                | `R/`             | `MATLAB/programas`      |
| Resultados               | `resultados/`    | `resultados/`           |
| Entrega                  | `entrega/`       | `entrega/`              |
| Referencias              | `referencias/`   | `referencias/`          |


## `Makefile`

El archivo `Makefile` tiene las siguientes secciones:

1. Definición del _phony_ **all** que enlista todos los objetivos (_targets_) principales (README, reportes, presentaciones, etc.)
1. Declaración de las variables
1. Reglas para construir los objetivos principales (enlistados en **all**)
1. Reglas para construir las dependencias de los objetivos principales (en orden de aparición en la sección anterior)
1. Reglas del resto de los _phonies_

### Nomenclatura

#### Variables

Los nombres de las variables que dentro del `Makefile` definen un conjunto de archivos están formado por cinco elementos, son en español y [_lowerCamelCase_](https://en.wikipedia.org/wiki/Camel_case).

Para **datos** se nombran como:

- formato
- variable(s)
- tipo de monitoreo (o simplemente la palabra `Datos`)
- especie (o grupo)
- región geográfica

Ejemplos: `xlsxNidosCensoAlbatrosGuadalupe`, `xlsxMadriguerasBusquedaMerguloGuadalupe`

Para **resultados** se nombran como:

- formato
- variable(s)
- tipo de resultado
- especie (o grupo)
- región geográfica

Ejemplo: `pngDensidadMapasAlbatrosGuadalupe`.

En ambos casos se pueden omitir las palabras reduntantes que se incluyan en el nombre del repositorio

El nombre de un programa que genera resultados debe coincidir con el nombre de la variable en el `Makefile` que define el conjunto de resultados que el programa genera (excepto tal vez por algunas omisiones para evitar redundancias). E.g. el programa que genera `pngMapasDensidadAlbatrosGuadalupe` se debe llamar `generaMapasDensidadAlbatrosGuadalupe`; en este ejemplo se omite el formato `PNG` del nombre porque el mismo programa también genera los resultados en formato `SHP` definidos por `shpMapasDensidadAlbatrosGuadalupe`.

#### Objetivos _phonies_

Los nombres de los objetivos _phonies_ son sustantivos o adjetivos en inglés. Si el sustantivo se omite, se entiende que el adjetivo se refiere al repositorio. Los nombres son en [_snake_case_](https://en.wikipedia.org/wiki/Snake_case).

### Ejemplo

Revisa [este ejemplo](https://bitbucket.org/analislas/analisis/src/default/referencias/ejemplo-makefile).

## `README.md`
Ver la sección [`README.md`](https://bitbucket.org/IslasGECI/analisis/src/default/README.md#markdown-header-readmemd) anterior.

## Datos
Ver la sección [Obtención de Datos](https://bitbucket.org/IslasGECI/analisis/src/default/README.md#markdown-header-obtencion-de-datos).

## Programas
Los programas de R se guardan en `R/`, mientras que los programas de MATLAB se guardan en `MATLAB/programas/`.

Los programas usan las [funciones](https://bitbucket.org/IslasGECI/analisis/src/default/README.md#markdown-header-funciones) para generar los [resultados](https://bitbucket.org/IslasGECI/analisis/src/default/README.md#markdown-header-resultados) que se guardan en la carpeta `resultados/`.

## Resultados
Ver la sección [Producción de resultados](https://bitbucket.org/IslasGECI/analisis/src/default/README.md#markdown-header-produccion-de-resultados).

## Entrega
Ver la sección [Redacción de reporte](https://bitbucket.org/IslasGECI/analisis/src/default/README.md#markdown-header-redaccion-de-reporte).

## Funciones
Cada una de las funciones creadas para generar los resultados se guarda en un archivo aparte. El nombre del archivo y el nombre de la función debe ser el mismo. Los nombres de las funciones y de las variables dentro de las funciones deben seguir la [guía para nomenclatura](https://bitbucket.org/IslasGECI/analisis/src/default/README.md#markdown-header-nomenclatura).

Las funciones de R se guardan en `R/`, mientras que las funciones de MATLAB se guardan en `MATLAB/funciones/`.

Todas las funciones deben ser documentadas siguiendo la [guía para documentación](https://bitbucket.org/IslasGECI/analisis/src/default/README.md#markdown-header-documentacion). La documentación de las funciones de R se escribe en formato Roxygen.

Cada función, cuando es posible, recibe como primer argumento entrada y devuelve como primer argumento de salida una tabla que pasa la prueba `checkTable`.

## Clases
Las clases de MATLAB se guardan en `MATLAB/clases/`.

## Demostraciones
Ver la sección [Creación de Pruebas y Demostraciones](https://bitbucket.org/IslasGECI/analisis/src/default/README.md#markdown-header-creacion-de-pruebas-y-demostraciones).

## Pruebas
Ver la sección [Creación de Pruebas y Demostraciones](https://bitbucket.org/IslasGECI/analisis/src/default/README.md#markdown-header-creacion-de-pruebas-y-demostraciones).

## Referencias
La carpeta `referencias/` contiene artículos, libros y notas que son relevantes para el proyecto en general y, en particular, para los resultados que estamos produciendo. Aquí se encuentran los artículos que se citan en los reportes y presentaciones que se encuentran en `entrega/`.

---

&#8811; Siguiente: [Documentación](documentacion.html)

&#8810; Anterior: [Introducción](introduccion.html)