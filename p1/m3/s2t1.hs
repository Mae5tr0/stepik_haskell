module S2T1 where

import Data.Char

readDigits :: String -> (String, String)
readDigits xs = (takeWhile isDigit xs, dropWhile isDigit xs) 
