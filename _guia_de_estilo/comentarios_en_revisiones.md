---
layout: page
title: Cómo escribir comentarios en una revisión
tagline: Guía de estilo
description: Cómo logramos revisiones amables y efectivas
---

## Cómo escribir comentarios en una revisión

**Resumen:**

- Se amable
- Explica por qué
- Usa lenguaje simple y claro
- Señala con precisión
- Explica qué es lo que entendiste
- Provee alternativas de solución
- Provee referencias
- Solicita cambios, no explicaciones

---

## Se amable

Es importante ser amable, cortés y tratar con respeto a quien solicitó la revisión. Haz tus
comentarios sobre el **código** y nunca sobre la **persona**.

Mal ejemplo:

> "¿Por qué **usaste** técnicas bayesianas aquí?"

Buen ejemplo:

> "Las técnicas bayesianas aquí están agregando complejidad al análisis sin beneficios obvios. Dadas
> las características de la base de datos y del resultado esperado, _bootstraping_ nos provee de la
> precisión requerida sin incrementar la complejidad del analisis. Por favor podrías calcular el
> intervalo de confianza mediante _bootstraping_ (en lugar de usar técnicas bayesianas)?"

Solicita los cambios _por favor_ y redacta tus comentarios como si estuvieras corrigiendo a alguien
venerable. Recuerda seguir nuesto [Código de
conducta](https://islasgeci.github.io/2019/11/06/code-of-conduct).

## Explica por qué

El **por qué** siempre es más importante que el _qué_. ¿Por qué estás señalando esa línea? El _Buen
ejemplo_ de arriba ayuda a entender _por qué_ estás haciendo tu comentario. Por favor explica tu
intención, señala el principio o la buena práctica que estás siguiendo, o describe cómo tu
sugerencia mejora la calidad del repositorio o reduce la deuda técnica.

## Usa lenguaje claro y simple

Esfuérzate en comunicarte con asertividad. Usa lenguaje amable, claro, inclusivo, preciso y simple.

## Señala con precisión

Sólo señala las palabras que requieren atención. No "subrayes" de más o donde no está el asunto que
quieres señalar. No digas cosas como: "por ahí hay algo raro". Di exactamente dónde está lo raro y
por qué te parece raro.

## Explica qué es lo que entendiste

Para verificar que estás interpretando correctamente la intención de quien solicita la revisión, por
favor explica qué es lo que entendiste. ¿Cuál crees que es la intención en la línea que estás
señalando?

## Provee alternativas de solución

En general, es responsabilidad de quien solicita la revisión arreglar el _código en revisión_
(**PR** por _pull request_), no del revisor o revisora.

Sin embargo, esto no significa que porque eres el o la revisora, no debas ayudar. Por favor señala
los problemas y proporciona orientación sobre su solución. Ayuda a quien solicita la revisión a
solucionar el problema ofreciendo una alternativa; si es posible, ofrece más de una opción. Deja que
quien solicita la revisión tome la decisión sobre cómo resolver el problema para facilitar su
aprendizaje y las futuras revisiones. Tal vez quien solicita la revisión encuentre una mejor
solución que la que tú propones, porque su familiaridad con el código es mayor que la tuya.

A veces, lo más útil son las instrucciones precisas, las sugerencias de cambios concretos o incluso
las contribuciones con código mediante consignaciones en el mismo PR. El objetivo principal de la
revisión de código es obtener el mejor código posible. El objetivo secundario es mejorar
gradualmente las habilidades de quien solicita la revisión.

## Provee referencias

Quien solicita la revisión te agradecerá si señalas con vínculos (ligas) las referencias en las que
basaste tu revisión. Trata de usar las mismas referencias que ya hemos usado en el pasado.
Idealmente muestra ejemplos de nuestro propio código

## Solicita cambios, no explicaciones

Si le pides a quien solicita la revisión que te explique código que no entiendes, eso generalmente
debería resultar en que **reescriba el código más claramente**. Ocasionalmente, agregar un
comentario en el código también es una respuesta apropiada, siempre y cuando el comentario no evite
simplificar el código que sea demasiado complejo.

Las explicaciones escritas sólo como comentarios del PR **no** son útiles para futuras lectoras o
lectores del código. Son aceptables sólo en algunas circunstancias, como cuando estás revisando algo
en lo que no estás muy familiarizada o familiarizado y quien solicita la revisión explica algo que
las y los lectores usuales del código seguramente ya saben.

---

**Referencias:**

- [How to write code review comments](https://google.github.io/eng-practices/review/reviewer/comments.html). Google's Engineering Practices documentation.
