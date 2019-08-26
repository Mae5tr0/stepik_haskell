module S5T1 where

data List a = Nil | Cons a (List a)

fromList :: List a -> [a]
fromList Nil = []
fromList (Cons x xs) = x : fromList xs 

toList :: [a] -> List a
toList = foldr Cons Nil
