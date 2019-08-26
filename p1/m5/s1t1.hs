module S1T1 where

instance Functor Point3D where
  fmap f (Point3D x y z) = Point3D (f x) (f y) (f z)
