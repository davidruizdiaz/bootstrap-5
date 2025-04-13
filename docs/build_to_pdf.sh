#!/bin/bash

# Requiere md2pdf https://www.npmjs.com/package/md-to-pdf

cat README.md 01_introduccion.md 02_introduccion-frameworks.md 03_introduccion-funcionamiento.md 04_introduccion-pruebas.md 05_pagina-basica.md 06_rejilla.md 07_rejilla-columnas-de-ancho-especifico.md 08_rejilla-columnas-de-ancho-automatico.md 09_rejilla-forzar-el-cambio-de-fila.md 10_rejilla-anidamiento-de-columnas.md 11_rejilla-margenes-o-espaciado-entre-columnas.md 12_rejilla-ordenacion-de-columnas.md 13_rejilla-alineacion.md 14_utilidades-responsive.md 15_media-queries.md 16_componentes-responsive.md 17_componentes-botones.md 18_componentes-desplegables.md 19_componentes-grupos-de-botones.md 20_componentes-formularios.md 21_componentes-navegacion.md 22_componentes-barra-de-navegacion.md 23_componentes-tablas.md 24_ejercicios-1.md 25_ejercicios-2.md 26_ejercicios-3.md 27_ejercicios-4.md 28_bibliografia.md | md2pdf --document-title=Bootstrap_5 >.\pdf\bootstrap_5.pdf
