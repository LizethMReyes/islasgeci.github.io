## Ciencia de Datos en Conservación de Islas

Este repositorio es la fuente de la página del equipo de [Ciencia de
Datos](https://github.com/IslasGECI) del [Grupo de Ecología y Conservación de
Islas](https://islas.org.mx).

## Comunidad de Código Abierto de GECI

Únete a nuestra comunidad de código abierto en Slack:

- [Comunidad de código abierto de GECI en Slack](https://islasgeci.slack.com)
    - [Crear
      cuenta](https://join.slack.com/t/islasgeci/shared_invite/zt-f8kqlr2t-C8dO0JthMxaT81ShJiNk0w)

Para servir esta página localmente con Docker ejecuta:

```
docker run \
    --publish 4000:4000 \
    --rm \
    --volume="${PWD}:/srv/jekyll" \
    jekyll/jekyll:4 jekyll serve
```

y visita [localhost:4000](http://localhost:4000).
