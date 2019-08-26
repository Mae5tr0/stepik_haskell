module S4T4 where 

import Data.Char(isDigit)

findDigit :: [Char] -> Maybe Char

findDigitOrX :: [Char] -> Char
findDigitOrX str = case findDigit str of
                     Nothing -> 'X'
                     Just x -> x
