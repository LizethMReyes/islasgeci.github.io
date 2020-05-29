---
layout: post
title: "Instala la versión _default_ de TOOLBOXES"
author: Evaristo
---

Para que puedas verificar que las pruebas de un repo pasan, necesitas una función de **toolboxes** que no se encuentra en la versión estable. Por favor instala la versión _default_ de **toolboxes**.

1. En Mercurial haz _pull_ al repo **toolboxes**
1. En Mercurial haz _update_ a la rama _default_ de **toolboxes**
1. Cierra MATLAB
1. En PowerShell ejecuta `.\CMD\installDefaultToolboxes.cmd` desde la raíz del repo que actualizate en el paso anterior
1. Abre MATLAB
