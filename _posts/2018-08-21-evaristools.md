---
layout: post
title: "Lubricante para usar Herramientas Compartidas de MATLAB"
author: Evaristo
---

## Instalación

1. Crea el directorio `C:\evaristools\`
1. Agréga `C:\evaristools\` a la variable de entorno _PATH_ de tu sistema operativo
1. Clona con Mercurial los repositorios **misctools** y **toolboxes** desde Bitbucket (o haz _pull_ y _update_ si ya los tienes)
1. Copia al directorio `C:\evaristools\` todos los archivos `*.cmd` y `*.ps1` que se encuentra en el directorio `CMD/` de los repositorios **misctools** y **toolboxes** que acabas de clonar
1. En PowerShell, ejecuta **como administrador** el comando `Set-ExecutionPolicy Unrestricted` escogiendo la opción "_Sí a todo_".
1. En PowerShell, ejecuta `Unblock-File C:\evaristools\testMakePS.ps1`
