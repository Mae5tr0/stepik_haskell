module S4T3 where

import Data.Char(isDigit)

findDigit :: [Char] -> Maybe Char
findDigit [] = Nothing
findDigit (x:xs)
  | isDigit x = Just x
  | otherwise = findDigit xs 
