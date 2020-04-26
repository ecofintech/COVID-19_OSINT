# COVID-19_OSINT
Bienvenidas al:
Grupo de Tarea Conjunta OSINT (Open-source Intelligence) para la investigación y comunicación en torno a la pandemia de SARS-COV-2/COVID-19.

Búsqueda de información y elaboración de hipótesis. Filtro de noticias y "fake-news". Investigación ciudadana crítica. Colaboración de código libre multidisciplinar.


Evitemos distraer el hilo del grupo con noticias sensacionalistas o discusiones de opinión. Las conspiranoias 
 y opiniones excéntricas pueden ayudar a romper la ortodoxia y el discurso dominante, pero no dejemos que el grupo derive hacia eso. La política es la gestión de los asuntos públicos por parte de los ciudadanos, pero evitemos politizar los debates en exceso y sobretodo, dentro de los paradigmas partidistas y seguidistas.

Para compartir información y opiniones en torno a teorias conspirativas tenemos el grupo específico:

`http://t.me/COVID19Cowspiranoias`



Salud !!



Documento colaborativo: https://paper.komun.org/p/covid19-OSINT

Dashboard Coronavirus COVID-19 (Mobile)
https://www.arcgis.com/apps/opsdashboard/index.html#/85320e2ea5424dfaaa75ae62e5c06e61

# Herramientas OSINT

## Repositorio de enlaces a herramientas OSINT:
https://ciberpatrulla.com/links/

## Herramienta para crawlear fake news en los medios supuestamente serios


https://code.montera34.com/numeroteca/homepagex


# Herramientas Data Analysis

### Dashboard Coronavirus COVID-19 (Mobile)

Información verificada y de acceso público para acceder a datos acerca del virus:

https://www.arcgis.com/apps/opsdashboard/index.html#/bda7594740fd40299423467b48e9ecf6

https://nextstrain.org/


## Data source CSV

https://github.com/CSSEGISandData/COVID-19

## Herramienta analisis genetico ETE3 para trazar y analizar arboles de genomas

https://github.com/etetoolkit/ete


## Herramienta de analisis de datos de Covid 19


https://code.montera34.com/numeroteca/covid19



## Herramienta de prediccion 



![prediction plot](plot_prediction.png)



### Uso 

Con el siguiente comando obtendriamos el plot del ejemplo .

Predice mas de 12 millones en españa de infectados, 766 mil personas muertas con la actual tasa de muerte del 6 % de los detectados, para dentro de aproximadamente 65 dias. Hay que tener en cuenta que es en caso de no tener vacuna y tratamiento, con los datos actuales extraidos de articulos y de distintas fuentes de informacion. Cada uno puede hacer sus prediccciones acorde vaya habiendo nuevos datos. Os invitamos a que encontreis un escenario que no sea horrible.

Como parametros hemos usado 8 % de tasa de recuperacion y el 6% la tasa de muertes de :

https://www.arcgis.com/apps/opsdashboard/index.html#/bda7594740fd40299423467b48e9ecf6

La tasa de hospitalizacion segun 

https://www.redaccionmedica.com/secciones/sanidad-hoy/coronavirus-mortalidad-inferior-1-en-pacientes-con-menos-de-60-anos-6396

24 cyclos de 7 dias (el ultimo como periodo de incubacion)



````
### Generate prediction

./pandemia --contact_rate 2 --infected_rate 80 --recovered 8 --hospital 25 --danger 20 --dead 6 --cycles 24 --incubation 7


### Help

./pandemia --help

The commandargs program

commandargs [OPTIONS]

