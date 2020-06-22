---
layout: page
title: Estándares en las revisiones
tagline: Guía de estilo
description: Cómo logramos revisiones amables y efectivas
---

## Cómo escribir comentarios en una revisión

**Resumen:**

- Se amable
- Explica por qué
- Usa lenguaje simple y claro
- Se específico
- Explica qué es lo que entendiste
- Provee alternativas de solución
- Provee referencias
- Prefiere cambios sobre explicaciones

---

## Se amable

Es importante ser amable, cortés y respetuoso con el analista que solicitó la revisión. Haz tus
comentarios sobre el **código** y nunca sobre el **analista**.

Mal ejemplo:

> "¿Por qué **usaste** técnicas bayesianas aquí?

Buen ejemplo:

> "Las técnicas bayesianas aquí están agregando complejidad al análisis sin beneficios obvios. Dadas
> las características de la base de datos y del resultado esperado, _bootstraping_ nos provee de la
> precisión requerida sin incrementar la complejidad del analisis. Por favor podrías calcular el
> intervalo de confianza mediante _bootstraping_ (en lugar usar técnicas bayesianas)?"

Solicita los cambios _por favor_ y redacta tus comentarios como si estuvieras corrigiendo a alguien
venerable. Recuerda seguir nuesto [Código de
conducta](https://islasgeci.github.io/2019/11/06/code-of-conduct).

## Explica por qué

El **por qué** siempre es más importante que el _qué_. ¿Por qué estás señalando esa línea? El
ejemplo _bueno_ de arriba ayuda al analista a entender _por qué_ estás haciendo tu comentario. Por
favor explica tu intención, señala el principio o la buena práctica que estás siguiendo, o describe
cómo tu sugerencia mejora la calidad del repositorio o reduce la deuda técnica.

## Usa lenguaje simple y claro

Esfuérzate por ser asertivo. Sé preciso y claro usando lenguaje simple, amable e inclusivo.

## Se específico

Sólo señala las palabras que requieren atención. No "subrayes" de más o donde no está el asunto que
quieres señalar. No digas cosas como: "por ahí hay algo raro". Di exactamentedónde está lo raro y
por qué te parece raro.

## Explica qué es lo que entendiste

Para verificar que estás interpretando correctamente la intención de tu par, por favor explica qué
es lo que entendiste. ¿Cuál crees que es la intención del analista en la línea que estás señalando?

## Provee alternativas de solución

En general, es responsabilidad del analista arreglar el PR, no del revisor.

Sin embargo, esto no significa que por ser revisor no debas ayudar. Por favor señala los problemas y
proporciona orientación sobre su solución. Ayuda a tu par a solucionar el problema ofreciendo una
alternativa; si es posible, ofrece más de una opción. Deja que el analista tome la decisión sobre
cómo resolver el problema para facilitar su aprendizaje y las futuras revisiones. Tal vez el
analista encuentre una mejor solución que la que tú propones, porque él está más familiarizado con
el código que tú.

A veces, lo más útil son las instrucciones directas, las sugerencias de cambios concretos o incluso
las contribuciones con código mediante consignaciones en el mismo PR. El objetivo principal de la
revisión de código es obtener el mejor código posible. El objetivo secundario es mejorar las
habilidades de los analistaes para que requieran menos revisión con el tiempo.

## Provee referencias

Tu par te agradecerá si señalas con vínculos (ligas) las referencias en las que basaste tu revisión.
Trata de usar las mismas referencias que ya hemos usado en el pasado. Idealmente muestra ejemplos de
nuestro propio código

## Prefiere cambios sobre explicaciones

Si le pides a un analista que te explique código que no entiendes, eso generalmente debería resultar
en que **reescriba el código más claramente**. Ocasionalmente, agregar un comentario en el código
también es una respuesta apropiada, siempre y cuando el comentario no evite simplificar el código
demasiado complejo.

Las explicaciones escritas sólo en los comentarios del PR **no** son útiles para futuros lectores
del código. Son aceptables sólo en algunas circunstancias, como cuando estás revisando algo en lo
que no estás muy familiarizado y el analista explica algo que los lectores usuales del código
seguramente ya saben.

---

**Referencias:**

- [How to write code review comments](https://google.github.io/eng-practices/review/reviewer/comments.html). Google's Engineering Practices documentation.
