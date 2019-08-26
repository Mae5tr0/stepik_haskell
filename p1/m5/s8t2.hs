module S8T2 where

writerToState :: Monoid w => Writer w a -> State w a
writerToState m = state (\st -> (a, st `mappend` v))
  where
    (a,v) = runWriter m
