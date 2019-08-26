module S5T3 where

data Tree a = Leaf a | Node (Tree a) (Tree a)

height :: Tree a -> Int
height (Leaf _) = 0
height (Node l r) = max (height l) (height r) + 1 

size :: Tree a -> Int
size (Leaf _) = 1
size (Node l r) = size l + size r + 1
