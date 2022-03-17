---
layout: post
title: Devcontainer and workdir
author: Francisco Alejandro Padilla Gomez
tags: equipo
---
Cuando se tienen errores del tipo un cierto archivo no se encuentra en
```bash
/workspaces/sub-folder
```
Entonces dentro de **.devcontainer/devcontainer.json** se tiene que agregar:
```bash
"workspaceMount": "source=${localWorkspaceFolder},target=/workdir,type=bind",

"workspaceFolder": "/workdir"
```
Ahora, se tienen que borrar los contenedores porque puede que vscode los vuelva a utilizar al
reconstruir el contenedor, así que borraremos dichos contenedores desde una terminal fuera de
vscode.

Primero se ven los procesos con
```bash
$ docker ps -a
```
La opción -a nos muestra todos los contenedores.

La instrucción anterior nos muestra el id del contenedor, la imagen con el que se generó el
contenedor, el comando actual y otras columnas.

Para ver solo el id de dichos procesos utilizamos 
```bash
$ docker ps -aq
```
Ahora, para borrar todos, podemos utilizar la siguiente función con argumento el comando anterior.
```bash
$ docker rm $(docker ps -aq)
```
El comando rm remueve los contenedores.

Ya habiendo realizado esto, puedes volcer a abrir el contenedor en vscode y tendría que ya estar
resuelto el problema, estando automaticamente en **/workdir**