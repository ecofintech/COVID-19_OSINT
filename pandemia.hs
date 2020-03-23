 {-# LANGUAGE DeriveDataTypeable #-}
import System.Environment
import System.Exit

import Distribution.Simple
import Data.List.Ordered
-- import qualified Data.List as A
import Graphics.EasyPlot
import System.Console.CmdArgs

-- propagationList fact e tc = nub ( sort (map fromIntegral (map ceiling (map (\x-> (tc*fact^x)/100 ) [1..e])) ))
propagationList fact e tc = nub . sort . map (\x->  fromIntegral ( ceiling ((tc*fact^x)/100) )) $ [1..e]

est_covidp pc tc dm = map (\x -> div (x*pc*100) tc) [1..dm]

est_covid = est_covidp


-- toplotc d c = map (\x-> (realToFrac $ x*d, log . realToFrac $ c !! x)) [1 .. length c - 1]
toplotc d c = map (\x-> (realToFrac $ x*d,  realToFrac $ c !! x)) [1 .. length c - 1]



plotcovid banner =  plot X11 . Data2D [Title banner,Style Points] []

plotcovidpng banner =  plot (PNG ("plot"++banner++".png")) . Data2D [Title banner,Style Points] []

-- n persons in contact, spread rate, recovered, in hospital, danger zone, dead, incubation cycles, incubation days

prediction  :: (RealFrac a1, Integral b, Real a2, Fractional a2) =>  a1 -> a1 -> a2 -> a2 -> a2 -> a2 -> b -> Int -> IO Bool

prediction pc tc recov hosprate ucirate dead dm incubation = do 

        -- rate map infected
        let est_rate = propagationList pc dm tc
        
        let mapRate f = map ( \(x,y)-> (realToFrac x, realToFrac y) ) . toplotc incubation $ map f est_rate

        --rate infected to hospitalized
        let est_hosp = mapRate (\x-> (hosprate*x)/100)
        print est_hosp
        --rate infected uci
        let est_uci = mapRate (\x-> (ucirate*x)/100)
        
        -- dead rate
        let est_dead = mapRate (\x-> (dead*x)/100)

        -- recovered rate
        let est_recov = mapRate (\x-> (recov*x)/100)

        let est_infect = mapRate id
        
        print est_infect
        
        let plotdata = [ 
               Data2D [Title "Covid 19 prevision infectados", Color Blue, Style Lines] [] est_infect , 
               Data2D [Title "Covid 19 prevision UCI", Color Orange, Style Lines] [] est_uci , 
               Data2D [Title "Covid 19 prevision hospitalizados", Color Yellow, Style Lines] [] est_hosp , 
               Data2D [Title "Covid 19 prevision muertos", Color Red, Style Lines] [] est_dead, 
               Data2D [Title "Covid 19 prevision recuperados", Color Green, Style Lines] [] est_recov ]

        -- Linux
        plot' [Interactive] X11 plotdata
        
        -- Windows
        --plot' [Interactive] Windows plotdata        
        
        plot (PNG "plot_prediction.png") plotdata
        

data Greeter = Greeter { cr :: Float, ir :: Float , rr :: Float, hr :: Float, dr :: Float,  kr :: Float, nc :: Int, inr :: Int, rio :: Int , imr :: Int, pil ::Int, sp ::Int} deriving (Show, Data, Typeable)
options :: Greeter
options = Greeter { 
     cr = 1 &= explicit &= name "contact_rate" &= help "Middle number of contacts"
   , ir = 1 &= explicit &= name "infected_rate" &= help "Number of infected vs tests realized"
   , rr = 1 &= explicit &= name "recovered" &= help "Recovered rate, Infected vs recovered persons"
   , hr = 1 &= explicit &= name "hospital" &= help "Hospitalization rate, invected vs hospitalizated persons"
   , dr = 1 &= explicit &= name "danger" &= help "Danger rate, infected vs danger state infected people"
   , kr = 1 &= explicit &= name "dead" &= help "Dead rate , infected vs dead people"
   , nc = 1 &= explicit &= name "cycles" &= help "Number of incubation cycles"
   , rio = 1 &= explicit &= name "riots" &= help "Riots in time"
   , imr = 1 &= explicit &= name "imigration_rate" &= help "Rate of imigrants growth"
   , pil = 1 &= explicit &= name "pillage" &= help "Bandalism rate in shops or authority infrastructures, cases per day"
   , sp = 1 &= explicit &= name "street_police" &= help "Number of authority forces in the street, police x citizens"
   , inr = 1 &= explicit &= name "incubation_days" &= help "Number of incubation days"
} &= program "commandargs"
 

main = do
        op <- cmdArgs options
        print $ ((cr op),(ir op),(rr op),(hr op),(dr op),(kr op),(nc op),(inr op))
        prediction (cr op) (ir op) (rr op) (hr op) (dr op) (kr op) (nc op) (inr op)