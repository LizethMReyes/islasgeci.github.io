---
layout: page
title: No hagas cálculos en el archivo de datos
tagline: tampoco incluyas gráficas
description: Los archivos de datos crudos no pueden contener cálculos ni gráficas
---

Los archivos de datos crudos que serán procesados por el equipo de Ciencia de Datos sólo pueden contener datos&mdash;no pueden contener cálculos ni gráficas. De lo contrario, al importar el archivo de datos a R obtendremos algo distinto a lo que tú esperabas.

Si tú quieres realizar algún análisis en Excel haz una copia del archivo de datos crudos, y haz tus cálculos y gráficas en la copia.

Es conveniente que nombres los archivos de tal manera que sea fácil distinguir los archivos en los que puedes hacer cálculos e incluir gráficas de los que no. Por ejemplo, podrías usar el prefijo `DatosCrudos` para los archivos que serán procesados por el equipo de Ciencia de Datos y el prefijo `Resultados` para los archivos que tú analizaras en Excel.

También te recomiendo que protejas tu archivo de datos crudos contra escritura:

- Haz clic con el botón derecho sobre el archivo de datos crudos
- Selecciona "Propiedades"
- Marca la casilla "Sólo lectura" (junto a "Atributos")
- Haz clic en "Aceptar"

---

&rarr; Siguiente: [No uses colores en lugar de datos](sin_colores.md).

&larr; Anterior: [No fusiones celdas](fusionar_celdas.html).
