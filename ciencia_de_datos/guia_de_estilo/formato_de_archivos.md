---
layout: page
title: Formato de los archivos
tagline: Guía de estilo
description: Este documento extiende las guías de estilo adoptadas por el equipo de Ciencia de Datos de GECI
---

Los datos se prefieren en texto simple (csv, json, etc.) sobre los archivos binarios (xls, mat, etc.) porque:

1. Pueden agregarse los archivos de texto simple en el sistema de control de versiones (la tortuguita).
1. Es más fácil transferir archivos de texto simple entre distintos lenguajes de programación. Por ejemplo es más fácil exportar e importar un JSON desde MATLAB a R y viceversa que importar un `.mat` a R o un `.RData` a MATLAB
1. Puede abrirse un archivo de texto simple en cualquier máquina sin instalar nada (ya tiene Notepad). Es universalmente accesible. Para abrir un archivo binario tienes que instalar algún programa que no viene incluido en el sistema operativo.
1. Los archivos binarios comúnmente son formatos propietarios que acarrean problemas con las licencias que, a su vez, podrían traducirse en costos económicos.
1. Los formatos de texto simple son más estables y puedes confiar en que en el futuro seguirán existiendo herramientas gratuitas para trabajar con ellos. Los formatos binarios se convierten en obsoletos pronto porque las fuerzas del mercado obligan a los usuarios de software propietario a comprar las versiones más nuevas.

---

&#8811; Siguiente: [Contenido](index.html) &#8811;

&#8810; Anterior: [Control de versiones](control_de_versiones.html) &#8810;