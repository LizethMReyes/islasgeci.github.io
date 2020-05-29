---
layout: page
title: Protocolo avanzado para guardar datos en Excel
tagline: Ciencia de Datos • GECI
---

En esta sección se encuentra información adicional para los analistas del [equipo](https://github.com/orgs/IslasGECI/people) de [Ciencia de Datos en GECI](https://github.com/orgs/IslasGECI).

<h2>Contenido</h2>

<ol>
  {% for page in site.protocolo_avanzado %}
    <li>
      <b><a href="{{ page.url }}">{{ page.title }}</a></b>
      <i>{{ page.description }}</i>
    </li>
  {% endfor %}
</ol>
