Bienvenido al repositorio de contenidos de las cátedras *Sistemas
Operativos* e *Introduccion a los Sistemas Operativos* de la Facultad de
Informática, Universidad Nacional de La Plata. Acá vas a encontrar el
código fuente LaTeX que se utiliza para armar los trabajos prácticos y
explicaciones de las materias.

# Requisitos
Debido a la diversidad de sistemas operativos que utilizan los integrantes
de la cátedra, este repositorio debe ser multi-plataforma. Para tal fin se
utiliza una serie de archivos `Makefile`.

A continuación se especifican las dependencias que se deben instalar para
compilar el proyecto:
* texlive (con soporte español)
* make

## GNU/Linux
En Debian y distribuciones derivadas la instalación de las dependencias
puede efectuarse mediante el siguiente comando:

    # apt-get install git make texlive texlive-lang-spanish\
      texlive-latex-recommended texlive-latex-extra texlive-fonts-recommended

## Mac
Para entornos Apple se puede utilizar `Vagrant`. Puede ver la definición en el archivo "Vagrantfile". Pasos a seguir:
* Instalar Vagrant en la computadora [https://www.vagrantup.com/]
* Ejecutar:
    * vagrant up - descarga, instala y configura un ambiente "ubuntu-trusty-64" a través del provider por defecto `VirtualBox`
    * vagrant ssh - levanta y se conecta a la máquina virtual para poder compilar como se detalla en el "Modo de uso"

## Windows
En Windows NT y sus versiones derivadas se deberá descargar
[CygWin](https://cygwin.com/install.html) en su respectiva arquitectura
(x86 ó x86_64). Durante la instalación de este entorno se presentará la
posibilidad de instalar paquetes adicionales. Para que este proyecto
funcione se deberán seleccionar las siguientes dependencias:

* git
* make
* textlive
* textlive-collection-basic
* texlive-collection-latex
* texlive-collection-latexextra
* texlive-collection-latexrecommended
* texlive-collection-pictures
* texlive-collection-langspanish
* texlive-collection-fontsrecommended
* texlive-collection-genericrecommended


# Modo de uso
Para realizar el `checkout` del repositorio se debe ejecutar el siguiente
comando:

    git clone https://github.com/unlp-so/contenidos.git

La forma más sencilla de compilar el contenido de este repositorio es
utilizando el comando `make` en el directorio principal. Esto
provocará que se compile todo el material disponible y se lo guarde en el
directorio `pdf/`.

Cuando estés trabajando en un único documento puede resultar innecesario
tener que compilar todo el contenido. En este caso, es recomendable que
navegues hasta el directorio que contiene el material que quieras editar y
ejecutes `make` directamente desde esa ubicación. Todo el contenido se
encuentra jerárquicamente organizado en los directorios `practicas/` y
`explicaciones/`.

Cuando decidas que una práctica o explicación ya está lista para ser publicada,
ejecutá `make install` para que el sistema de compilación la guarde en el
directorio `pdf/`. ¡No hagas `commit`s de PDFs sin terminar!

# ¿Cómo colaborar?
La mejor forma de escribir material para la cátedra utilizando este
repositorio es mirando y estudiando lo que ya está hecho, con el objetivo de
aprender la sintaxis, y traducir a LaTeX el material de años anteriores.

# Publicación de los materiales

Este repositorio utiliza [Travis CI](https://travis-ci.org) como herramienta de
integración contínua. Esto nos permite no sólo asegurarnos que los cambios que
realizamos a los fuentes LaTeX no generan errores, sino que además nos permite
generar automáticamente los entregables en formato PDF y publicarlos dentro de
las _releases_ de GitHub.

Para publicar una nueva versión del material, basta con crear un tag de git, y
Travis CI se encargará de generar los PDF por nosotros y publicarlos como una
nueva _release_ del repositorio. Para una mejor organización de los materiales a
futuro, se recomienda seguir la siguiente estructura en los nombres de los tags:

```
YYYY-mm-vv
```

Donde:

* `YYYY` es el número de año expresado con cuatro dígitos (por ejemplo: `2017`).
* `mm` es el número de mes expresado con dos dígitos (por ejemplo: `08`).
* `vv` es un número de versión incremental por mes expresado con dos dígitos, es
  decir que con cada cambio de año/mes se vuelve a iniciar desde la versión 0
  (por ejemplo: `00`).

De esta forma, tendremos una organización cronológica de los cambios que se
realicen, y podremos saber fácilmente qué versión es la última para un año y/o
semestre particular, si así lo requiriésemos.
