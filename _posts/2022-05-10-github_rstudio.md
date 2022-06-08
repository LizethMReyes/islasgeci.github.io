---
layout: post
title: "Cómo utilizar Git y GitHub desde Rstudio"
author: Lizeth Reyes
tags: equipo
---

## Docker 🔨 📦️ 🚚
### Introducción
Docker es una aplicación de software para crear, empaquetar y distribuir aplicaciones de forma 
más rápida en contenedores dentro de su propio entorno de ejecución. 
Un punto importante a destacar, permite empaquetar una aplicación con todas sus dependencias 
para ser ejecutada en cualquier plataforma. 
Durante este curso propedéutico es importante aprender sobre el uso de esta herramienta para poder
colaborar con el equipo de Data Analysis GECI. 
### Objetivo

- **_Aprender a usar Docker._**


### Antecedentes
Anteriormente se había hecho la instalación de Docker en Mac con la siguiente línea 
`brew cask install docker`. Después, fue necesario abrir la app desde la lista de 
aplicaciones haciendo clic en el botón derecho en abrir. Así es como finalizo dicha instalación. 
Revisamos que Docker estuviera instalado con el comando `docker --version`. En donde se nos despliega 
la siguiente información: **Docker version 20.10.14, build a224086**. Lo que indica que Docker se 
instaló de forma correcta. 

<img width="745" alt="Captura de Pantalla 2022-05-05 a la(s) 1 14 16" src="https://user-images.githubusercontent.com/87685163/166871596-3489f0f8-2b9b-4842-a2a1-09ee95ed19b9.png">


## Git en RStudio 📸 🗃️
### Introducción
Git es un sistema de control de versiones. Realiza seguimiento de los cambios de código y 
comparte esos cambios con otros, ya que permite que estos cambios se fusionen. Existen diferentes 
formas de usar git. Desde la línea de comandos, utilizar RStudio o utilizar una app independiente 
(GitKraken). Para esta primera etapa nos centraremos en el uso de Git en RStudio. 
RStudio es un entorno de desarrollo integrado para el lenguaje de programación de R, 
dedicado a la computación estadística y gráficos. Incluye una consola, herramientas para 
el trazado, depuración y gestión del espacio de trabajo, la terminal, y la herramienta para trabajar 
con Git. 

### Objetivo

- **_Aprender a usar Git en RStudio._** 

### Desarrollo
Para comenzar, fue necesario crear un **New Project >> Version Control desde RStudio.**

<img width="396" alt="Captura de Pantalla 2022-05-05 a la(s) 1 43 10" src="https://user-images.githubusercontent.com/87685163/166874527-297b24d6-40e2-485f-b3da-339d3e479090.png">

RStudio nos muestra los diferentes opciones de proyectos que podemos crear. Elegimos la 
opción **Version Control.** 

<img width="543" alt="Captura de Pantalla 2022-05-05 a la(s) 1 43 21" src="https://user-images.githubusercontent.com/87685163/166874661-b3e9fdff-1dc3-4578-8293-d9c704fce387.png">

Ahora tenemos que elegir nuestra Control de Version, que en este caso sería **Git**. 

<img width="548" alt="Captura de Pantalla 2022-05-05 a la(s) 1 43 30" src="https://user-images.githubusercontent.com/87685163/166874829-d429a2a5-c934-4539-9b6f-35cc35b4bc60.png">

Después configuramos el proyecto agregando el URL del repositorio. Para obtener este URL 
tendremos que copiar el CODE de nuestro repositorio que vamos a clonar.  

<img width="384" alt="Captura de Pantalla 2022-05-05 a la(s) 1 53 04" src="https://user-images.githubusercontent.com/87685163/166875585-52220988-a643-418e-bdd7-159ff056eacc.png">

Asignando un nombre de proyecto, y agregando una carpeta de destino. 

<img width="539" alt="Captura de Pantalla 2022-05-05 a la(s) 1 43 40" src="https://user-images.githubusercontent.com/87685163/166875662-1f986856-1a55-425b-91cc-d852cf036477.png">

Una vez que se clono nuestro repositorio notaremos que RStudio agrego algunas 
características a el entorno de trabajo, por lo que, ahora es posible entrar al 
panel de cambios de tres formas posibles, como se muestra en la imagen. 

<img width="1280" alt="Captura de Pantalla 2022-05-05 a la(s) 2 11 29" src="https://user-images.githubusercontent.com/87685163/166877840-060484d3-5530-4142-806a-57fde27f2457.png">

Si abrimos el panel de cambios notaremos que hay tres archivos con un signo de interrogación. 
Esto significa que estos archivos no tienen seguimiento dentro de nuestro repositorio. 
Tendremos que agregar estos archivos a nuestro repositorio. Para esto vamos a consignar 
los cambios. El **_mensaje de consignación_** deberá tener un **_título_** y una **_descripción_**. 
El titulo será escrito de forma **_imperativa_** y estará escrito en **_inglés_**, mientras que 
la descripción explicará el **_porqué se realizaron esos cambios_**. 

<img width="996" alt="Captura de Pantalla 2022-05-05 a la(s) 2 30 35" src="https://user-images.githubusercontent.com/87685163/166879559-12f26800-0fb0-4cf1-a89e-80ed09104b49.png">

Una vez que seleccionamos estos archivos su Status cambia a una A de color verde, esto significa 
que serán agregados. Sin embargo, aún falta pasos para poder enviarlos a nuestro repositorio en 
GitHub y poderlo compartir nuestros archivos. 

<img width="997" alt="Captura de Pantalla 2022-05-05 a la(s) 2 28 50" src="https://user-images.githubusercontent.com/87685163/166879402-524eca23-8ae5-47c0-ad05-6c9f46ab8230.png">

Ahora modificaremos uno de los archivos para diferenciar cuando agregamos o eliminamos líneas de 
código. Notaremos que al agregar una línea de código esta se marca en color verde, en cambio, 
si eliminamos está se marca en color rojo. 

<img width="999" alt="Captura de Pantalla 2022-05-05 a la(s) 2 34 17" src="https://user-images.githubusercontent.com/87685163/166880363-cd7db233-b204-4405-b21c-600fa7d972f8.png">
 
Haremos nuestra primera consignación y RStudio nos dará un aviso de lo que esta pasando. El mensaje 
significa que nuestro repositorio tiene cambios que aún no los tiene el repositorio remoto. 

<img width="592" alt="Captura de Pantalla 2022-05-05 a la(s) 2 34 29" src="https://user-images.githubusercontent.com/87685163/166880808-31194035-916b-407e-b5b9-3937591ba8a5.png">



