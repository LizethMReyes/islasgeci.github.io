---
layout: post
title: "Dependencias de un Makefile"
author: Evaristo
---

Para poder correr el archivo `Makefile` es necesario tener algunos directorios agregados a la variable `Path` dentro de las _Environment Variables_ del sistema.

Para acceder a ellos se debe consultar el siguiente cuadro:
_Control Panel>All Control Panel Items>System_ y seleccionar la opción _Advanced system settings_.
Dentro de la pestaña de _Advanced_ se selecciona _Environment variables..._.

Finalmente, en _User variables for Owner_, la variable `Path` debe contener por lo menos los siguientes directorios:

- `C:\Program Files (x86)\GnuWin32\bin`
- `C:\Program Files\MiKTeX\miktex\bin\x64\`
- `C:\Users\analisis\AppData\Local\Pandoc`
- `C:\Program Files\R\R-3.2.3\bin`

Si la variable `Path` no contiene estos directorios, el archivo `Makefile` no funcionará.

**Nota**:

- Si en la variable `Path`, tanto de _User variables for Owner_ como de _System variables_ se está usando alguna dependencia relacionada con `Rtools` debe asegurarse que solo esté agregada la dependencia siguiente: `C:\Rtools\gcc-4.6.3\bin`
- Se pueden quitar las dependencias relacionadas con `GnuWin32` y `Rtools` de la variable `Path` dentro de _System variables_ ya que no son necesarias
- Debe asegurarse que la dependencia `C:\Program Files (x86)\GnuWin32\bin` esté posicionada arriba de la dependencia `C:\Rtools\gcc-4.6.3\bin`. Si no es así el sistema usará el _make_ de `Rtools`, el cual no funcionará para algunos casos
