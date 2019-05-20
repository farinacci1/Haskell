-- recursive functions in haskell
-- calculate factorial
factorial :: Int -> Int
factorial 0 = 1
factorial n = n * factorial (n - 1)
-- 6.2 recursion on list
-- compute product of list of numbers
product :: Num a => [a] -> a
product [] = 1
product (n:ns) = n * Main.product ns
--reverse a list
reverse :: [a] -> [a]
reverse [] = []
reverse (x:xs) =  Main.reverse xs ++ [x]
--implement insertion sort
insert :: (Ord a) => a -> [a] -> [a]
insert x  [] =  [x]
insert x (y:ys) | x <= y  = x : y : ys
  | otherwise = y : insert x ys
isort:: (Ord a) => [a] -> [a]
isort [] = []
isort (x:xs) = insert x (isort xs)
--6.8 Exercises
--sum all numbers from n down to 0, where n is a positive number
-- if n is a negative number return n
sumdown :: Int -> Int
sumdown 0 = 0
sumdown n | n < 0 = n |otherwise = n + sumdown (n -1)
--exponentation
(^) :: (Num a, Integral b) => a -> b -> a
x ^ 0 = 1
x ^ y = x * (x Main.^ (y - 1))
--And operator
and :: [Bool] -> Bool
and [] = True
and (False:rest) = False
and (True:rest) = Main.and rest
-- concatenate list o lists
concat :: [[a]] ->[a]
concat [] = []
concat (x:xs) = x ++ Main.concat xs
