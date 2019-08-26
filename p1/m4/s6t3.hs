module S6T3 where

import Prelude hiding (lookup)
import qualified Data.List as L

class MapLike m where
    empty :: m k v
    lookup :: Ord k => k -> m k v -> Maybe v
    insert :: Ord k => k -> v -> m k v -> m k v
    delete :: Ord k => k -> m k v -> m k v
    fromList :: Ord k => [(k,v)] -> m k v
    fromList [] = empty
    fromList ((k,v):xs) = insert k v (fromList xs)

newtype ListMap k v = ListMap { getListMap :: [(k,v)] }
    deriving (Eq,Show)
    
instance MapLike ListMap where
   empty = ListMap []
   
   lookup key (ListMap ([])) = Nothing
   lookup searchKey (ListMap ((key,value):xs)) 
     | searchKey == key = Just value
     | otherwise        = lookup searchKey $ ListMap xs
  
   insert key value (ListMap ([])) = ListMap [(key,value)]
   insert key value (ListMap (x@(k,v):xs))
     | k == key  = ListMap ((key, value):xs)
     | otherwise = ListMap (x:xss)
    where 
     (ListMap xss) = insert key value (ListMap xs)
     
   
   delete key (ListMap xs) = ListMap (filter (\(k,_) -> key /= k) xs)
