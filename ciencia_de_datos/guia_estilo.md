---
layout: page
title: Guía de estilo de Ciencia de Datos
tagline: "@IslasGECI"
description: Este documento extiende las guías de estilo adoptadas por el equipo de Ciencia de Datos de GECI
---

## Contenido

- [Introducción](#introduccion)
- [Carpetas de trabajo](#estructura-de-las-carpetas-de-trabajo)
- [Documentación](#documentacion)
- [Nomenclatura](#nomenclatura)
- [Control de versiones](#control-de-versiones)
- [Formato de los archivos](#formato-de-los-archivos)

## Introducción

El equipo de Ciencia de datos en GECI adopta las siguientes guías de estilo:

- [HTML y CSS](https://google.github.io/styleguide/htmlcssguide.html)
- [MATLAB](http://www.datatool.com/downloads/MatlabStyle2%20book.pdf)
- [Python](https://www.python.org/dev/peps/pep-0008)
- [R](https://google.github.io/styleguide/Rguide.xml)

Las guías de estilo anteriores no son exhaustivas y este documento las extiende. Esta guía de estilo es válida sólo en los casos no contemplados en las guías de estilo anteriores. En caso de conflicto, las guías de estilo anteriores tienen preferencia sobre ésta.

## Estructura de las carpetas de trabajo

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


### `Makefile`

El archivo `Makefile` tiene las siguientes secciones:

1. Definición del _phony_ **all** que enlista todos los objetivos (_targets_) principales (README, reportes, presentaciones, etc.)
1. Declaración de las variables
1. Reglas para construir los objetivos principales (enlistados en **all**)
1. Reglas para construir las dependencias de los objetivos principales (en orden de aparición en la sección anterior)
1. Reglas del resto de los _phonies_

Revisa [este ejemplo](https://bitbucket.org/analislas/analisis/src/default/referencias/ejemplo-makefile).

### `README.md`
Ver la sección [`README.md`](https://bitbucket.org/analislas/analisis#readmemd) anterior.

### Datos
Ver la sección [Obtención de Datos](https://bitbucket.org/analislas/analisis#obtencion-de-datos).

### Programas
Los programas de R se guardan en `R/`, mientras que los programas de MATLAB se guardan en `MATLAB/programas/`.

Los programas usan las [funciones](https://bitbucket.org/analislas/analisis#funciones) para generar los [resultados](https://bitbucket.org/analislas/analisis#resultados) que se guardan en la carpeta `resultados/`.

### Resultados
Ver la sección [Producción de resultados](https://bitbucket.org/analislas/analisis#produccion-de-resultados).

### Entrega
Ver la sección [Redacción de reporte](https://bitbucket.org/analislas/analisis#redaccion-de-reporte).

### Funciones
Cada una de las funciones creadas para generar los resultados se guarda en un archivo aparte. El nombre del archivo y el nombre de la función debe ser el mismo. Los nombres de las funciones y de las variables dentro de las funciones deben seguir la [guía para nomenclatura](https://bitbucket.org/analislas/analisis#nomenclatura).

Las funciones de R se guardan en `R/`, mientras que las funciones de MATLAB se guardan en `MATLAB/funciones/`.

Todas las funciones deben ser documentadas siguiendo la [guía para documentación](https://bitbucket.org/analislas/analisis#documentacion). La documentación de las funciones de R se escribe en formato Roxygen.

Cada función, cuando es posible, recibe como primer argumento entrada y devuelve como primer argumento de salida una tabla que pasa la prueba `checkTable`.

### Clases
Las clases de MATLAB se guardan en `MATLAB/clases/`.

### Demostraciones
Ver la sección [Creación de Pruebas y Demostraciones](https://bitbucket.org/analislas/analisis#creacion-de-pruebas-y-demostraciones).

### Pruebas
Ver la sección [Creación de Pruebas y Demostraciones](https://bitbucket.org/analislas/analisis#creacion-de-pruebas-y-demostraciones).

### Referencias
La carpeta `referencias/` contiene artículos, libros y notas que son relevantes para el proyecto en general y, en particular, para los resultados que estamos produciendo. Aquí se encuentran los artículos que se citan en los reportes y presentaciones que se encuentran en `entrega/`.

## Documentación

El reúso de los programas y funciones depende de su documentación. Si el código está bien documentado, será fácil usarlo nuevamente. De lo contrario, el programa será inútil en el futuro. Aquí propongo el contenido mínimo en el texto de ayuda de funciones escritas en MATLAB y en R.

### MATLAB

Supongamos que creamos una función en MATLAB para sumar dos números

```
function y = add(a,b)
  switch nargin
    case 2
      c = a + b;
    case 1
      c = a + a;
    otherwise
      c = NaN;
  end  %switch
end  %function
```


La documentación debe incluir al menos las siguientes secciones en el texto de ayuda:

#### Cabecera
En MATLAB, la primera línea del texto de ayuda (llamada _H1_) inicia con el nombre de la función y una breve descripción de la función. Esta línea es importante porque `lookfor` busca en ella una palabra clave dada. Además, `Contents` despliega esta línea para cada archivo `.m` en el directorio de trabajo.

```
ADD  Suma dos números.
```

#### Descripción
En esta sección se presenta una descripción detallada de la función en el contexto del problema general o el área temática a la que pertenece. Se puede plantear el problema que la función atiende, describir las variables ambientales, proporcionar antecedentes, explicar la metodología y métodos matemáticos usados.

```
Descripción:
    Suma dos números usando la suma de los números reales. Esta suma,
    junto con los números reales, cumplen con los cuatro axiomas de
    grupo: cerradura, asociatividad, existencia de elemento neutro y
    existencia de elementos inversos. Además, la suma es conmutativa,
    por lo que los reales con esta suma son un grupo abeliano.
```

#### Autores
Además del nombre de los autores, es importante incluir algún medio de contacto, por ejemplo, Dirección de correo electrónico.

```
Autor:
    Evaristo Rojas <evaristo.rojas@islas.org.mx>
```

#### Referencias
Debemos incluir las referencias en las que se encuentran los antecedentes de nuestra descripción y las referencias en las que basamos los métodos y métodos matemáticos. También podemos usar esta sección para referir al lector a las definiciones de los términos usados.

```
Referencias:
    - <a href="http://es.wikipedia.org/wiki/Grupo_abeliano">Grupo abeliano</a>
    - <a href="http://es.wikipedia.org/wiki/Suma">Suma</a>
```

#### Sintaxis
Enlistamos todas las posibles maneras en las que se puede invocar la función.

```
Sintaxis:
    Y = add(A) suma A a sí mismo.
    Y = add(A,B) suma A mas B.
```

#### Entrada
Enlistamos todos los posibles argumentos de entrada de la función, los cuales se mostraron en la sección de _Sintaxis_. Indicamos su clase y dominio. Debe quedar claro cuál es la relación entre estos parámetros y las variables del problema general.

```
Entrada:
    x  (double)  Número real que será sumado.
    y  (double)  Número real que será sumado.
```

#### Salida

Enlistamos todos los valores de salida de la función, los cuales se mostraron en la sección de _Sintaxis_. Indicamos su clase y dominio.

```
Salida:
    Y  (double)  Total de la suma.
```

#### Ejemplos
La sección de ejemplos se debe escribir en formato de `doctest`. Incluiremos ejemplos que sean autónomos, es decir, que se puedan copiar y pegar en la ventana de comandos para ser ejecutados. Se deberá incluir un ejemplo por cada manera mostrada en la sección de  _Sintaxis_.

```
Ejemplos:
>> Y = add(1);
Y = 2

>> Y = add(2,3);
Y = 5

>> Y = add();
Y = NaN
```

#### See also
Al incluir nombres de funciones al final del texto de ayuda en una línea que inicie con `See also` se crearán enlaces hacia dichas funciones.

```
See also:
    sum, cumsum, diff.
```

#### Ayuda
Escribiendo el texto de ayuda de la manera descrita, obtendremos ayuda completa que nos permitir usar la función fácilmente en el futuro.

```
help add
```

**add**  Suma dos números.

**Descripción:**

Suma dos números usando la suma de los números reales. Esta suma,
junto con los números reales, cumplen con los cuatro axiomas de
grupo: cerradura, asociatividad, existencia de elemento neutro y
existencia de elementos inversos. Además, la suma es conmutativa, por
lo que los reales con esta suma son un grupo abeliano.

**Autor:**

Evaristo Rojas <evaristo.rojas@islas.org.mx>

**Referencias:**

- [Grupo abeliano](http://es.wikipedia.org/wiki/Grupo_abeliano)
- [Suma](http://es.wikipedia.org/wiki/Suma)

**Sintaxis:**

- `Y = add(A)` suma `A` a sí mismo.
- `Y = add(A,B)` suma `A` mas `B`.

**Entrada:**

- `A  (double)`  Número real que será sumado.
- `B  (double)`  Número real que será sumado.

**Salida:**

- `Y  (double)`  Total de la suma.

**Ejemplos:**

- `Y = add(1);      % devuelve Y = 2`
- `Y = add(2,3);    % devuelve Y = 5`
- `Y = add(1,2,3);  % devuelve Y = NaN`

**See also:**

`sum`, `cumsum`, `diff`.

### R

Para documentar funciones en R usamos el paquete `Roxygen`.

#### Cabecera
En R, la primera línea del texto es identificada automáticamente por `Roxygen` como el título de la función, que es una breve descripción de la misma, por lo tanto no es necesario indicarlo con el _tag_ `@title`. El nombre de la función se establece al definirla en el código al final de la documentación (no es necesario mencionarla en la documentación).

```
#' Suma dos números.
```

#### Descripción
La documentación en `Roxygen` reconoce automáticamente la segunda línea de comentarios como la sección donde se describe detalladamente a la función por lo que de nuevo no es necesario utilizar un _tag_ (`@description`).

```
#' Suma dos números usando la suma de los números reales. Esta suma,
#' junto con los números reales, cumplen con los cuatro axiomas de
#' grupo: cerradura, asociatividad, existencia de elemento neutro y
#' existencia de elementos inversos. Además, la suma es conmutativa,
#' por lo que los reales con esta suma son un grupo abeliano.
```

#### Autores
Debido a que en la documentación de `Roxygen` los _tags_ comienzan con `@`, si se quiere agregar un `@` en el texto es necesario escribirlo dos veces: `@@`.

```
#' @author Evaristo Rojas <evaristo.rojas@@islas.org.mx>
```

#### Referencias

```
#' @references
#'  \href{http://es.wikipedia.org/wiki/Suma}{Suma}
```

#### Sintaxis

```
#'  @usage c <- add(a,b)
#'
#'  # Suma a mas b.
```

#### Entrada

```
#' @param a(numeric) Número real que será sumado.
#' @param b(numeric) Número real que será sumado.
```

#### Salida

```
#' @return c(numeric) Total de la suma.
```

#### Ejemplos

```
#' @examples
#'  c <- add(2,3)
#'  # Devuelve c = 5
```

#### See also

```
#' @seealso \code{\link[base]{sum}}, \code{\link[base]{cumsum}}
```

#### Ayuda

```
?add
```
`add{base}`

**Suma dos números.**

**Descripción:**

Suma dos números usando la suma de los números reales. Esta suma,
junto con los números reales, cumplen con los cuatro axiomas de
grupo: cerradura, asociatividad, existencia de elemento neutro y
existencia de elementos inversos. Además, la suma es conmutativa, por
lo que los reales con esta suma son un grupo abeliano.

**Usage**

`c <- add(a,b)`

`# Suma a mas b.`

**Arguments**

`a(numeric)` Número real que será sumado.

`b(numeric)` Número real que será sumado.

**Value**

`c(numeric)` Total de la suma.

**Author(s)**

Evaristo Rojas <evaristo.rojas@islas.org.mx>

**References**

[Suma](http://es.wikipedia.org/wiki/Suma)

**See Also**

`sum`, `cumsum`

**Examples**

```
c <- add(2,3)
# Devuelve c = 5
```

## Nomenclatura

### Funciones
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

### Pruebas
Los nombres de los archivos que contienen pruebas deben seguir las reglas de nomenclatura del _testing framework_ que se use. Si el _testing framework_ lo permite, se seguirán las siguiente reglas:

- Se usa el prefijo `test`, por ejemplo, `testIslas`
- Nombres en inglés
- Nombres en _lowerCamelCase_ (sin espacios)
- Nombres pueden incluir únicamente letras (excepto eñe y vocales con acento) y números

### Otros programas
- Empiezan con un verbo
- Nombres en español
- Nombres en _lowerCamelCase_ (sin espacios)
- Nombres pueden incluir únicamente letras (excepto eñe y vocales con acento) y números

### Otros archivos y directorios
- Los nombres no incluyen espacios
- Se pueden usar guiones bajos (`_`) para separar palabras
- Todo el nombre está escrito en minúsculas solamente (excepto cuando sea requiera lo contrario de forma explícita)
- Los nombres pueden incluir únicamente letras minúsculas (excepto eñe y vocales con acento), números o guiones bajos (`_`)
- Si el nombre del archivo incluye una fecha, usa el formato `YYYY-MM-DD` (año-mes-día) o `YYYYMMDD` (añomesdía)

### Variables
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
- En el `Makefile` los nombres de las variables que definen un conjunto de archivos están formado por cinco elementos y son en español y _lowerCamelCase_:
    - Para datos se nombran como: formato, tipo de monitoreo (o simplemente la palabra `Datos`), variable(s), especie (o grupo) y región geográfica. E.g. `xlsxCensoNidosAlbatrosGuadalupe`, `xlsxBusquedaMadriguerasMerguloGuadalupe`
    - Para resultados se nombran como: formato, tipo de resultado, variable(s), especie (o grupo) y región geográfica. E.g. `pngMapasDensidadAlbatrosGuadalupe`.
    - Se pueden omitir las palabras reduntantes que se incluyan en el nombre del repositorio
- El nombre de un programa que genera resultados debe coincidir con el nombre de la variable en el `Makefile` que define el conjunto de resultados que el programa genera (excepto tal vez por algunas omisiones para evitar redundancias). E.g. el programa que genera `pngMapasDensidadAlbatrosGuadalupe` se debe llamar `generaMapasDensidadAlbatrosGuadalupe`; en este ejemplo se omite el formato `PNG` del nombre porque el mismo programa también genera los resultados en formato `SHP` definidos por `shpMapasDensidadAlbatrosGuadalupe`.

### Programación Orientada a Objetos
- Los nombres de las clases son sustantivos en inglés y en UpperCamelCase;
- los nombres de los objetos en español y en UpperCamelCase;
- los nombres de los métodos inician con verbos, son en inglés y en lowerCameslCase;
- los nombres de los atributos son en español y en lowerCamelCase.

### Archivos que contengan un conjunto de funciones
* Se debe llamar igual que el repositorio a donde pertenecen
* En el caso de Python, se debe evitar importar todas las funciones al namespace global (`from datos-netcdf import *`), se prefiere importar cada una de forma individual. Ejemplo `from datos-netcdf import makeAnualDirs`

## Control de versiones

### Mensajes de consignación

La siguiente es una lista de recomendaciones para escribir mensajes de
consignación útiles.

- Indica el número de tarea al inicio del mensaje (e.g. _#999_).
- El mensaje de consignación debe describir _qué_ cambio se hizo y _por qué_.
- El mensaje debe comenzar con un verbo en modo imperativo para describir _qué_ cambio se hizo.
- Describir _por qué_ se hizo el cambio es más importante que describir _qué_ cambio se hizo.
- Cada línea debe ser menor o igual a 80 caracteres.
- La primer línea debe ser una oración completa.
- El resto del mensaje se debe ser un texto formado por párrafos.
- El mensaje puede ser tan extenso como sea necesario para describir la consignación de forma detallada.
- Es más fácil redactar los mensajes cuando se hacen muchas consignaciones con pocos cambios en lugar de pocas consignaciones con muchos cambios.

### Marcadores
Si el repositorio es complejo, se pueden usar marcadores (_bookmarks_) para indicar la tarea, proyecto o componente en la que se está trabajando actualmente. Ver [`hg help bookmarks`](https://selenic.com/hg/help/bookmarks).

### Etiquetas
Las etiquetas (_tags_) se usan para indicar el número de versión siguiendo [versionamiento semántico](http://semver.org/). Ver [`hg help tags`](https://selenic.com/hg/help/tags).

### Ramas
Hay dos ramas principales: _default_ y _stable_. La rama _default_ es la rama normal de desarrollo; mientras que la rama _stable_ sólo contiene revisiones donde se verificó que `testMake` está corriendo adecuadamente, es decir, cada _objetivo_ puede ser generado mediante Make. Ver [`hg help branches`](https://selenic.com/hg/help/branches).

### Contenido
- Sólo se consignaran archivos de texto sin formato (csv, json, svg, tex, txt, etc.), nunca binarios.
- No se consignarán archivos mayores a 1 MB (> 10 mil líneas de código).
- Se prefieren las imágenes `svg` sobre cualquier formato binario. Excepcionalmente se podrán consignar imágenes binarias si son para una aplicación que depende de las imágenes para funcionar siempre y cuando el lado más grande sea ≤ 256 pixeles
- Las excepciones a las reglas anteriores serán consensuadas.

## Formato de los archivos

Los datos se prefieren en texto simple (csv, json, etc.) sobre los archivos binarios (xls, mat, etc.) porque:

1. Pueden agregarse los archivos de texto simple en el sistema de control de versiones (la tortuguita).
1. Es más fácil transferir archivos de texto simple entre distintos lenguajes de programación. Por ejemplo es más fácil exportar e importar un JSON desde MATLAB a R y viceversa que importar un `.mat` a R o un `.RData` a MATLAB
1. Puede abrirse un archivo de texto simple en cualquier máquina sin instalar nada (ya tiene Notepad). Es universalmente accesible. Para abrir un archivo binario tienes que instalar algún programa que no viene incluido en el sistema operativo.
1. Los archivos binarios comúnmente son formatos propietarios que acarrean problemas con las licencias que, a su vez, podrían traducirse en costos económicos.
1. Los formatos de texto simple son más estables y puedes confiar en que en el futuro seguirán existiendo herramientas gratuitas para trabajar con ellos. Los formatos binarios se convierten en obsoletos pronto porque las fuerzas del mercado obligan a los usuarios de software propietario a comprar las versiones más nuevas.

---

&uarr; Inicio: [Ciencia de Datos en GECI](index.html)
