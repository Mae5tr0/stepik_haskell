module S2T6 where

import Data.Char 

delAllUpper :: String -> String
delAllUpper = unwords . filter (\x -> any isLower x) . words
