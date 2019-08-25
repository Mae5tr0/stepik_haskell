module S4T4 where

import S4T3

instance Functor PrsE where
  fmap f p = PrsE f' where
    f' s = (\(a, s') -> (f a, s')) <$> runPrsE p s

instance Applicative PrsE where
  pure x = PrsE f where
    f s = Right (x, s)

  (<*>) pf pv = PrsE f where
    f s = do
      (g, s')  <- runPrsE pf s
      (a, s'') <- runPrsE pv s'
      return (g a, s'')

