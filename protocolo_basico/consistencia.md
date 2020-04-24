---
layout: page
title: Se consistente
description: La regla más importante de la organización de datos es ser consistente
---

La regla más importante de la organización de datos es *ser consistente*.

- **Usa códigos consistentes para las variables categóricas.** Para una variable categórica como *isla* usa siempre un único codigo para referirte a la misma isla. Por ejemplo, para las Islas Coronado puedes usar el código "`coronado`"; no escribas a veces "`Coronado`", otras veces "`Coronados`", de vez en cuando "`Isla Coronado`", una que otra vez "`Isla Coronados`" y algunas veces "`Islas Coronados`". Otro ejemplo son los nombres de las especies. Elije uno y quédate con él.

- **Usa "`NA`" cuando te haga falta un dato.** Ninguna celda en la hoja de datos puede quedar vacía, ni siquiera cuando no tenemos el dato. En GECI usamos "`NA`" (_not available_) para indicar que el dato no está disponible. Además, no insertes una nota en lugar del dato faltante explicando por qué falta. Más bien agrega dicha nota en una columna para notas.

- **Usa nombres de archivos consistentes.** Nombra tus archivos indicando: la variable de interés, método de muestreo, especie monitoreada, isla, y fecha de última actualización. E.g: "`Madrigueras_Cuadrantes_AvesMarinas_PacificoNorte_01Ene2018.xlsx`", "`Conteo_Transectos_Cangrejos_Chinchorro_01Ago2018.xlsx`", "`Nidos_Censo_Albatros_Guadalupe_01Ene2018.xlsx`", etc. En lugar de espacios usa guion bajo "`_`".

- **Usa el formato "`dd/Mmm/aaaa`" para todas las fechas** Por ejemplo, "`07/Oct/1998`", "`01/Ene/2000`", etc.

- **Ten cuidado con los espacios dentro de las celdas.** Una celda en blanco es diferente de una celda que contiene un solo espacio. Considera que "` vivo`" es diferente de "`vivo `" (es decir, con espacio al principio o al final). Los espacios resultarán en una gran frustración y pérdida de tiempo en el mejor de los casos; en el peor de los casos obtendremos resultados incorrectos.

---

&rarr; Siguiente: [Nombres de archivos y columnas](nomenclatura.html).

&larr; Anterior: [Datos](datos.html).
