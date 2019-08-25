module S1T1 where


data Triple a = Tr a a a  deriving (Eq,Show)

instance Foldable Triple where
  foldr f ini (Tr x y z) = f x . f y . f z $ ini
  foldl f ini (Tr x y z) = ini `f` x `f` y `f` z


-- foldr (++) "!!" (Tr "ab" "cd" "efg")
-- "abcdefg!!"
-- foldl (++) "!!" (Tr "ab" "cd" "efg")
-- "!!abcdefg"
