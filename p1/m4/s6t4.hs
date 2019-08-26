module S6T4 where

import Prelude hiding (lookup)

class MapLike m where
    empty :: m k v
    lookup :: Ord k => k -> m k v -> Maybe v
    insert :: Ord k => k -> v -> m k v -> m k v
    delete :: Ord k => k -> m k v -> m k v
    fromList :: Ord k => [(k,v)] -> m k v
    fromList [] = empty
    fromList ((k,v):xs) = insert k v (fromList xs)
  
newtype ArrowMap k v = ArrowMap { getArrowMap :: k -> Maybe v }

instance MapLike ArrowMap where
  empty = ArrowMap $ const Nothing

  lookup k m = (getArrowMap m) k

  insert k v m = ArrowMap (\x -> if x == k then Just v else lookup x m)
  delete k m = ArrowMap (\x -> if x == k then Nothing else lookup x m)
