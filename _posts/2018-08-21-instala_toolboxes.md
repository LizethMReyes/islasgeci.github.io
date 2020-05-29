---
layout: post
title: "Instala módulo toolboxes"
author: Evaristo
---

## Instalación

1. Clona con Mercurial el repositorio **toolboxes** desde Bitbucket (o haz _pull_ y _update_ si ya lo tienes)
1. Cierra MATLAB
1. En PowerShell ejecuta `installToolboxes.cmd` (o `installDefaultToolboxes.cmd` si prefieres la versión más nueva en lugar de la estable) que se encuentra en el directorio `CMD/` del repositorio **toolboxes** que acabas de clonar
1. Copia al directorio `bin/` de MATLAB (e.g. `C:/Program Files/MATLAB/R2017a/bin/`) el archivo `startup.m` que se encuentra en el directorio `MATLAB/demostraciones/` del repositorio **toolboxes**

## Uso

En MATLAB usa la función `toolboxes.installToolbox()` para instalar alguno de nuestros módulos y la función `toolboxes.updateToolbox()` para activar el módulo el entorno actual. Por ejemplo, para instalar el modulo **islas** y activar su versión _stable_ en el entorno actual usa:

```matlab
toolboxes.installToolbox('https://bitbucket.org/IslasGECI/islas');
toolboxes.updateToolbox('islas','stable');
```
