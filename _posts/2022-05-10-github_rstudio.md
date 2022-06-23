---
layout: post
title: "Cómo utilizar Git y GitHub desde Rstudio"
author: Lizeth Reyes
tags: equipo
---

## Docker 🔨 📦️ 🚚
### Introducción
Docker es una aplicación que permite crear, empaquetar y distribuir aplicaciones en contenedores 
de forma rápida.
Nos permite empaquetar una aplicación con todas sus dependencias para ser ejecutada en cualquier
plataforma dentro de un entorno específico. 
En el equipo de Ciencia de Datos GECI usamos esta herramienta para trabajar. Es una herramienta 
esencial que debemos aprender a utilizar. 

### Objetivo

- **_Aprender a usar Docker._**


### Antecedentes
Anteriormente, instalamos Docker en Mac con la siguiente línea en la terminal:
```
$ brew cask install docker
```
En MacOs es necesario abrir la app desde la lista de aplicaciones haciendo clic 
en el botón derecho en la opción _abrir_. Esto solo se hace una vez para finalizar 
la instalación y que reconozca la aplicación en la terminal. 

Revisamos la instalación de Docker con el siguiente comando: 
```
$ docker --version
```
Se nos despliega la siguiente información: 
```
Docker version 20.10.14, build a224086
``` 
Indicando que Docker se instaló de forma correcta. 

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
Antes de comenzar a crear la llave primero revisaremos que no hay ninguna llave generada 
conectada a nuestro repositorio anteriormente. Para ello, vamos a correr el siguiente comando 
como se muestra la imagen. Como se muestra en la imagen no se despliega ninguna lista de llaves 
generadas.

<img width="1055" alt="001" src="https://user-images.githubusercontent.com/87685163/171294259-9afe7bbd-227e-4531-b98e-871f9aaa7c24.png">

Después, vamos a crear nuestra llave ejecutando el siguiente comando `$ssh -keygen`. En seguida, 
se indica la carpeta en donde se almacenará la llave y nos pedirá una contraseña. En el caso de 
esta contraseña se puede asignar una si se prefiere o simplemente dejarlo en blanco con la tecla enter.

<img width="894" alt="007" src="https://user-images.githubusercontent.com/87685163/172236182-aae9ba04-341d-46a0-86ca-0ec1df896030.png">

Al finalizar, se mostrará lo siguiente. 

<img width="862" alt="009" src="https://user-images.githubusercontent.com/87685163/172237387-e8013d08-b950-49f8-a3f3-f138240356d3.png">

Ahora vamos a acceder a nuestra llave para copiarla y asociarla a GitHub. Ejecutaremos el 
siguiente comando `$cat ~/.ssh/id_rsa.pub`. Copiamos desde **'ssh...** hasta la terminación
**.local'**

<img width="860" alt="011" src="https://user-images.githubusercontent.com/87685163/172238142-22c0d7d0-27cc-4815-a5d7-e46afd325169.png">

Una vez terminado esta parte en la terminal, nos dirigiremos a nuestro GitHub, una vez ahí, 
buscaremos Settings.

<img width="717" alt="003" src="https://user-images.githubusercontent.com/87685163/172238565-2af9e5d1-3079-41e5-88c5-822dc3dbeb1b.png">

En **Settings** encontraremos múltiples opciones para configurar, lo que a nosotros nos 
interesa es el apartado de **Access**, específicamente en **SSH and GPG Keys**.

<img width="663" alt="004" src="https://user-images.githubusercontent.com/87685163/172239163-fc6009b0-98da-4411-a6f7-d3be07bc3081.png">

Damos click en la opción de **New SSH Key**.

<img width="991" alt="005" src="https://user-images.githubusercontent.com/87685163/172239680-4bf91339-f8b7-4fde-aef8-c3abf40193dd.png">

Agregamos in título, pegamos la llave que hemos copiado de la 
terminal y finalmente la agregamos. 

<img width="983" alt="008" src="https://user-images.githubusercontent.com/87685163/172239912-7d689b4b-a433-4762-84dc-db94ecee5bac.png">

A continuación, buscaremos el repositorio que vamos a clonar. 

<img width="961" alt="002" src="https://user-images.githubusercontent.com/87685163/172240353-eb3604cd-3db7-4068-8353-9b5072f77da3.png">

Daremos click en la opción Code que se marca en verde, y después elegimos la 
opción SSH y copiamos la dirección con el botón que se encuentra a lado.

<img width="986" alt="010" src="https://user-images.githubusercontent.com/87685163/172240971-afc6d749-f818-4fc6-992f-0aeea0604b4e.png">

Por últimos, abriremos la aplicación de **RStudio,** aquí es importante poner atención
a la configuración por default y ver cómo este cambia cuando hemos asignado un proyecto,
por ahora, nos daremos cuenta que no hay ningún proyecto asociado. En el apartado **File** 
elegiremos la opción **New Project**.Se desplegará una ventana como la siguiente y seleccionamos 
la opción **Version Control**  e inmediatamente **Git**.

<img width="1280" alt="015" src="https://user-images.githubusercontent.com/87685163/172242418-fc0bcbd9-34b8-4d96-9982-21b74686d0e2.png">

<img width="1002" alt="014" src="https://user-images.githubusercontent.com/87685163/172242028-e02a6b78-1288-4105-8217-9ccb295f4e2f.png">

Pegamos la dirección que habíamos copiado de GitHub. Después de pegar la dirección el nombre y 
la carpeta de origen se asignan por default, podemos cambiar esto sí lo preferimos. 
Finalmente, daremos click en **Create Project**.

<img width="1280" alt="012" src="https://user-images.githubusercontent.com/87685163/172243046-2cc8a26d-cfb4-4d98-84f0-cb9d127b3201.png">

Por último, veremos que nuestro proyecto ya estará listo para trabajar con Git, debido a que 
se encuentran el repositorio clonado y diferente botones nos permiten hacer PULL, PUSH y COMMIT, 
entre otras cosas.

<img width="996" alt="019" src="https://user-images.githubusercontent.com/87685163/172243832-0228c9c8-cda6-44f2-b780-27d5ce413152.png">

<img width="992" alt="018" src="https://user-images.githubusercontent.com/87685163/172243851-d4b91e1e-9890-4606-8271-549b8ebd4844.png">

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