Common flags:
     --contact_rate=NUM     Middle number of contacts
     --infected_rate=NUM    Number of infected vs tests realized
     --recovered=NUM        Recovered rate, Infected vs recovered persons
     --hospital=NUM         Hospitalization rate, invected vs hospitalizated
                            persons
     --danger=NUM           Danger rate, infected vs danger state infected
                            people
     --dead=NUM             Dead rate , infected vs dead people
     --cycles=INT           Number of incubation cycles
     --incubation_days=INT  Number of incubation days
     --riots=INT            Riots in time
     --imigration_rate=INT  Rate of imigrants growth
     --pillage=INT          Bandalism rate in shops or authority
                            infrastructures, cases per day
     --street_police=INT    Number of authority forces in the street, police
                            x citizens
  -? --help                 Display help message
  -V --version              Print version information


````

Zoom con las teclas + -

Mover el espacio con el cursor

*Para windows usar el fichero pandemia.exe ejecutable.


### Genome analysis 

Genomic epidemiology of novel coronavirus


https://nextstrain.org/ncov?l=clock



Users guide

https://www.ebi.ac.uk/about/vertebrate-genomics/software/exonerate-user-guide

Examples

```` 

./exonerate orf1ab2004.fasta covid


C4 Alignment:
------------
         Query: AAP49011.4 orf1ab polyprotein [SARS coronavirus ZJ01]
        Target: NC_045512.2 Severe acute respiratory syndrome coronavirus 2 isolate Wuhan-Hu-1, complete genome
         Model: ungapped:protein2dna
     Raw score: 217
   Query range: 925 -> 989
  Target range: 3034 -> 3226

  926 : TyrProProAspGluGluGluGluAspAspAlaGluCysGluGluGluGluIleAspGluTh :  946
        !:!  !|||   !!:|||!!:|||!!:!!:!.!!!:|||||||||||||||.!!!!:  !:!
        PheTyrProProAspGluAspGluGluGluGlyAspCysGluGluGluGluPheGluProSe
 3035 : TTCTACCCTCCAGATGAGGATGAAGAAGAAGGTGATTGTGAAGAAGAAGAGTTTGAGCCATC : 3095

  947 : rCysGluHisGluTyrGlyThrGluAspAspTyrGlnGlyLeuProLeuGluPheGlyAlaS :  967
        !  !:!!:!!||||||||||||||||||||||||||||||  !||||||||||||||||||!
        rThrGlnTyrGluTyrGlyThrGluAspAspTyrGlnGlyLysProLeuGluPheGlyAlaT
 3096 : AACTCAATATGAGTATGGTACTGAAGATGATTACCAAGGTAAACCTTTGGAATTTGGTGCCA : 3158

  968 : erAlaGluThrValArgValGluGluGluGluGluGluAspTrpLeuAspAspThrThrGlu :  987
        !!:!!!  .!!:!!!:!  !|||||||||:!!|||||||||||||||||||||  !!:!:!!
        hrSerAlaAlaLeuGlnProGluGluGluGlnGluGluAspTrpLeuAspAspAspSerGln
 3159 : CTTCTGCTGCTCTTCAACCTGAAGAAGAGCAAGAAGAAGATTGGTTAGATGATGATAGTCAA : 3218

  988 : GlnSer :  989
        |||!!!
        GlnThr
 3219 : CAAACT : 3226


```` 



### Resumen de comparacion de proteinas originales de sars2004 , y los diferentes virus de diferentes epocas descendientes de sars2004. Resultados obtenidos con el parametro --percent de exonerate.



Proteina M 2004 , Covid 91 %

Proteina M 2004 , Batsars2020 91 %

Proteina M 2004 , Batsars2015 97 %

Proteina M 2004 , Batsars2010 98 %




Proteina Orf1ab 2004 , Covid 37 %

Proteina Orf1ab 2004 , Batsars2020 37 %

Proteina Orf1ab 2004 , Batsars2015 59 %   <----- Algo extraño ya que es mas parecida a 2004 que a 2010, y 2010 muy parecido a las 
muestras de 2020 

Proteina Orf1ab 2004 , Batsars2010 38 %




Proteina E 2004 , Covid 87 %

Proteina E 2004 , Batsars2020 87 %

