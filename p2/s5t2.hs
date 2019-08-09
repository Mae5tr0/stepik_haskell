module S5T2 where

newtype Cmps3 f g h a = Cmps3 { getCmps3 :: f (g (h a)) } 
  deriving (Eq,Show) 

instance (Functor f, Functor g, Functor h) => Functor (Cmps3 f g h) where
  fmap k (Cmps3 x) = Cmps3 $ fmap (fmap (fmap k)) x

-- fmap (^2) $ Cmps3 [[[1],[2,3,4],[5,6]],[],[[7,8],[9,10,11]]]
-- Cmps3 {getCmps3 = [[[1],[4,9,16],[25,36]],[],[[49,64],[81,100,121]]]}
