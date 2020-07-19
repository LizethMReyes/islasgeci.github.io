## Ciencia de Datos en Conservación de Islas

Este repositorio es la fuente de la página del equipo de [Ciencia de Datos](https://github.com/IslasGECI) del [Grupo de Ecología y Conservación de Islas](https://islas.org.mx).

Para servir esta página localmente con Docker ejecuta:

```
docker run \
    --publish 4000:4000 \
    --rm \
    --volume="${PWD}:/srv/jekyll" \
    jekyll/jekyll:4 jekyll serve
```

y visita [localhost:4000](http://localhost:4000).
