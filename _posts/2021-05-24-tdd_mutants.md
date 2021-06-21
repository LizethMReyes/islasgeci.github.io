---
layout: post
title: TDD es opcional; mutation testing es obligatorio
author: Evaristo
tags: equipo
---

1. En nuestro equipo, requerimos que el código sea resistente a mutaciones. La resistencia a
   mutaciones es una medida de la calidad de las pruebas. Las mutaciones son modificaciones al
   código de producción y mimetiza los errores típicos en la programación. Su objetivo es
   identificar debilidades en las pruebas.

1. Puedes usar _Test-driven development_ (TDD) para lograr lo anterior (o puedes usar otra
   disciplina). TDD es una técnica en la que primero escribimos las pruebas y después el código de
   producción. En nuestro equipo practicamos la versión del tío Bob, resumida en tres reglas:
   - No puedes escribir código de producción a menos que esté una prueba fallando
   - Solo puedes escribir lo necesario para hacer fallar una prueba
   - Solo estás permitido a escribir el código suficiente para hacer pasar la prueba fallando

1. El porcentaje de cobertura de las pruebas no tiene significado si las pruebas no las generamos
   mediante TDD
1. El propósito de que hagamos código que sea resistente a mutaciones es que podamos refactorizar
   sin miedo continuamente
