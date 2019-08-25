module S4T1 where

newtype Prs a = Prs { runPrs :: String -> Maybe (a, String) }

instance Functor Prs where
  fmap f p = Prs f' where
    f' s = (\(a, s') -> (f a, s')) <$> runPrs p s

anyChr :: Prs Char
anyChr = Prs f where
  f "" = Nothing
  f (c:cs) = Just (c, cs)
