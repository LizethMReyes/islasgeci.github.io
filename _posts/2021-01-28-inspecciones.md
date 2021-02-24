---
layout: post
title: Las inspecciones, una revisión por pares
author: Nepo
tags: revisiones
---

## ¿Qué es una inspección?
Karl Weigers enlista algunos ejemplos de revisiones por pares en su libro "Peer Reviews in
Software". Las revisiones puedes ser acomodades dependiendo de la formalidad de la metodología. Así,
la menos formal es "Ad hoc Review" que consiste en pedirle ayuda a un colega con algún problema que
tienes. Los siguientes dos ejemplos son "_Peer Deskcheck_" y "_Pair Programing_", ambos los
utilizamos en el trabajo diario del equipo de Ciencia de Datos. "_Peer Deskcheck_" es la manera estándar de definir las
revisiones en nuestra columna de **Revisando**, una persona somete su trabajo para que otra revise
que se cumplan todos los elementos de un _checklist_. Y "_Pair Programming_" es lo que hacemos en
nuestros tomates. Los otros tres ejemplos de revisión por pares son "_Walkthrough_", "_Team Review_"
e "_Ispection_". Para Karl, la revisión más formal es la inspección.

La inspección consiste en un par de reuniones donde las y los participantes de la inspección cumplen
con diferentes roles. El objetivo principal de la inspección deberá ser encontrar defectos graves en
nuestro trabajo.

## ¿Quiénes son los participantes y cuáles sus roles en una reunión de inspección?
- Autor o autora. No tiene permitido moderar, leer o contar, ya que el está muy cerca al trabajo
  como para ser objetivo. Además, esto podrá ayudarle a prestar más atención a los comentarios que
  los otros inspectores hagan. 
- Lector o lectora. Será quien presenta pedazos de código. La idea es probar la claridad del código.
  La interpretación a veces revela ambigüedad, suposiciones escondidas, documentación inadecuada o
  problemas de estilo que entorpecen la comunicación.
- Moderador o moderadora. Deberá de mandar las noticias el aviso de la reunión con los eventos, las
  fechas y los tiempos. Si el autor y el moderador asignan alguna responsabilidad para los
  inspectores, el moderador deberá de comunicar esa información cuando distribuya el paquete de la
  inspección.
- Las y los inspectores. Al resto de los participantes los llamamos inspectores. Ellos revisarán el
  código desde distintas perspectivas en la etapa de preparación y anotarán sus observaciones. La
  primera intervención que hará cada inspector en la reunión de inspección será decir algo positivo
  del producto en revisión. 

## ¿Cuáles son las etapas de una inspección?
- La revisión general. Esta es un reunión la cual dirige el o la autora. El fin es juzgar si las o los
  inspectores tienen la información necesaria para entender el código. Así si en la revisión ellos
  detectan un _bug_ deberán esperan hasta la reunión de inspección para señalarlo. A más tardar, al
  final de la revisión los inspectores deberán tener el paquete de inspección y los objetivos del 
  autor.

- La preparación. El verdadero trabajo de encontrar problemas ocurrirá aquí. Los inspectores
  examinan el código en busca de posibles errores, usando los _check list_ de defectos. Escriben las
  dudas y los problemas para presentarlos en la reunión de inspección. A los problemas encontrados
  debemos agregarles prioridad, estatus y tipo.

- La reunión de inspección. No utilicen más de un minuto decidiendo cómo resolver un problema, ya
  que el tiempo que utilices en el problema es tiempo que no utilizarán en encontrar más problemas.
  La descripción que haga el lector durante la reunión deberá ser como la de un o una profesora dirigiéndose a sus estudiantes. La tiempo estimado de la reunión de inspección es de 200
  líneas de código por hora. El tiempo de preparación debería de ser similar al tiempo que tomará la
  inspección, es decir 200 líneas por hora.

- El seguimiento. En esta parte el moderador u otra persona asignada se reúne con el autor para
  verificar que ya resolvimos todos los problemas. 

- El análisis causal. Aquí analizaremos los defectos y evaluaremos que tan bien pudimos detectar los
  errores. Si ayudó a que el equipo mejorara la calidad en el desarrollo y en la revisión de código.
  Esta parte es para poder obtener el mejor beneficio a partir de los datos de la inspección (CEP).

## ¿Cuáles son las herramientas para la inspección?
- [Patrones en pruebas
  unitarias](https://medium.com/swlh/3-patterns-for-reducing-duplication-in-your-unit-tests-7d693c6bfbd2)
- [Código que apesta (_Clean
  code_)](https://learning.oreilly.com/library/view/clean-code-a/9780136083238/chapter17.html#ch17)
- [Principios SOLID](http://butunclebob.com/ArticleS.UncleBob.PrinciplesOfOod?)
- [Guías de estolo](https://islasgeci.github.io/guia_de_estilo/)
- [_Checklists_ de la columna **Revisando**](https://github.com/IslasGECI/manual#checklists-del-kanban)
