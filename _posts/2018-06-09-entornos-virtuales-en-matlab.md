---
layout: post
title: "Entornos virtuales en MATLAB"
author: Evaristo
---

Agregué algunas funciones al módulo *toolboxes* de MATLAB que nos permite trabajar con entornos virtuales como en Python.

Supongamos que en un entorno virtual actualmente está corriendo el programa `foo.m`. Este programa depende de alguno de nuestros módulos en el cual existe una actualización disponible. Seguramente la actualización romperá el programa `foo.m` así que preferimos no actualizar el módulo. Pero en otro programa `bar.m` necesitamos usar la actualización. Entonces creamos un nuevo entorno virtual y ahí actualizamos el módulo y usamos la actualización en el programa `bar.m`. Cuando terminemos nos regresamos al primer entorno virtual y ahí seguirá corriendo el primer programa `foo.m`.

En cada entorno virtual podemos tener instalada una versión distinta del mismo módulo. (O podemos tener la misma versión si nos da la gana pero en ese caso no necesitamos usar entornos virtuales.)

Siempre estamos trabajando en algún entorno virtual (aunque no lo sepamos). Actualmente todos estamos trabajando en nuestro entorno virtual por defecto **library**.

La función `getEnvironmentName()` nos regresa el nombre del entorno virtual activo.

```matlab
>> toolboxes.getEnvironmentName()

ans =

    'library'
```

Nos cambiamos a un nuevo entorno virtual para instalar una versión distinta del módulo _islas_.

```matlab
>> toolboxes.setEnvironment('evaringaderas')
(evaringaderas)>> toolboxes.getEnvironmentName()

ans =

    'evaringaderas'
```

La función `setEnvironment()` crea y activa el nuevo entorno. Ningún módulo estará instalado en un nuevo entorno virtual (excepto por _toolboxes_).

Instalamos el módulo _islas_.

```matlab
(evaringaderas)>> toolboxes.installToolbox('C:\...\islas')
36 files updated, 0 files merged, 0 files removed, 0 files unresolved
ÉXITO: Se actualizó islas
```

Verificamos cuál versión del módulo _islas_ que instalamos en el entorno virtual **evaringaderas** (actualmente activo).

```matlab
(evaringaderas)>> toolboxes.getVersion('islas')

ans =

    'f16fed82bb02 tip'
```

La versión instalada en el entorno **evaringaderas** es _f16fed82bb02 tip_ (lo que sea que eso signifique).

Ahora creamos y activamos un nuevo entorno llamado **estable** para instalar una versión distinta del módulo _islas_.

```matlab
(evaringaderas)>> toolboxes.setEnvironment('estable');
(estable)>> toolboxes.getEnvironmentName()

ans =

    'estable'
```

¿Cuál es la versión del módulo _islas_ instalada en el entorno actual?

```matlab
(estable)>> toolboxes.getVersion('islas')
Warning: No encontré C:\...\toolboxes.ver

ans =

  0×0 empty char array
```

La función `getVersion()` nos devuelve una cadena vacía ya que no hemos instalado el módulo _islas_ en el entorno **estable** actualmente activo.

```matlab
(estable)>> toolboxes.installToolbox('C:\...\islas')
36 files updated, 0 files merged, 0 files removed, 0 files unresolved
ÉXITO: Se actualizó islas
```

La función `installToolbox()` siempre instala la versión más nueva de un módulo. Pero en este entorno **estable** no queremos la versión más nueva, queremos una versión anterior. Debemos usar la función `updateToolbox()` para actualizar el módulo _islas_ a una versión distinta. Desafotunadamente, `updateToolbox()` depende del modulo _ver_, así que instalaremos ese módulo antes de usar `updateToolbox()`.

```matlab
(estable)>> toolboxes.updateToolbox('C:\...\ver')
7 files updated, 0 files merged, 0 files removed, 0 files unresolved
ÉXITO: Se actualizó ver
```

Ahora sí podemos usar `updateToobox()`. El primer argumento es la fuente (lo cual es reduntante, con el puro nombre debería ser suficiente; lo corregiré eventualmente) y el segundo es la versión (clase `ver.Version`; después les platico sobre eso) a la que se desea actualizar.

```matlab
(estable)>> toolboxes.updateToolbox('C:\...\islas',ver.Version("0.2.0"))
3 files updated, 0 files merged, 11 files removed, 0 files unresolved
parent: 40:5e28cde00680 v0.2.0
Versión 0.2.0
branch: stable
Removiendo el contenido de C:\...\estable\islas
ÉXITO: Se actualizó islas
```

Ahora vemos cuál versión del módulo _islas_ está instalada en el entorno **estable**

```matlab
(estable)>> toolboxes.getVersion('islas')

ans =

    '5e28cde00680 (stable) v0.2.0'
```

Verificamos que aún nos encontramos en el entorno **estable**.

```matlab
(estable)>> toolboxes.getEnvironmentName()

ans =

    'estable'
```

Veamos cuál versión está instalada en el entorno **evaringaderas**
```matlab
(estable)>> toolboxes.setEnvironment('evaringaderas')
(evaringaderas)>> toolboxes.getVersion('islas')

ans =

    'f16fed82bb02 tip'
```

Cuando necesite trabajar con la versión más nueva (_tip_) del módulo _islas_ me puedo cambiar al entorno **evaringaderas** y cuando necesite la versión _0.2.0_ me puedo cambiar al entorno **estable**.
