module S1T3 where

instance Functor Tree where
  fmap f (Leaf x) = Leaf $ fmap f x
  fmap f (Branch l x r) = Branch (fmap f l) (fmap f x) (fmap f r)
