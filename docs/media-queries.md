# _Media queries_

En la mayoría de los casos gracias a todas las clases que provee Bootstrap nos será suficiente para componer nuestra web. Sin embargo, en algunas situaciones es posible que queramos modificar dicho comportamiento, por ejemplo para aplicar determinados estilos CSS (colores, alineación interna, etc.) que cambien según el tamaño de pantalla. En estos casos será necesario que creemos nuestra propia _media query_ para aplicar los estilos deseados.

Una _media query_ se define de la forma:

```css
@media (min-width: TAMAÑO-EN-PÍXELES) {
    /* Los estilos aquí contenidos solo se aplicarán a partir
    del tamaño de pantalla indicado */
}
```

En este caso, los estilos que estén dentro de esta _media query_ se aplicarán **solo a partir del tamaño en píxeles indicado**. Además del tamaño mínimo, también podemos indicar el tamaño máximo o el rango de tamaño en el que se aplicarán los estilos, de la forma:

```css
@media (max-width: TAMAÑO-EN-PÍXELES) {
    /* Estos estilos solo se aplicarán hasta el tamaño indicado */
}
@media (min-width: TAMAÑO-EN-PÍXELES) and (max-width: TAMAÑO-EN-PÍXELES) {
    /* Solo se aplicarán entre los tamaños indicados */
}
```

Recordamos que los rangos que define Bootstrap son:

* Pantallas extra pequeñas (móviles) &lt; 576px
* Pantallas pequeñas (sm, _tablets_ en vertical) ≥ 576px
* Pantallas medianas (md, para _tablets_ en horizontal)  ≥ 768px
* Pantallas grandes (lg, tamaño escritorio) ≥ 992px
* Pantallas extra grandes (xl, escritorio grande) ≥ 1200px
* Pantallas extra extra grandes (xxl, escritorio extra grande) ≥ 1400px

Es importante tenerlos en cuenta a la hora de definir nuestras propias _media queries_, para crear los puntos de ruptura o cambio con las mismas dimensiones. Si no lo hicieramos así estaríamos añadiendo todavía más casos a los cinco tamaños de pantalla que contempla Boostrap, y por lo tanto complicando tanto la programación como el mantenimiento del código.

## Ejemplos de uso

Si por ejemplo queremos que en las pantallas extra pequeñas (xs) el color de fondo que aplica la clase `.miestilo` sea rojo y para el resto de tamaños sea verde, podríamos hacer:

```css
.miestilo {
    background-color: green;
}
@media (max-width: 768px) {
    .miestilo {
        background-color: red;
    }
}
```

O si por ejemplo queremos variar la alineación del texto que se aplica en una clase a partir de las pantallas tipo escritorio:

```css
.miestilo {
    text-align: center;
}
@media (min-width: 992px) {
    .miestilo {
        text-align: left;
    }
}
```

Estos sencillos ejemplos nos muestran la idea básica que tenemos que seguir para complementar el código de Bootstrap para hacer que la web se comporte como nosotros queramos. De esta forma podemos llegar a hacer cosas muy avanzadas y personalizar completamente el aspecto de una web según el tamaño del dispositivo.

Otros ejemplos de personalizaciones que podemos hacer usando las _media queries_ son:

* Cambiar el tamaño y la posición de una imagen. Por ejemplo hacer que la imagen de cabecera sea muy pequeña para dispositivos móviles y mucho mayor para pantallas de escritorio.
* Cambiar la posición de cualquier elemento. Si por ejemplo tenemos un elemento que no se ve bien con una alineación en pantallas pequeñas podemos colocarlo en otro lugar.
* Cambiar el tamaño de letra, la fuente o su color. Podemos reducir el tamaño de letra de las cabeceras para pantallas xs o aumentarlo para pantallas más grandes.
* Aplicar combinaciones de estilos avanzados. Por ejemplo, podemos crear un estilo ".articulo" que según el tamaño de pantalla reajuste toda la apariencia de un artículo con todos los elementos que contenga.
* Cualquier cosa que se os ocurra!



