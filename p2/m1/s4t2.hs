module S4T2 where

import S4T1

instance Applicative Prs where
  pure x = Prs f where
    f s = Just (x, s)

  (<*>) pf pv = Prs f where
    f s = do
      (g, s')  <- runPrs pf s
      (a, s'') <- runPrs pv s'
      return (g a, s'')
