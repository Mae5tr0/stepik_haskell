module S7T3 where

type Shopping = Writer ([String], Sum Integer) ()

purchase :: String -> Integer -> Shopping
purchase item cost = tell ([item], Sum cost)

total :: Shopping -> Integer
total = getSum . snd . execWriter

items :: Shopping -> [String]
items = fst . execWriter
