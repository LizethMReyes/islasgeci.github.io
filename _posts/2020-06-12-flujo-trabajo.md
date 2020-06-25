---
layout: post
title: Flujo de trabajo
author: Maritza y Fernando
tags: equipo
---

Vamos a platicarles sobre el flujo de trabajo de la dirección de Ciencia de Datos, cómo utilizamos
los datos que se colectan en campo para producir información de calidad y para realizar análisis que
responden preguntas de interés, de caracter científico y ecológico.

Podemos resumir nuestro flujo de trabajo en 5 pasos: Los primeros dos pasos son el procesamiento de
los datos que consiste en la obtención, curación y limpieza de datos, después en la parte de
análisis está el paso 3 y 4, que son la estadística descriptiva e inferencial respectivamente y
finalmente el reporte.

### Obtención de datos

Cada organización, institución o empresa genera una gran cantidad de datos independientemente del
giro que esta desarrolle. Particularmente, nuestra organización GECI, es una asociación civil que ha
participado en diferentes proyectos con la finalidad de la recuperación de sistemas insulares,
realizando diversas actividades y monitoreos de los cuales se van tomando registros.

Algunos de estos proyectos han sido por ejemplo la erradicación de especies invasoras o la respuesta
rápida ante éstas. Mientras que algunos monitoreos que se han realizado han sido por ejemplo la
morfometría y anillamiento de aves, monitoreo de madrigueras ya sean naturales o artificiales, o
esfuerzos de trampeo solo por mencionar algunos ejemplos.

Cada tabla que obtenemos de cada monitoreo, ya sea de meses o años o más, tiene el potencial de
convertirse en valiosa información. ¿Cuál es la problemática con las bases de datos? La primera es
qué con cada uno de los proyectos obtenemos al menos una base de datos, que de no tener un manejo
adecuando nos llevará a un almacenamiento masivo de datos, sin tener la oportunidad de explotar la
información contenida en estas. Estas bases de datos contienen información significativa y son el
recurso fundamental para los análisis. Ahora, si todos estos datos se recopilan en tablas o archivos
separados, que generalmente no se comunican entre sí, tenemos otro problema. Ya que no existe un
medio en al cual todas las personas tengan acceso y puedan consultar estas bases de datos. 

Uno más de estos problemas, son la información no documentada. Esto quiere decir que solo la persona
que recopiló la información conoce la tabla. Un ejemplo podría ser una base de datos con registros
de morfometría de aves, donde no están documentadas las unidades (cm o in) en las que se tomaron las
medidas. Por lo que alguien que consulte esta tabla podría verse en problemas a la hora de procesar
la información. 

Acceder a todos estos datos y la integración de estos es una tarea importante, especialmente si lo
que queremos es poder tomar decisiones basadas en los análisis de los datos generados.

### Curación de datos

En Ciencia de Datos hemos adoptado metodológias que se utilizan en el desarrollo de software para
automatizar los procesos de curación de datos y análisis. Una de estas herramientas es la curación
de datos y la automatización de este proceso.

Si las fuentes de datos son internas o de terceros externos, los datos eventualmente contendrán
errores. Los errores de datos pueden (obstruir/bloquear) el flujo de datos. Los errores también
pueden ser sutiles, como registros duplicados o campos individuales que contienen datos erróneos.
Los errores de datos pueden ser difíciles de rastrear y resolver rápidamente.

La integración de datos, la limpieza, la transformación, el aseguramiento de la calidad y la
implementación de nuevos análisis deben realizarse sin problemas día tras día.

Pueden haberse automatizado una parte de estas tareas, pero en muchas ocasiones se realizan
numerosos procesos manuales de forma regular. Estos procedimientos de memoria son propensos a
errores, requieren mucho tiempo y son tediosos.

### Estadística descriptiva

La estadística descriptiva aplicada a un conjunto de datos, es lo que comunmente conocemos como análisis
exploratorio de datos. En resumen, en este análisis utilizamos números, tablas y gráficas para describir
la información y sacar conclusiones sobre la muestra de datos. 

Esto también nos ayuda a saber que tipos de análisis cuantitativos son viables para implementar en el siguiente
paso,  cuales metodologías son viables para el conjuto de datos dada la incógnita que se pretende
resolver. Por ejemplo, no puedes usar métodos de machine learning con pocos datos, simplemente no
funcionaría.

### Estadística inferencial

En este escenario realizamos análisis y ajuste de modelos estadísticos. Aquí pretendemos extraer
concluciones globales para toda la población, a partir de un una muestra de datos.

Es crucial contar con una muestra representativa y sin sesgos de la población para
obtener mayor confiabilidad. Por definición, podemos rechazar una hipótesis, pero nunca
podemos probarla. Lo único que podemos hacer es rechazar la hipótesis nula con cierta
significancia estadística, o como se acostumbra, con cierto p-valor .

El nivel de significación de una prueba estadística es un concepto estadístico asociado a
la verificación de una hipótesis. El p-valor es una probabilidad condicional, la probabilidad de obtener 
las observaciones si la hipótesis nula es verdadera.

Por ejemplo, digamos que queremos probar que la población de albatros de laysan en Isla Guadalupe (IG) está en
crecimiento. Para esto, hacemos monitoreos de conteo de nidos y así obtener una muestra de la
población de albatros en IG anualmente. Como todos sabemos, por las características de esta colonia
las muestras son altamente representativas de la población, los conteos son prácticamente exactos. 
Incluso si en por algúna razón no contases algunos individuo el nivel de significancia 
sería muy alto. Pero, ahora por ejemplo, esta misma muestra de datos, ¿es representativa para 
decir que la población de albatros de laysan del mundo entero está en aumento?. Habiendo en IG solo cerca
del 1% de la población mundial de albatros, no es posible obtener resultados significativos
con la muestra nidos de albatros en IG.

### Reporte

Finalmente el reporte tiene como objetivo comunicar de la forma más clara y precisa posible, los
resultados obtenidos del análisis cuantitativo. Con todas sus partes, un resumen, introducción, la
metodología, resultados y algunas concluciones, apoyándonos de herramientas visuales como gráficas y
tablas. Estos reportes siempre son revisados por pares. 

Para reproducir o generar un reporte, repetimos de manera automátizada cada uno de los análisis y desplegamos
los resultados en el archivo final de salida. Esto nos ayuda a que cuando haya actualización de datos, 
los resultados se incorporen al reporte de manera automatizada.

Todo este flujo de trabajo, lo hacemos de manera reproducible. En principio cualquier compañero de GECI solo
necesita tener instaladas dos herramientas en su computadora, __git__ y __docker__. Esto es muy útil, por
ejemplo en estos días durante situación actual con la pandemia. Yo por ejemplo he estado trabajando
en mi computadora personal. Y no tuve que copiar NADA de la computadora de oficina a la mia. Todo
está en plataformas en línea (nube) y con instalar estas dos herramientas en mi computadora, puedo
reproducir todos los análisis que hemos hecho en el último año.

El proceso de la automatización en la ciencia de datos es algo novedoso. No es posible automatizar
por completo el proceso, la intervención humana es necesario como en la mayoría de las ciencias. Sin
embargo es diferente automatizar todo el proces, a automatizar las herramientas utilizadas en el
proceso. A largo plazo esta metodología nos proporciona mayor velocidad de respuesta en la
generación de nuevos resultados.


