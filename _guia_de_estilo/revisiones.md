---
layout: page
title: Estándares en las revisiones
tagline: Guía de estilo
description: Cómo logramos revisiones amables y efectivas
---

## Cómo escribir comentarios en una revisión

- Se amable. Siempre pide las cosas por favor.
- Usa lenguaje simple y claro.
- Se específica o específico. Sólo señala las palabras que requieren atención. No "subrayes" de más
o donde no está el asunto que quieres señalar. No digas cosas como: "por ahí hay algo raro". Di
exactamente  dónde está lo raro y por qué te parece raro.
- Explica _por qué_. El por qué siempre es más importante que el qué. ¿Por qué lo estás señalando?
- Explica qué es lo que entendiste. Para verificar que estás interpretando correctamente la
intención de tu par.
- Provee alternativas de solución. Ayuda a tu par a solucionar el problema ofreciendo una
alternativa; si es posible, ofrece más de una opción.
- Provee referencias. Tu par te agradecerá si señalas con vínculos (ligas) las referencias en las
que basaste tu revisión. Trata de usar las mismas referencias que ya hemos usado en el pasado.
Idealmente muestra ejemplos de nuestro propio código
- Se respetuosa o respetuoso. Actúa como si estuvieras corrigiendo a alguien venerable

---

## Se amable

Es importante ser cortés y respetuoso al mismo tiempo que es muy claro y útil para el desarrollador cuyo código está revisando.
Una manera de hacer esto es para estar seguro de que siempre está haciendo comentarios sobre el * código * y nunca hacer comentarios sobre el *desarrollador*.
No siempre tienes que seguir esta práctica, pero definitivamente debes usarla cuando digas algo que podría de lo contrario ser molesto o contencioso. Por ejemplo:

Malo: "¿Por qué **usaste** hilos aquí cuando obviamente no hay ningún beneficio? obtenido de la concurrencia?

Bien: "El modelo de concurrencia aquí está agregando complejidad al sistema sin ninguna beneficio de rendimiento real que puedo ver. Porque no hay rendimiento beneficio, es mejor que este código sea de un solo subproceso en lugar de usar múltiples hilos."

## Courtesy

In general, it is important to be courteous and respectful while also being very clear and helpful to the developer whose code you are reviewing. One way to do this is to be sure that you are always making comments about the *code* and never making comments about the *developer*. You don't always have to follow this practice, but you should definitely use it when saying something that might otherwise be upsetting or contentious. For example:

Bad: "Why did **you** use threads here when there's obviously no benefit to be gained from concurrency?"

Good: "The concurrency model here is adding complexity to the system without any actual performance benefit that I can see. Because there's no performance benefit, it's best for this code to be single-threaded instead of using multiple threads."

## Explique por qué {#why}

Una cosa que notará sobre el "buen" ejemplo de arriba es que ayuda a
el desarrollador entiende * por qué * estás haciendo tu comentario. No siempre necesitas
incluya esta información en sus comentarios de revisión, pero a veces es apropiado
para dar un poco más de explicación sobre tu intención, la mejor práctica que eres
siguiente, o cómo su sugerencia mejora la salud del código.

## Explain Why {#why}

One thing you'll notice about the "good" example from above is that it helps the developer understand *why* you are making your comment. You don't always need to include this information in your review comments, but sometimes it's appropriate to give a bit more explanation around your intent, the best practice you're following, or how your suggestion improves code health.

## Dando orientación {#guidance}

** En general, es responsabilidad del desarrollador arreglar un CL, no el revisor. ** No es necesario que haga un diseño detallado de una solución o escriba código para el desarrollador.

Sin embargo, esto no significa que el revisor deba ser inútil. En general tu debe lograr un equilibrio apropiado entre señalar problemas y proporcionar Orientación directa. Señalando problemas y dejando que el desarrollador tome una decisión a menudo ayuda al desarrollador a aprender y facilita la realización de revisiones de código. También puede resultar en una mejor solución, porque el desarrollador está más cerca del código que el revisor es.

Sin embargo, a veces las instrucciones directas, sugerencias o incluso el código son más servicial. El objetivo principal de la revisión de código es obtener el mejor CL posible. UNA El objetivo secundario es mejorar las habilidades de los desarrolladores para que requieran menos y menos revisión con el tiempo.

## Giving Guidance {#guidance}

**In general it is the developer's responsibility to fix a CL, not the reviewer's.** You are not required to do detailed design of a solution or write code for the developer.

This doesn't mean the reviewer should be unhelpful, though. In general you should strike an appropriate balance between pointing out problems and providing direct guidance. Pointing out problems and letting the developer make a decision often helps the developer learn, and makes it easier to do code reviews. It also can result in a better solution, because the developer is closer to the code than the reviewer is.

However, sometimes direct instructions, suggestions, or even code are more helpful. The primary goal of code review is to get the best CL possible. A secondary goal is improving the skills of developers so that they require less and less review over time.

## Aceptando explicaciones {#explanations}

Si le pide a un desarrollador que le explique un código que no comprende, eso generalmente debería dar como resultado que ** reescriban el código más claramente **. Ocasionalmente, agregar un comentario en el código también es una respuesta apropiada, ya que siempre que no se trate solo de explicar código demasiado complejo.

** Las explicaciones escritas solo en la herramienta de revisión de código no son útiles para el futuro lectores de código. ** Son aceptables solo en algunas circunstancias, como cuando está revisando un área con la que no está muy familiarizado y el desarrollador explica algo que los lectores normales del código ya habrían sabido.

## Accepting Explanations {#explanations}

If you ask a developer to explain a piece of code that you don't understand, that should usually result in them **rewriting the code more clearly**. Occasionally, adding a comment in the code is also an appropriate response, as long as it's not just explaining overly complex code.

**Explanations written only in the code review tool are not helpful to future code readers.** They are acceptable only in a few circumstances, such as when you are reviewing an area you are not very familiar with and the developer explains something that normal readers of the code would have already known.

---

**Referencias:**

- [How to write code review comments](https://github.com/google/eng-practices/blob/master/review/reviewer/comments.md). Google's Engineering Practices documentation.
