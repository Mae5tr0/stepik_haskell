module S1T4 where

isPalindrome :: Eq a => [a] -> Bool
isPalindrome a = reverse a == a
