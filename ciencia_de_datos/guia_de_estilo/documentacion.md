---
layout: page
title: Documentación
tagline: Guía de estilo
description: Este documento extiende las guías de estilo adoptadas por el equipo de Ciencia de Datos de GECI
---

El reúso de los programas y funciones depende de su documentación. Si el código está bien documentado, será fácil usarlo nuevamente. De lo contrario, el programa será inútil en el futuro. Aquí propongo el contenido mínimo en el texto de ayuda de funciones escritas en MATLAB y en R.

## MATLAB

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

### Cabecera
En MATLAB, la primera línea del texto de ayuda (llamada _H1_) inicia con el nombre de la función y una breve descripción de la función. Esta línea es importante porque `lookfor` busca en ella una palabra clave dada. Además, `Contents` despliega esta línea para cada archivo `.m` en el directorio de trabajo.

```
ADD  Suma dos números.
```

### Descripción
En esta sección se presenta una descripción detallada de la función en el contexto del problema general o el área temática a la que pertenece. Se puede plantear el problema que la función atiende, describir las variables ambientales, proporcionar antecedentes, explicar la metodología y métodos matemáticos usados.

```
Descripción:
    Suma dos números usando la suma de los números reales. Esta suma,
    junto con los números reales, cumplen con los cuatro axiomas de
    grupo: cerradura, asociatividad, existencia de elemento neutro y
    existencia de elementos inversos. Además, la suma es conmutativa,
    por lo que los reales con esta suma son un grupo abeliano.
```

### Autores
Además del nombre de los autores, es importante incluir algún medio de contacto, por ejemplo, Dirección de correo electrónico.

```
Autor:
    Evaristo Rojas <evaristo.rojas@islas.org.mx>
```

### Referencias
Debemos incluir las referencias en las que se encuentran los antecedentes de nuestra descripción y las referencias en las que basamos los métodos y métodos matemáticos. También podemos usar esta sección para referir al lector a las definiciones de los términos usados.

```
Referencias:
    - <a href="http://es.wikipedia.org/wiki/Grupo_abeliano">Grupo abeliano</a>
    - <a href="http://es.wikipedia.org/wiki/Suma">Suma</a>
```

### Sintaxis
Enlistamos todas las posibles maneras en las que se puede invocar la función.

```
Sintaxis:
    Y = add(A) suma A a sí mismo.
    Y = add(A,B) suma A mas B.
```

### Entrada
Enlistamos todos los posibles argumentos de entrada de la función, los cuales se mostraron en la sección de _Sintaxis_. Indicamos su clase y dominio. Debe quedar claro cuál es la relación entre estos parámetros y las variables del problema general.

```
Entrada:
    x  (double)  Número real que será sumado.
    y  (double)  Número real que será sumado.
```

### Salida

Enlistamos todos los valores de salida de la función, los cuales se mostraron en la sección de _Sintaxis_. Indicamos su clase y dominio.

```
Salida:
    Y  (double)  Total de la suma.
```

### Ejemplos
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

### See also
Al incluir nombres de funciones al final del texto de ayuda en una línea que inicie con `See also` se crearán enlaces hacia dichas funciones.

```
See also:
    sum, cumsum, diff.
```

### Ayuda
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

## R

Para documentar funciones en R usamos el paquete `Roxygen`.

### Cabecera
En R, la primera línea del texto es identificada automáticamente por `Roxygen` como el título de la función, que es una breve descripción de la misma, por lo tanto no es necesario indicarlo con el _tag_ `@title`. El nombre de la función se establece al definirla en el código al final de la documentación (no es necesario mencionarla en la documentación).

```
#' Suma dos números.
```

### Descripción
La documentación en `Roxygen` reconoce automáticamente la segunda línea de comentarios como la sección donde se describe detalladamente a la función por lo que de nuevo no es necesario utilizar un _tag_ (`@description`).

```
#' Suma dos números usando la suma de los números reales. Esta suma,
#' junto con los números reales, cumplen con los cuatro axiomas de
#' grupo: cerradura, asociatividad, existencia de elemento neutro y
#' existencia de elementos inversos. Además, la suma es conmutativa,
#' por lo que los reales con esta suma son un grupo abeliano.
```

### Autores
Debido a que en la documentación de `Roxygen` los _tags_ comienzan con `@`, si se quiere agregar un `@` en el texto es necesario escribirlo dos veces: `@@`.

```
#' @author Evaristo Rojas <evaristo.rojas@@islas.org.mx>
```

### Referencias

```
#' @references
#'  \href{http://es.wikipedia.org/wiki/Suma}{Suma}
```

### Sintaxis

```
#'  @usage c <- add(a,b)
#'
#'  # Suma a mas b.
```

### Entrada

```
#' @param a(numeric) Número real que será sumado.
#' @param b(numeric) Número real que será sumado.
```

### Salida

```
#' @return c(numeric) Total de la suma.
```

### Ejemplos

```
#' @examples
#'  c <- add(2,3)
#'  # Devuelve c = 5
```

### See also

```
#' @seealso \code{\link[base]{sum}}, \code{\link[base]{cumsum}}
```

### Ayuda

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

---

&#8811; Siguiente: [Nomenclatura](nomenclatura.html) &#8811;

&#8810; Anterior: [Estructura de los directorios](estructura.html) &#8810;