module S1T2 where

data Tree a = Nil | Branch (Tree a) a (Tree a) deriving (Eq, Show)

newtype Preorder a   = PreO   (Tree a)    deriving (Eq, Show)
newtype Postorder a  = PostO  (Tree a)    deriving (Eq, Show)
newtype Levelorder a = LevelO (Tree a)    deriving (Eq, Show)

instance Foldable Tree where
  foldr f ini Nil = ini
  foldr f ini (Branch l x r) = foldr f (f x (foldr f ini r)) l
        
instance Foldable Preorder where
  foldr f ini (PreO Nil) = ini
  foldr f ini (PreO (Branch l x r)) = f x (foldr f (foldr f ini (PreO r)) (PreO l))

instance Foldable Postorder where
  foldr f ini (PostO Nil) = ini
  foldr f ini (PostO (Branch l x r)) = foldr f (foldr f (f x ini) (PostO r)) (PostO l)

instance Foldable Levelorder where
  foldr f ini (LevelO Nil) = ini
  foldr f ini (LevelO tree) = helper [tree] where
    helper [] = ini
    helper (Nil:xs) = helper xs
    helper ((Branch l x r):xs) = f x (helper $ xs ++ [l, r])
        
-- tree = Branch (Branch Nil 1 (Branch Nil 2 Nil)) 3 (Branch Nil 4 Nil)
-- foldr (:) [] tree 
-- [1,2,3,4]
-- foldr (:) [] $ PreO tree
-- [3,1,2,4]
-- foldr (:) [] $ PostO tree
-- [2,1,4,3]
-- foldr (:) [] $ LevelO tree
-- [3,1,4,2]




        
