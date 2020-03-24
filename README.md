

Herramienta de prediccion 




![prediction plot](plot.png)



Uso 


````

runhaskell pandemia.hs --contact_rate 2 --infected_rate 10 --recovered 80 --hospital 40 --danger 20 --cycles 16 --incubation 7


runhaskell pandemia.hs --help
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


