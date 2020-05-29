---
layout: post
title: "Lanzamientos del Bundle"
author: Evaristo
---

Esta entrada define la política de lanzamientos versionados del Bundle. Esta política será válida a partir de la versión 1.0.0; actualmente sólo es un borrador.

## Versión del Bundle

El Bundle es un conjunto de módulos. Cada módulo se encuentra dentro de un repositorio de Mercurial. Cada consignación en Mercurial produce una nueva revisión. Las revisiones de un módulo son independientes de las revisiones del resto de los módulos en el Bundle. De vez en cuando, se etiqueta de forma simultanea una revisión de cada módulo. La etiqueta representa un [número de versión](https://semver.org/). El conjunto de revisiones etiquetadas con el mísmo número de versión es la **versión del Bundle**.

En tu máquina puedes tener instalada una versión del Bundle o un conjunto de revisiones no versionadas. Esta entrada se refiere sólo al primer caso: las versiones del Bundle.

## Mantenimiento de una versión

Cada versión lanzada tiene asociado un periodo de mantenimiento. Durante el periodo de mantenimiento se agregará funcionalidad nueva (mediante lanzamientos menores) y se corregirán _bugs_ (mediante lanzamientos de parches) de forma compatible con la versión lanzada. Si un programa usa la versión `X.Y.Z` del Bundle, entonces podrá usar cualquier versión `X.U.V` tal que `X.Y.Z` ≤ `X.U.V` < `(X+1).0.0`. Cualquier cambio introducido durante el periodo de mantenimiento que rompa programas serán considerado _bug_ y se corregirá.

## Lanzamiento mayor

Un lanzamiento es mayor cuando rompe compatibilidad hacia atrás y se indica incrementando el número `X` en la versión `X.Y.Z`.

Hay dos versiones de lanzamiento mayor:

- Versión con mantenimiento a corto plazo (STS)
- Versión con mantenimiento a largo plazo (LTS)

### Versión con mantenimiento a corto plazo

Cada trimestre (periodicidad ≥ 3 meses) se hará un lanzamiento mayor de una versión con mantenimiento a corto plazo (STS). Esta versión tendrá mantenimiento hasta que la siguiente versión STS sea lanzada, es decir, durante al menos tres meses.

### Versión con mantenimiento a largo plazo

Una vez al año (periodicidad ≥ 1 año) se hará un lanzamiento mayor de una versión con mantenimiento a largo plazo (LTS). Esta versión tendrá mantenimiento hasta que la siguiente versión LTS sea lanzada, es decir, durante un año.

## Lanzamiento menor

Un lanzamiento es menor cuando se agrega funcionalidad de una manera compatible y se indica incrementando el número `Y` en la versión `X.Y.Z`.

Los lanzamientos menores tienen una periodicidad mensual. Los lanzamientos menores junto con los lanzamientos de parches constituyen el mantenimiento de una versión.

## Lanzamiento de parche

Un lanzamiento es de parche cuando cuando se corrigen _bugs_ de una manera compatible y se indica incrementando el número `Z` en la versión `X.Y.Z`.

Los lanzamientos de parche ocurren sin restricciones de periodicidad. Los lanzamientos de parches junto con los lanzamientos menores constituyen el mantenimiento de una versión.

## Calendario tentativo

Version    | Lanzamiento | Tipo de mantenimiento | Fin del mantenimiento
-----------|-------------|-----------------------|--------
1.0.0      | 2019-04     | _STS_                 | 2019-07
2.0.0      | 2019-07     | _STS_                 | 2019-10
3.0.0+LTS  | 2019-10     | **LTS**               | 2020-10
4.0.0      | 2020-01     | _STS_                 | 2020-04
5.0.0      | 2020-04     | _STS_                 | 2020-07
6.0.0      | 2020-07     | _STS_                 | 2020-10
7.0.0+LTS  | 2020-10     | **LTS**               | 2021-10
8.0.0      | 2021-01     | _STS_                 | 2021-04

# Versión cero

Para las versiones < 1.0.0 se realizarán lanzamientos con periodicidad ≥ 1 mes. Estas versiones tendrán mantenimiento durante dos meses. El mantenimiento de las versiones < 1.0.0 se limita a correcciones de _bugs_. La funcionalidad nueva sólo se agregará a los lanzamientos mayores.

## Lanzamientos pasados

Version                   | Lanzamiento | Fin del mantenimiento
--------------------------|-------------|----------------------
[0.4.0](bundle_v0_4_0.md) | 2018-08-06  | 2018-10-06
[0.3.0](bundle_v0_3_0.md) | 2018-07-15  | 2018-09-15
 0.2.0                    | 2018-05-16  | 2018-07-16
 0.1.0                    | 2017-11-28  | 2018-01-28

## Lanzamuentos futuros

Version    | Lanzamiento | Fin del mantenimiento
-----------|-------------|----------------------
0.5.0      | 2018-09     | 2018-11
0.6.0      | 2018-11     | 2019-01
0.7.0      | 2019-01     | 2019-03
0.8.0      | 2019-03     | 2019-05
