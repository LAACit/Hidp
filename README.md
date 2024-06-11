# Curso hidroperiodo

Este repositorio buscar ser un manual de referencia para la caracterización del <em><strong> hidroperiodo </strong></em> de manglares considerando las tres variables del hidroperiodo; nivel promedio de inundación (cm/mes), duración (h/mes), frecuencia (eventos/mes), así como espectro de frecuencias, utilizando series de tiempo de sensores de presión Hobbo. Así como una guía para limpiar e integrar datos del Estaciones Meteorológicas Automáticas (EMAs), datos del Servicio Mareográfico Nacional y niveles de manglar con datos del Laboratorio de Producción Primaria del CINVESTAV Mérida (LLP-Mid).

## Indice 
**Índice**   
1. [Introducción ](#id1)
2. [Descarga de datos](#id2)
3. [Fundamentos de Matlab](#id3)
4. [Funciones especiales ( fillmissing](#id4)
5. [Inspección series de tiempo](#id5)
6. [Corrección series de tiempo](#id6)
7. [Calculo de hidroperiodo (Duración, Promedio  Frecuencia)](#id7)
8. [Análisis de espectros](#id8)

## Introducción <a name="id1"></a>
Las variaciones estacionales en el nivel de inundación y las características hidrológicas del humedal definen el hidroperiodo de los humedales. El hidroperiodo define las características de los humedales, en el caso de los manglares se ha observado que estas variaciones del hidroperiodo están relacionadas con cambios en la distribución y productividad del ecosistema. 

De acuerdo con [Mitsch & Gosselink, 2015](https://www.researchgate.net/publication/271643179_Wetlands_5th_edition) , el hidroperiodo se puede caracterizar a partir de tres variables; nivel de inundación, el cual se reporta como el nivel de inundación promedio en un intervalo de tiempo conocido; Duración de inundación, corresponde al numero de horas en las que humedal se encuentra inundado; y frecuencia de inundación, la cual se refiere al numero promedio de veces que el humedal es inundado  en un periodo de tiempo conocido. 

En el caso de la frecuencia  y duración de inundación existen diversas métricas reportadas para su caracterización, en algunos casos la duración de inundación se reporta como él % de días en los que el humedal se encuentra inundado durante un año (Crase et al., 2013), el numero de horas, horas por mes, horas por día o días por año. En el caso de la frecuencia de inundación, se reporta como el número de veces que hay un incremento de marea por mes (tides/mes), numero de días por mes que hay inundación (day/month) o el número de inundaciones por año (flooding/year). 
La descripción de las variables del hidroperiodo a partir de datos generados por sensores de presión y mediciones de campo han permitido reconocer variaciones naturales, así como cambios originados por la actividad humana. Adicionalmente, en los últimos años el hidroperiodo ha sido caracterizado con nuevas técnicas y tecnologías como los análisis de espectros, imágenes satelitales o el uso de LiDar lo que ha permitido complementar los estudios de este ecosistema.

## Descarga de datos <a name="id2"></a>
#Datos de presión HOBBO 
Antes de comenrzar a realizar el análisis de datos se requien obtener datos confiables sobree el área de estudio. En el caso de niveles de inundación de manglares, estos datos corresponde a los que son recuperados de datos gracias a los intrumentos colocados con antelación. 

#Datos estaciones meteorologicas 
En caso de no contar con datos de sensores de presión se puede recurir a mediciones realizadas por estaciones meteórologicas localizadas en sitios cercanos. En el caso de estaciones externas se pueden enriquecer en analiz de datos al integrar  variables meteorologicas como Dirección del viento, velocidad del viento, precipitación,  humedad, y  temperatura aire. En el caso de México se recomienda tomar en cuenta las siguienes fuentes de información; 

- [Servicio Meteorologico Nacional](https://smn.conagua.gob.mx/es/?option=com_content&view=article&id=38&Itemid=102) 
- [Red Universitaria de Observatorios Atmosféricos - UNAM](https://ruoa.unam.mx/)
- [Servicio Mareográfico Nacional – SMN del IGEF, UNAM](https://chalchiuhtlicue.geofisica.unam.mx/)

Cada una de las basase de datos mencionadas cuenta con frecuencia de muestreo, variables medidas, periodo de datos que varian por institución o estación de muestreo. Así mismo, cada una tiene diferentes formas de acceso a los datos. En el caso de [Servicio Meteorologico Nacional](https://smn.conagua.gob.mx/es/?option=com_content&view=article&id=38&Itemid=102)  los datos están dispobles en su base de datos hasta por 90 días, despues de los cuales se debe realizar una solicitud por correo a CONAGUA para obtener datos historicos. Por otra parte, [Servicio Mareográfico Nacional – SMN del IGEF, UNAM](https://chalchiuhtlicue.geofisica.unam.mx/) pone a disposición sus datos por medio de su correo llenando formatos que proporcionan en su pagina. 


## Fundamentos de Matlab <a name="id3"></a>
## Funciones especiales <a name="id4"></a>
## Inspección series de tiempo <a name="id5"></a>
## Corrección series de tiempo <a name="id6"></a>
## Calculo de hidroperiodo (Duración, Promedio  Frecuencia)<a name="id7"></a>
## Análisis de espectros <a name="id8"></a>









 
