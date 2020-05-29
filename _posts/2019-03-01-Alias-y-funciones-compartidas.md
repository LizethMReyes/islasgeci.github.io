---
layout: post
author: evaristo
---

Ayer Efren propuso (secundado por David) que saquemos las funciones del archivo de alias `.bash_aliases` que tenemos en `$REPOS/misctools/bin/`. A mi no me gustó mucho la propuesta porque eso implica que tendría que modificar mi `~/.bashrc`. Como el `~/.bashrc` de Ubuntu carga `~/.bash_aliases` por defecto, lo que yo había hecho fue crear una liga `~/.bash_aliases` que apuntara hacia `$REPOS/misctools/bin/.bash_aliases` evitando así modificar mi `~/.bashrc` original. Sin embargo, para cargar el nuevo archivo `$REPOS/misctools/bin/.bash_functions` parecía que tendría que modificar `~/bashrc`.

Entonces lo que hice fue primero crear la liga `~/bin/` con

```
ln -s $REPOS/misctools/bin/ ~/bin
```

> Sustituye `$REPOS` con la ruta hacia `misctools/`

y luego crear mi propio `~/.bash_aliases` donde incluí

```
if [ -d ~/bin ]; then
    source <(cat $(ls ~/bin/.bash_*))
fi
```

De esta manera

1. mantengo mi nuevo `~/.bash_aliases` personal,
1. incluyo los `$REPOS/misctools/bin/.bash_*` compartidos (incluido el nuevo `.bash_functions`),
1. puedo ejecutar `testMake` (y cualquier otro ejecutable que se encuentre en `$REPOS/misctools/bin/`) sin tener que agregarlo al `$PATH` ya que `~/bin/` es parte del `$PATH` por defecto, y
1. evito modificar mi `~/.bashrc`.
