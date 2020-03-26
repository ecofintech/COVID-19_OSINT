 {-# LANGUAGE DeriveDataTypeable #-}
import System.Environment
import System.Exit

import Distribution.Simple
import Data.List.Ordered
import Graphics.EasyPlot
import System.Console.CmdArgs


-- Generate propagation list, R0 , number of cycles, infection rate

propagationList fact e tc = nub . sort . map (\x->  fromIntegral ( ceiling ((tc*fact^x)/100) )) $ [1..e]




riotrate = 0.1

-- Log scale
-- toplotc d c = map (\x-> (realToFrac $ x*d, log . realToFrac $ c !! x)) [1 .. length c - 1]

-- Exponent
toplotc d c = map (\x-> (realToFrac $ x*d,  realToFrac $ c !! x)) [1 .. length c - 1]



plotcovid banner =  plot X11 . Data2D [Title banner,Style Points] []

plotcovidpng banner =  plot (PNG ("plot"++banner++".png")) . Data2D [Title banner,Style Points] []

-- n persons in contact, spread rate, recovered, in hospital, danger zone, dead, incubation cycles, incubation days

prediction  :: (RealFrac a1, Integral b, Real a2, Fractional a2) =>  a1 -> a1 -> a2 -> a2 -> a2 -> a2 -> b -> Int -> Float -> Float ->  Float -> Float -> IO Bool

prediction pc tc recov hosprate ucirate dead dm incubation arr delay police imigration = do 

        -- rate map infected
        let est_rate = propagationList pc dm tc ++ (reverse $ propagationList pc dm tc)


        let mapRate f = map ( \(x,y)-> (realToFrac x, realToFrac y) ) . toplotc incubation $ map f est_rate

        --rate infected to hospitalized
        let est_hosp = mapRate (\x-> (hosprate*x)/100)
        
        --rate infected uci
        let est_uci = mapRate (\x-> (ucirate*x)/100)
        
        -- dead rate
        let est_dead = mapRate (\x-> (dead*x)/100)

        -- recovered rate
        let est_recov = mapRate (\x-> (recov*x)/100)

        -- real infected , infected - recovered
        let est_infectreal = mapRate (\x-> x - (recov*x)/100)

        let lastday = fst (last est_infectreal)

 

        -- arrested
        let arrested = map (\x-> (x, (x*arr)) ) [1..lastday]

        --print $ maximum est_rate
 
        -- riots 

        let riot = map (\(x,y)-> ( x + delay , y*riotrate) ) est_infectreal


        --policing
        let policed =  map (\x-> ( 130 + x,  (x*police)) ) [1..lastday]

        -- sabotage of commerce and infrastructure
        let pillaged =  map (\x-> (x, (x*arr)) ) [1..lastday]

        -- imigration factor
        let imigrationd =   map (\x-> (150  + x, (x*imigration)) ) [1..lastday]


        -- corruption , weekly cases

        -- let leftparty = 

        -- let rightparty = 



        let plotdata = [ 
               Data2D [Title "Affected", Color Blue, Style Lines] [] est_infectreal , 
               Data2D [Title "Danger", Color Orange, Style Lines] [] est_uci , 
               Data2D [Title "Hospital", Color Yellow, Style Lines] [] est_hosp , 
               Data2D [Title "Dead", Color Red, Style Lines] [] est_dead, 
               Data2D [Title "Recovered", Color Green, Style Lines] [] est_recov,
               Data2D [Title "Arrested", Color Magenta, Style Lines] [] arrested,
                Data2D [Title "Riots", Color Cyan, Style Lines] [] riot,
               Data2D [Title "Police", Color Violet, Style Lines] [] policed,
               Data2D [Title "Imigration", Color Black, Style Lines] [] imigrationd ]

        -- Linux
        plot' [Interactive] X11 plotdata
        
        -- Windows
        --plot' [Interactive] Windows plotdata        
        
        plot (PNG "plot_prediction.png") plotdata
        




data Greeter = Greeter { cr :: Float, ir :: Float , rr :: Float, hr :: Float, dr :: Float,  kr :: Float, nc :: Int, inr :: Int, rio :: Float , prd :: Float, imr :: Float, pil ::Int, sp ::Float} deriving (Show, Data, Typeable)

options :: Greeter
options = Greeter { 
     cr = 1 &= explicit &= name "contact_rate" &= help "Middle number of contacts"
   , ir = 1 &= explicit &= name "infected_rate" &= help "Number of infected vs tests realized"
   , rr = 1 &= explicit &= name "recovered" &= help "Recovered rate, Infected vs recovered persons"
   , hr = 1 &= explicit &= name "hospital" &= help "Hospitalization rate, invected vs hospitalizated persons"
   , dr = 1 &= explicit &= name "danger" &= help "Danger rate, infected vs danger state infected people"
   , kr = 1 &= explicit &= name "dead" &= help "Dead rate , infected vs dead people"
   , nc = 1 &= explicit &= name "cycles" &= help "Number of incubation cycles"
   , rio = 1 &= explicit &= name "arrested" &= help "Riots in time, last numer of arrested people in a day "
   , prd = 1 &= explicit &= name "riotdelay" &= help "Time lag to prepare a riot and execute)"
   , imr = 1 &= explicit &= name "imigration_rate" &= help "Rate of imigrants growth, people comming to the country per day (Cooming soon)"
   , pil = 1 &= explicit &= name "pillage" &= help "Bandalism rate in shops or authority infrastructures, cases per day (Cooming soon)"
   , sp = 1 &= explicit &= name "street_police" &= help "Number of authority forces in the street, police x citizen opulation, the last day (Cooming soon)"
   , inr = 1 &= explicit &= name "incubation_days" &= help "Number of incubation days"
} &= program "commandargs"
 

main = do
        op <- cmdArgs options
        print $ ((cr op),(ir op),(rr op),(hr op),(dr op),(kr op),(nc op),(inr op))
        prediction (cr op) (ir op) (rr op) (hr op) (dr op) (kr op) (nc op) (inr op) (rio op) (prd op) (sp op) (imr op)