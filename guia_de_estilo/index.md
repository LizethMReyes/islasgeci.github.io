---
layout: page
title: Guía de Estilo
tagline: Ciencia de Datos • GECI
description: Este documento extiende las guías de estilo adoptadas por el equipo de Ciencia de Datos de GECI
---

## Contenido

<ol>
  {% for page in site.guia_de_estilo %}
    <li>
      <b><a href="{{ page.url }}">{{ page.title }}</a></b>
      <i>{{ page.description }}</i>
    </li>
  {% endfor %}
</ol>
