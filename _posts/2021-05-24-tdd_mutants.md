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

1. Puedes usar TDD para lograr lo anterior (o puedes usar otra disciplina)
1. El porcentaje de cobertura de las pruebas no tiene significado si las pruebas no las generamos
   mediante TDD
1. El propósito de que hagamos código que sea resistente a mutaciones es que podamos refactorizar
   sin miedo continuamente
