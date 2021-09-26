# Funcionamiento del diseño adaptable

El diseño _responsive_ se basa en adaptar dinámicamente el diseño web en función de la resolución de la pantalla del visitante. De esta forma adaptamos nuestras webs a dispositivos móviles sin necesidad de tener dos sitios separados y al mismo tiempo también podemos adaptar la web a resoluciones grandes para mejorar la experiencia de usuario.

Antiguamente se pensaba en hacer 2 diseños, uno para móviles y otro para web, sin embargo, el diseño _responsive_ trata de estructurar o adaptar el contenido que ya tienes en el diseño original a otros formatos diferentes: móviles, _tablets_ y versión de escritorio, como bien muestra esta imagen:

![](assets/web_responsive/responsive_patterns.png "Esquema del diseño responsive")

La solución técnica que se le ha dado en el desarrollo web al problema de esta diversidad de resoluciones web se llama _Responsive Web Design_ y nos permite hacer interfaces adaptadas al entorno del usuario mediante estructuras, bloques, columnas e imágenes fluidas gracias a _media-queries_ de CSS.

A partir de CSS 2.1 las hojas de estilo han incluido los _media types_, lo cual nos ha facilitado, por ejemplo, proveer un estilo distinto para el diseño de impresión:

```html
<link rel="stylesheet" type="text/css" href="core.css" media="screen" />
<link rel="stylesheet" type="text/css" href="print.css" media="print" />
```

A partir de CSS 3 el W3C creó las _media queries_. Una media query nos permite apuntar no sólo a ciertas clases de dispositivos, sino realmente inspeccionar las características físicas del dispositivo que está renderizando nuestro trabajo. Para utilizarlas podemos incorporar una _query_ al atributo media de un _link_ a una hoja de estilos:

```html
<link rel="stylesheet" type="text/css" href="shetland.css"
        media="screen and (max-device-width: 480px)" />
```

La _query_ contiene dos componentes:

* Un media type (_screen_, _print_ o _all_).
* La consulta entre paréntesis, conteniendo una característica a inspeccionar (max-device-width o min-device-width) seguida por el valor al que apuntamos (480px).

También es posible utilizarlas directamente en el CSS como parte de una regla `@media`:

```html
@media screen and (max-device-width: 480px) {
    .column {
        float: none;
    }
}
```

Por ejemplo, si quisiéramos crear un estilo de bloques _fluidos_ que para pantallas grandes se muestre uno a continuación del otro y para pantallas pantallas cambie a mostrarse de forma apilada, uno encima de otro, podríamos hacer algo como:

```html
@media all and (max-width: 800px) {
    .bloque{
        display: block !important;
        /* Cuando el ancho sea inferior a 800px el elemento será un bloque */
        width: auto !important;
    }
}
.bloque {
    display: inline-block;    /* Para que se muestren los bloques en línea */
    height:300px;
    width: 300px;
    border:1px solid #333;
    background: #999;
    margin:20px;
}
```

Para más información podéis consultar: [http://www.w3.org/TR/css3-mediaqueries/](http://www.w3.org/TR/css3-mediaqueries/)

