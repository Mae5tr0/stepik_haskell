module S4T6 where

import Control.Applicative
import S4T1 
import S4T2 
import S4T5

many1 :: Prs a -> Prs [a]
many1 p = (:) <$> p <*> many p

