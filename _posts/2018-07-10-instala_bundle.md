---
layout: post
title: "Funciones `toolboxes.installBundle` y `toolboxes.updateBundle`"
author: Evaristo
---

Vamos a crear dos entornos virtuales en MATALB: uno para la versión estable más nueva del Bundle y otra para la versión 0.3.0.

Al entorno que contendrá la versión estable más nueva le llamamos **stable**.

```matlab
>> toolboxes.setEnvironment('stable')
(stable) >> toolboxes.installBundle()
(stable) >> toolboxes.updateBundle('stable')
```

La función `installBundle()` descaragará los módulos desde Bitbucket pero no los agregará a ningún entorno virtual. La función `updateBundle()` agregará la versión estable más nueva de los módulos del Bundle al entorno actual.

Al entorno que contendrá la versión 0.3.0 le llamamos **v0.3.0**.

```matlab
(stable) >> toolboxes.setEnvironment('v0.3.0')
(v0.3.0) >> toolboxes.updateBundle('v0.3.0')
```

Ya no es necesario descargar los módulos nuevamente. La función `updateBundle()` agregará la versión 0.3.0 de los módulos del Bundle al entorno actual.

Actualmente, el Bundle incluye: _datatools_, _dist-dens_, _geoambiental_, _islas_, _mapeo_, _toolboxes_ y _ver_.

Cuaquier otro módulo que no se encuentre en esta lista se deberá instalar de forma individual con `installToolbox()` y  `updateToolbox()`. La función `installToolbox()` nos permite instalar un módulo desde Internet o desde un directorio local. La función `updateToolbox()` nos permite agregar a nuestro entorno virtual una versión específica del módulo.
