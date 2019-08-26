module S5T4 where

data Tree a = Leaf a | Node (Tree a) (Tree a)

avg :: Tree Int -> Int
avg t =
    let (c,s) = go t
    in s `div` c
  where
    go :: Tree Int -> (Int,Int)
    go (Leaf x) = (1, x)    
    go (Node l r) = (,) (fst rl + fst rr) (snd rl + snd rr)
      where
        rl = go l
        rr = go r
