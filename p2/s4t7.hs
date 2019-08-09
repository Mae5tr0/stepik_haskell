module S4T7 where

import Control.Applicative
import Data.Char
import S4T1 
import S4T2 
import S4T5
import S4T6

mult :: Prs Int
mult = (*) <$> nat <* char '*' <*> nat

digit :: Prs Char
digit = satisfy isDigit

nat :: Prs Int
nat = read <$> many1 digit 




