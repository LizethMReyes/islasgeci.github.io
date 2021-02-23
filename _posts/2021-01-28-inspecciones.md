---
layout: post
title: Las inspecciones, una revisión por pares
author: Nepo
tags: revisiones
---

## ¿Qué es una inspección?

## ¿Quiénes son los participantes y cuáles sus roles?
- El autor no está permitido ser moderador, lector o contador, ya que el está muy cerca al trabajo 
como para ser objetivo. Además, esto podrá ayudarle a prestar más atención a los comentarios que los
otros inspectores hagan. 
- El lector será quien presenta pedazos de código. La idea es probar la claridad del código. La
  interpretación a veces revela ambigüedad, suposiciones escondidas, documentación inadecuada o
  problemas de estilo que entorpecen la comunicación.
- El moderador debe de mandar las noticias el aviso de la reunión con los eventos, las fechas, los
tiempos. Si el autor y el moderador asignan alguna respnsabilidad para los inspectores, el moderador
deberá de comunicar esa información cuando distribuya el paquete de la inspección.

## ¿Cuáles son las etapas de una inspección?
- La revisión general. Esta es un reunión la cual dirige el autor. El fin es juzgar si los
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
  La descripción que haga el lector durante la reunión deberá ser como la de una profesora o
  prefesor dirigiéndose a sus estudiantes.

La tiempo estimado de la reunión de inspección es de 200 líneas de código por hora. El tiempo de
preparación debería de ser similar al tiempo que tomará la inspección, es decir 200 líneas por hora.

## ¿Cuáles son las herramientas para la inspección?
- [Patrones en pruebas
  unitarias](https://medium.com/swlh/3-patterns-for-reducing-duplication-in-your-unit-tests-7d693c6bfbd2)
- [Código que apesta (_Clean
  code_)](https://learning.oreilly.com/library/view/clean-code-a/9780136083238/chapter17.html#ch17)
- [Principios SOLID](http://butunclebob.com/ArticleS.UncleBob.PrinciplesOfOod?)
