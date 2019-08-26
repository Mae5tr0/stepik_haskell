module S4T5 where

maybeToList :: Maybe a -> [a]
maybeToList (Just x) = x : []
maybeToList Nothing = []

listToMaybe :: [a] -> Maybe a
listToMaybe [] = Nothing
listToMaybe (x:xs) = Just x