Proteina E 2004 , Batsars2015 98 %

Proteina E 2004 , Batsars2010 100 %





Proteina S 2004 , Covid 42 % <------ Algo anormal en la proteina s , ha evolucionado mucho mas que su primo Batsars ? , solo en 
esta proteina ?

Proteina S 2004 , Batsars2020 55 %

Proteina S 2004 , Batsars2015 55 %

Proteina S 2004 , Batsars2010 56 %





Covid 19 contra Batsars2020 -> 47 % <--- Es "primo" de covid 19

Covid 19 contra Batsars2015 -> 37 %

Covid 19 contra Batsars2010 -> 34 % 

Covid contra Sars -> 38 % <--- Tiene mas de 2004 que de 2010 o 2015




# Hipótesis alternativas


En diferentes momentos del tiempo sars es reintroducido en la naturaleza, al menos alrededor de 2010 y 2013, donde un virus sin mutar vuelve a generar nuevas generaciones, Covid 19 y Batsars2020 son primos, pero ambos descienden de una especie de sars2004 no conocida. Existen escapes conocidos en la zona de Wuhan. 

https://www.nature.com/articles/s41591-020-0820-9?utm_source=twt_nnc&utm_medium=social&utm_campaign=naturenews&sf231596998=1

Es una de las teorias que plantea la revista nature.

En los archivos de la carpeta fasta estan los genomas para comprobar cada uno sus propias teorias., Tienen la referencia oficial a la fuente :

https://www.ncbi.nlm.nih.gov/



# Medicamentos

No esta claro la eficiacia en la poblacion aun de los medicamentos


     - Remdesivir
     
     - Hydroxychloroquine 
     
     
     
     
Parece que ya fueron usados para el sars y solicitada patente en laboratorio de wuhan segun wikipedia


https://es.wikipedia.org/wiki/Instituto_de_Virolog%C3%ADa_de_Wuhan


     - sulfato de hidroxicloroquina
     
     - azitromicina
     
Se publica estudio en escasos pacientes con éxito mediante la combinación de los dos medicamentos anteriores.

https://actualidad.rt.com/actualidad/347290-anunciar-exito-pruebas-vacuna-coronavirus-francia     
https://www.mediterranee-infection.com/epidemie-a-coronavirus-covid-19/

# Financiero 

## Multimillonarios de EEUU se han vuelto 10% más ricos durante la pandemia de Covid-19

https://interferencia.cl/articulos/multimillonarios-de-eeuu-se-han-vuelto-10-mas-ricos-durante-la-pandemia-de-covid-19

## El coronavirus provoca una histórica caída de la actividad económica en la eurozona

https://elpais.com/economia/2020-03-24/el-coronavirus-colapsa-la-actividad-economica-en-marzo-segun-ihs-markit.html



URL de El País desde enero hasta 25 de marzo 2020

ENERO

Como prevenir la pandemia

https://elpais.com/elpais/2019/12/30/planeta_futuro/1577703180_264449.html

No hay nada más contagioso que el miedo

https://elpais.com/sociedad/2020/01/30/actualidad/1580407947_671784.html

cómo diferenciar una gripe de un constipado

https://elpais.com/elpais/2018/01/16/buenavida/1516095048_779193.html

La oms evita decretar el estado de emergencia...

https://elpais.com/sociedad/2020/01/23/actualidad/1579795503_150819.html

(subtitular) el riesgo de contagio en españa es muy bajo

https://elpais.com/sociedad/2020/01/24/actualidad/1579871358_540657.html

Hospitales desbordados en china y apenas sin materiales

https://elpais.com/sociedad/2020/01/25/actualidad/1579928257_278133.html

Un sistema de inteligencia artificial alertó del coronavirus

https://elpais.com/tecnologia/2020/01/28/actualidad/1580235041_105388.html

La OMS declara la alerta internacional

https://elpais.com/sociedad/2020/01/30/actualidad/1580399024_626205.html

