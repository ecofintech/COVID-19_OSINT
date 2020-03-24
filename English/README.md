# COVID-19_OSINT

Welcome to the: OSINT (Open-source Intelligence) Joint Task Force for Research and Communication on the SARS-COV-2/COVID-19 Pandemic.

Information search and hypothesis development. News filtering and "fake-news". Critical citizen research. Multidisciplinary open source collaboration.

Let's avoid distracting the thread of the group with sensationalist news or opinion discussions. Conspiracies (http://t.me/COVID19Cowspiranoias) and eccentric opinions can help to break the orthodoxy and the dominant discourse, but let's not let the group drift towards that. Politics is the management of public affairs by the citizens, but let's avoid politicizing the debates too much and above all, within the partisan and follower paradigms.

Cheers!


Collaborative document: https://paper.komun.org/p/covid19-OSINT

Dashboard Coronavirus SARS-COV-2/COVID-19 (Mobile)
https://www.arcgis.com/apps/opsdashboard/index.html#/85320e2ea5424dfaaa75ae62e5c06e61

# Data source CSV

https://github.com/CSSEGISandData/COVID-19

# ETE3 Genetic Analysis Tool for Tracing and Analyzing Genome Trees

https://github.com/etetoolkit/ete


# Tool for crawling fake news in supposedly serious media


https://code.montera34.com/numeroteca/homepagex



# SARS-COV-2/COVID-19 Data Analysis Tool


https://code.montera34.com/numeroteca/covid19



# Prediction tool  




![prediction plot](plot_prediction.png)



# Usage 

With the following command we would get the example plot.

It predicts more than 12 million people in Spain infected, 766 thousand people dead with the current death rate of 6% of those detected, for approximately 65 days. It must be taken into account that it is in case of not having a vaccine, with the current data extracted from articles and different sources of information. Everyone can make their own predictions as new data becomes available. We invite you to find a scenario that is not horrible.

As parameters we have used 8% recovery rate and 6% death rate of :

https://www.arcgis.com/apps/opsdashboard/index.html#/bda7594740fd40299423467b48e9ecf6

The rate of hospitalization according to:

https://www.redaccionmedica.com/secciones/sanidad-hoy/coronavirus-mortalidad-inferior-1-en-pacientes-con-menos-de-60-anos-6396

24 cycles of 7 days (the last one as an incubation period)



````
#Generate prediction

./pandemia --contact_rate 2 --infected_rate 80 --recovered 8 --hospital 25 --danger 20 --dead 6 --cycles 24 --incubation 7


#Help

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

Zoom with the + - keys

Move the space with the cursor

*For windows use the pandemic.exe executable file.


# Genome analysis 

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



Summary of comparison of original sars2004 proteins, and the different viruses from different epochs descended from sars2004. Results obtained with the --percent parameter of exonerate.



Protein M 2004 , Covid 91 %

Protein M 2004 , Batsars2020 91 %

Protein M 2004 , Batsars2015 97 %

Protein M 2004 , Batsars2010 98 %




Protein Orf1ab 2004 , Covid 37 %

Protein Orf1ab 2004 , Batsars2020 37 %

Protein Orf1ab 2004 , Batsars2015 59 %   <----- Something strange since it is more similar to 2004 than to 2010, and 2010 is very similar to 
2020 samples 

Protein Orf1ab 2004 , Batsars2010 38 %




Protein E 2004 , Covid 87 %

Protein E 2004 , Batsars2020 87 %

Protein E 2004 , Batsars2015 98 %

Protein E 2004 , Batsars2010 100 %





Protein S 2004 , Covid 42 % <------ Something abnormal in the protein s, has evolved much more than its cousin Batsars? Only in 
This protein?

Protein S 2004 , Batsars2020 55 %

Protein S 2004 , Batsars2015 55 %

Protein S 2004 , Batsars2010 56 %





SARS-COV-2/COVID-19 vs Batsars2020 -> 47 % <--- It's "cousin" from SARS-COV-2/COVID-19

SARS-COV-2/COVID-19 vs Batsars2015 -> 37 %

SARS-COV-2/COVID-19 vs Batsars2010 -> 34 % 

SARS-COV-2/COVID-19 vs Sars -> 38 % <--- It has more of 2004 than 2010 or 2015




# Possible conclusion


At different moments of time sars is reintroduced into nature, at least around 2010 and 2013, where an unmutated virus generates new generations again. Covid 19 and Batsars2020 are cousins, but both are descendants of an unknown species of sars2004. There are known escapes in the Wuhan area. 

https://www.nature.com/articles/s41591-020-0820-9?utm_source=twt_nnc&utm_medium=social&utm_campaign=naturenews&sf231596998=1

It's one of the theories put forward by nature magazine.

In the archives of the fasta folder are the genomes to check each of their own theories, they have the official reference to the source :

https://www.ncbi.nlm.nih.gov/



# Medicaments


     - Remdesivir
     
     - Hydroxychloroquine 
     
     
     
     
It seems they were already used for the sars and applied for a patent in wuhan's laboratory according to wikipedia


https://en.wikipedia.org/wiki/Wuhan_Institute_of_Virology



# Financial 

...

# FAKE NEWS vs RESPECTABLE MEANS vs GOVERNMENT

..

# Riots

The current situation increases the number of denunciations and abuses of authority, lack of supplies, disinformation, abuse of power, manipulation of the media, all of which cause tension among the citizens, but when do they explode and why?


Can a pandemic provoke disturbances according to clear factors such as, denunciations to citizens against fundamental rights, or the abuse of force by the authority?

Are the riots clearly linked to the police presence ? and the increase of their unjust actions ?, the number of fines and their concentration in protest areas ? that decrease in nature. (all: add functions in the simulator)

A mathematical model of the London riots and their policing

https://www.nature.com/articles/srep01303#Sec12
