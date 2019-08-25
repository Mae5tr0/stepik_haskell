module S1T3 where

import Data.Monoid
import Data.Foldable

mkEndo :: Foldable t => t (a -> a) -> Endo a
mkEndo = foldMap Endo 

-- e1 = mkEndo [(+5),(*3),(^2)]
-- appEndo e1 2
-- 17
-- e2 = mkEndo (42,(*3))
-- appEndo e2 2
-- 6