Madrid establece protocolo por coronavirus

https://elpais.com/ccaa/2020/01/31/madrid/1580473842_941848.html

Origen síntomas y letalidad

https://elpais.com/sociedad/2020/01/29/actualidad/1580309595_830193.html

FEBRERO

El coronavirus pone a prueba el periodismo

https://elpais.com/elpais/2020/01/31/opinion/1580510964_287091.html

El derecho y las pandemias

https://elpais.com/elpais/2020/02/05/opinion/1580868501_625962.html

La epidemia de gripe se ensaña con los niños

https://elpais.com/sociedad/2020/02/05/actualidad/1580924567_852972.html

desconfianza con china y temor al contagio mundial

https://elpais.com/internacional/2020/02/07/actualidad/1581100979_889064.html

gripe y coronavirus

https://elpais.com/elpais/2020/02/08/opinion/1581174702_423458.html

suspender el mobile, la gripe mata más que el coronavirus

https://elpais.com/elpais/2020/02/12/opinion/1581531020_873598.html

No existe evidencia para cancelar el mobile

https://elpais.com/sociedad/2020/02/13/actualidad/1581604750_578694.html

La ansiedad de la población no es razonable con los datos que tenemos

https://elpais.com/sociedad/2020/02/13/actualidad/1581615646_488410.html

Demasiado alarmismo por el coronavirus?

https://elpais.com/elpais/2020/02/14/opinion/1581704324_321916.html

Las noticias falsas son como el virus de la gripe

https://elpais.com/elpais/2020/02/22/opinion/1582395209_693282.html

Los hospitales españoles ultiman protocolos y planes de contingencia

https://elpais.com/sociedad/2020/02/24/actualidad/1582577346_085378.html

Pánico a las pandemias

https://elpais.com/elpais/2020/02/13/planeta_futuro/1581607630_603811.html

Fragilidades víricas

https://elpais.com/elpais/2020/02/25/opinion/1582638578_719871.html

Nada que temer solo se trata de una gripe común

https://elpais.com/elpais/2020/02/25/opinion/1582644184_509104.html

consejos para evitar la paranoia

https://cat.elpais.com/cat/2020/02/25/espana/1582645440_172885.html

Cómo evitar el contacto con el corona y otras 7 enfermedades

https://elpais.com/elpais/2020/02/25/buenavida/1582640927_157296.html

Lo comparan con la gripe para dar consuelo

https://elpais.com/elpais/2020/02/26/opinion/1582733946_756592.html

Ribó en contra de la hipocondría

https://elpais.com/ccaa/2020/02/26/valencia/1582724319_514803.html

La gente está histérica y exagera

https://elpais.com/sociedad/2020/02/26/actualidad/1582734996_190934.html

1 contagio local en españa (dia 26)

https://elpais.com/sociedad/2020/02/26/actualidad/1582734638_122366.html

La magnitud del problema no será diferente a la de una gripe

https://elpais.com/sociedad/2020/02/26/actualidad/1582744701_468958.html

Las cuarentenas se consideran bajas laborales

https://elpais.com/economia/2020/02/28/actualidad/1582890210_264796.html

preparados para la pandemia

https://elpais.com/elpais/2020/02/28/opinion/1582888306_473552.html

¿Quiere una vacuna contra el corona?

https://elpais.com/elpais/2020/02/29/opinion/1582998792_335508.html

La alarma pasará

https://elpais.com/elpais/2020/02/27/ideas/1582827762_497106.html


MARZO

Dos posturas gripe o peste

https://elpais.com/elpais/2020/03/03/opinion/1583251903_306627.html

La prudencia y la buena información son fundamentales

https://elpais.com/elpais/2020/03/10/opinion/1583844255_096573.html

así infecta el corona

https://elpais.com/elpais/2020/03/06/ciencia/1583515780_532983.html

Humanos que comen animales salvajes

https://elpais.com/elpais/2020/03/02/planeta_futuro/1583166211_017881.html

