module S1T2 where

import Data.Function

multSecond = g `on` h

g = (*)
h = (snd) 
