# Página básica

Bootstrap utiliza ciertos elementos HTML y propiedades CSS que requieren el uso del _doctype_ de HTML 5 para que funcionen, por lo que es importante añadirlo a todas nuestras páginas:

```html
<!DOCTYPE html>
<html lang="en">
  ...
</html>
```

Además para asegurar que se muestra correctamente en dispositivos móviles y que permite la utilización del zoom al arrastrar tenemos que añadir la siguiente etiqueta `meta` dentro de la cabecera `<head>`:

```html
<meta name="viewport"
  content="width=device-width, initial-scale=1, shrink-to-fit=no">
```

La propiedad `width` controla el tamaño del viewport. Puede definirse con un número en pixeles como  `width=600` o con un valor especial como `device-width` que es el equivalente al ancho de la pantalla en píxeles del dispositivo que cargue la web. El atributo `shrink-to-fit="no"` configura este mismo comportamiento para los navegadores Safari anteriores a la versión 9.

La propiedad `initial-scale` del viewport controla el nivel de zoom cuando la página se carga por primera vez. Las propiedades `maximum-scale`, `minimum-scale`, y `user-scalable` controlan la forma en cómo se permite a los usuarios aumentar o disminiuir el zoom en la página. Si añadimos a la etiqueta _meta_ del _viewport_ el atributo `user-scalable=no`  (como se puede ver en el ejemplo inferior) podemos deshabilitar el zoom para dispositivos móviles. De esta forma los usuarios únicamente podrán usar el scroll de la aplicación, haciendo tu web más similar a una aplicación nativa. Sin embargo, hay que usar esta característica con cuidado ya que no es recomendable para todos los sitios.

```html
<meta name="viewport"
  content="width=device-width, initial-scale=1, shrink-to-fit=no,
                               maximum-scale=1, user-scalable=no">
```

A continuación se incluye la plantilla HTML base para cualquier proyecto con Bootstrap, a partir de la cual se tendrán que ir añadiendo el resto de elementos:

```html
<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU" crossorigin="anonymous">

    <title>Hello, world!</title>
  </head>
  <body>
    <h1>Hello, world!</h1>

    <!-- Optional JavaScript; choose one of the two! -->

    <!-- Option 1: Bootstrap Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-/bQdsTh/da6pkI1MST/rWKFNjaCP5gBSY4sEBT38Q/9RBh9AH40zEOg7Hlq2THRZ" crossorigin="anonymous"></script>

    <!-- Option 2: Separate Popper and Bootstrap JS -->
    <!--
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js" integrity="sha384-W8fXfP3gkOKtndU4JGtKDvXbO53Wy8SZCQHczT5FMiiqmQfUpWbYdTil/SxwZgAN" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/js/bootstrap.min.js" integrity="sha384-skAcpIdS7UcVUC05LJ9Dxay8AXcDYfBJqt1CJ85S/CFujBsIzCIv+l9liuYLaMQ/" crossorigin="anonymous"></script>
    -->
  </body>
</html>
```

Como se puede ver hemos añadido la etiqueta meta de cabecera y hemos cargado la hoja de estilo de Bootstrap y las librerías Javascript que vamos a necesitar (bootstrap.bundle.min.js, que contiene JQuery, Bootstrap y Popper). También hemos añadido la etiqueta h1 con "Hello world!" dentro del cuerpo de la web, que será donde podremos empezar a escribir el contenido de nuestro sitio web responsive.