El coronavirus es el mismo los países no

https://elpais.com/elpais/2020/03/18/opinion/1584563693_517499.html

El próximo virus (culpa de china por comer bichos)

https://elpais.com/elpais/2020/03/20/opinion/1584697329_308520.html

Gamberros 2.0

https://elpais.com/elpais/2020/03/21/hechos/1584803141_948265.html



URL de RTVE desde enero hasta 25 de marzo de 2020

ENERO

La epidemia de la gripe irá aumentando

https://www.rtve.es/noticias/20200112/arranca-onda-epidemica-gripe-ira-aumentando-progresivamente-durara-entre-dos-tres-meses/1995384.shtml

Epidemia de gripe en españa

https://www.rtve.es/alacarta/videos/telediario/epidemia-gripe-espana/5481128/

La gripe comienza a llenar las urgencias

https://www.rtve.es/noticias/20200116/gripe-comienza-llenar-urgencias/1995719.shtml

Ya está aquí la gripe

https://www.rtve.es/alacarta/audios/a-su-salud/su-salud-ya-esta-aqui-gripe-17-01-20/5486044/

Cómo prevenir el contagio

https://www.rtve.es/alacarta/audios/14-horas/14-horas-sabemos-del-coronavirus-como-prevenir-contagio/5489805/

Llegara a España?

https://www.rtve.es/alacarta/videos/a-partir-de-hoy/llegara-gripe-china-espana/5494920/

Psicosis por el corona

https://www.rtve.es/alacarta/audios/gente-despierta/gente-despierta-enfermera-saturada-escena/5494599/

FEBRERO

Simó partidario de rebajar el miedo

https://www.rtve.es/alacarta/audios/14-horas-fin-de-semana/14-horas-fin-semana-fernando-simo-partidario-rebajar-miedo-coronavirus-espana-solo-caso-bajo-control-sin-sintomas/54998


# Represión y disturbios

La situacion actual incrementa el numero de denuncias y abusos de autoridad, desabastecimiento, desinformación, abuso de poder, manipulacion de los medios causan la crispacion de los ciudadanos, pero cual es el momento que estallan y porque.


Puede una pandemia provocar disturbios segun factores claros como, denuncias a ciudadanos en contra de derechos fundamentales, o el abuso de la fuerza por parte de la autoridad ?

Son los disturbios claramente vinculados a la presencia policial ? y el aumento de sus injustas acciones ?, el numero de multas y su concentracion en las areas de las protestas ? eso desciben en nature . (todo: añadir funciones en el simulador)

A mathematical model of the London riots and their policing

https://www.nature.com/articles/srep01303#Sec12


Denuncias y arrestos vinculadas al estado de alarma


https://www.rtve.es/noticias/20200324/mas-102000-denuncias-932-detenidos-coronavirus/2010719.shtml


102 mil denuncias 938 arrestados


martes 24 marzo 20 mil denuncias 130 arrestados
 

Vídeo "Abusos Policiales en el Marco del Coronavirus"

https://youtu.be/FsYahlyihn8




# Estimaciones

     - Un futuro donde hay vacuna antes o despues y nada de esto ha pasado y solo queda el rastro de desastres desencadenados y la conciencia social del problema de pandemia

     - Leyes pandemia, leyes en nombre de la prevencion de pandemia, como siempre nos protegen de todo, datos, seguridad social , es muy probable que algun gobierno se le ocurra la idea de limitar las libertades de las persones de manera perpetua .
     
     - Un futuro donde se receta un tratamiento para todo el mundo hasta que haya una vacuna o la poblacion se inmunice

     - Un futuro en el que el control de todos los movimientos de los ciudadanos sean controlados telematicamente por ley
    
     - Un futuro donde los controles transfronterizos o incluso entre ciudades y barrios sean posibles
     
     
    EDITAR LO QUE SE OS OCURRA
     ...... 


