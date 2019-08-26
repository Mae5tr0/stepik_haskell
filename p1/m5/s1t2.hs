module S1T2 where

instance Functor GeomPrimitive where
  fmap f (Point x) = Point (fmap f x)
  fmap f (LineSegment x y) = LineSegment (fmap f x) (fmap f y)
