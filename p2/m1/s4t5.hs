module S4T5 where

import Control.Applicative
import S4T1
import S4T2

instance Alternative Prs where
  empty = Prs $ const Nothing
        
  (<|>) l r = Prs f where
    f s = runPrs l s <|> runPrs r s

satisfy :: (Char -> Bool) -> Prs Char
satisfy pr = Prs f where
  f [] = Nothing
  f (x:xs)
    | pr x      = Just (x, xs) 
    | otherwise = Nothing

char :: Char -> Prs Char
char c = satisfy (== c)

