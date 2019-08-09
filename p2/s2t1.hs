module S2T1 where

import Control.Applicative (ZipList(ZipList), getZipList)

(>$<) f x = getZipList $ f <$> ZipList x
(>*<) f1 f2 = getZipList $ ZipList f1 <*> ZipList f2

infixl 4 >$< 
infixl 4 >*<
