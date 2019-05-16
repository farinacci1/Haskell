--4.1 new from old
-- check if even
isEven :: Integral a => a -> Bool
isEven n = n `mod` 2 == 0
-- split a list on nth element
splitAt :: Int -> [a] -> ([a],[a])
splitAt n xs = (take n xs, drop n xs)
--reciprocal
recip :: Fractional a => a -> a
recip n = 1/n

--4.2 Conditional expressions
--absolute value
abs :: Int -> Int
abs n = if n >= 0 then n else -n
--nested conditionals
signnum :: Int -> Int
signnum n = if n < 0 then -1 else
    if n == 0 then 0 else 1

--4.3 Guarded equations
--sequence of logical expressions used to choose between sequence of results of same type
abs2 n | n >= 0 = n
       | otherwise = -n
-- '|' means 'such that' and otherwise is a standard prelude to end guards
-- otherwise is not needed but is just used to handle all left over cases
signum2 n | n < 0 = -1
          | n == 0  = 0
          |otherwise = 1

--4.4 pattern matching
not :: Bool -> Bool
not False = True
not True = False
--operator
(&&) :: Bool -> Bool -> Bool
True && True = True
False && False = False
False && True = False
True && False = False
-- simplify False expressions with wildcard for anytype: _ && _ = False
--Tuple patterns
-- select first
first :: (a,b) -> a
first (x,_) = x
--select second
second :: (a,b) -> b
second (_,y) = y

--4.5 lambda expressions
-- Lambda expressions are nameless functions
-- '\' represents greek letter Lambda
add :: Int -> (Int -> Int)
add = \x -> (\y -> x + y)
-- Lambda expressions can be used to avoid naming function that is only refrenced once in program
odds :: Int -> [Int]
odds n = map (\x -> x*2 + 1)[0..n-1]
--same as below:
-- odds :: Int -> [Int]
-- odds n = map f[0 .. n-1]
--      where f x = x * 2 + 1

-- 4.6 operator section
-- functions such as + are called operators
-- define (+) :: Int -> Int -> Int

--4.8 Exercises
-- split a list on in half
halve :: [a] -> ([a],[a])
halve xs = (take n xs, drop n xs)
    where n = length xs `div` 2

-- logical or '||' operator
(||) :: Bool -> Bool -> Bool
False || False = False
_ || _ = True

--recall mult :: Int -> Int -> Int -> Int
-- mult x y z = x * y * z
-- write mult as lambda expression
mult' = \x ->(\y ->(\z -> x * y * z))
