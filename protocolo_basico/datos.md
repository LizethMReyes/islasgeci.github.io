---
layout: page
title: Datos
description: Cómo guardar los datos en un archivo en Excel
---

- La tabla de datos se guardan en la primer hoja de un archivo de Excel.
- Cada columna representa una variable y cada renglón representa una observación.
- Solo se usa el primer renglón para indicar el nombre de las variables.

---

Por lo general, una hoja de campo donde se colectan los datos (con papel y lápiz) será distinta a la tabla de datos que se guardará en un archivo electrónico.
La hoja de campo es para una persona, mientras que la tabla en la que se guardan los datos es para una computadora.

Por ejemplo, podríamos tener una hoja de campo para el _número de individuos avistados_ de la forma siguiente:

especie | 15/Jun/2015 | 16/Jun/2015 | 17/Jun/2015
:-------|------------:|------------:|-----------:
alcuela |         152 |         142 |        125
mergulo |           1 |           0 |          2
pardela |          25 |          41 |         23
petrel  |         732 |         658 |        874

o, tal vez, en una forma alternativa:

fecha       | alcuela | mergulo | pardela | petrel
:-----------|--------:|--------:|--------:|------:
15/Jun/2015 |     152 | 1       | 25      |   732
16/Jun/2015 |     142 | 0       | 41      |   658
17/Jun/2015 |     125 | 2       | 23      |   874

La primera de las dos hojas anteriores tiene 4 columnas y 4 renglones con datos, mientras que la segunda hoja tiene 5 columnas y 3 renglones con datos. Ambas son tablas "chaparras", es decir, con pocos renglones. Ninguna de ellas es apropiada para ser procesadas con las herramientas automatizadas del equipo de Ciencia de Datos de GECI.

Los datos deben seguir el formato [_tidy data_](http://dx.doi.org/10.18637/jss.v059.i10). En una tabla _tidy_ cada variable es una columna y cada observación es un renglón. Comúnmente una tabla _tidy_ tendrá más renglones (i.e., será más "alta") que la correspondiente hoja de campo. La misma información que se encuentra en las tablas anteriores (hojas de campo) se guarda en una tabla _tidy_ de 3 columnas y 12 renglones con datos:

fecha       | especie | cantidad
:-----------|:-------:|--------:
15/Jun/2015 | alcuela |     152
15/Jun/2015 | mergulo |       1
15/Jun/2015 | pardela |      25
15/Jun/2015 | petrel  |     732
16/Jun/2015 | alcuela |     142
16/Jun/2015 | mergulo |       0
16/Jun/2015 | pardela |      41
16/Jun/2015 | petrel  |     658
17/Jun/2015 | alcuela |     125
17/Jun/2015 | mergulo |       2
17/Jun/2015 | pardela |      23
17/Jun/2015 | petrel  |     874

El primer renglón de la tabla de datos debe contener nombres únicos para cada columna.

---

&rarr; Siguiente: [Se consistente](consistencia.html).

&larr; Anterior: [Resumen](resumen.html).
