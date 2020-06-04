---
layout: page
title: Protocolo avanzado para guardar datos en Excel
tagline: Ciencia de Datos • GECI
---

En esta sección se encuentra información adicional para los analistas del [equipo](https://github.com/orgs/IslasGECI/people) de [Ciencia de Datos en GECI](https://islasgeci.github.io).

**Contenido**

{% assign sorted = (site.protocolo_avanzado | sort: 'order') %}
<ol>
  {% for item in sorted %}
    <li>
      <b><a href="{{ item.url }}">{{ item.title }}</a>:</b>
      {{ item.description }}
    </li>
  {% endfor %}
</ol>
