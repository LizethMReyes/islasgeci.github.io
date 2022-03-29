---
layout: post
title: Devcontainer and workdir
author: Francisco Alejandro Padilla Gomez
tags: equipo
---

Cuando tengamos errores del tipo _missing file_ es probable que nuestra carpeta de trabajo y nuestra
carpeta local no estén vinculadas. Para vincularlas tendremos que modificar el archivo
`.devcontainer/devcontainer.json`.

```
/workspaces/repositorio
```

Dentro de `.devcontainer/devcontainer.json` agregaremos:

```json
"workspaceMount": "source=${localWorkspaceFolder},target=/workdir,type=bind",

"workspaceFolder": "/workdir"
```

Con la opción `workspaceMount` le decimos al VS Code que vincule nuestro directorio local en la
carpeta workdir. Y con la opción `workspaceFolder` definimos la carpeta de trabajo.

Ahora tenemos que borrar los contenedores porque puede que vscode los vuelva a utilizar al
reconstruir el contenedor. Así que borraremos dichos contenedores desde una terminal fuera de
VS Code.

Primero veremos los procesos con

```shell
$ docker ps -all
```

La opción `-all` nos muestra todos los contenedores.

La instrucción anterior nos muestra el id del contenedor, la imagen con el que generamos el
contenedor, el comando actual y otras columnas.

Para ver solo el id de dichos procesos utilizamos 

```shell
$ docker ps --all --quiet
```

Ahora, para borrar todos, utilizaremos la siguiente función con argumento el comando anterior.

```shell
$ docker rm $(docker ps --all --quiet)
```

El subcomando `docker rm` remueve los contenedores.

Ya habiendo realizado esto, puedes volver a abrir el contenedor en VS Code y estará resuelto el
problema: nuestro directorio de trabajo será `/workdir/`
