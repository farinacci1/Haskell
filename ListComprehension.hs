-- chapter 5 list comprehension
--square all numbers in list of integers
powerSq :: [Int] -> [Int]
powerSq xs = [x^2 | x <- xs]
-- symbol '|' means such that while symbol '<-' means draw from
-- a list can have multiple generators with successive generators followed by ','
pairAll :: [Int] -> [Int] -> [(Int,Int)]
pairAll xList yList = [(x, y) | x <- xList, y <- yList]
--concatenate a list of lists
concat :: [[a]] -> [a]
concat xs = [x | xxs <- xs, x <- xxs]
--5.2 Gaurds
--find all factors of number
factors :: Int -> [Int]
factors n = [x | x <- [1..n], n `mod` x == 0]
--check if prime
prime :: Int -> Bool
prime n = factors n == [1,n]
--find all primes up to n
primes :: Int -> [Int]
primes n = [x | x <- [2..n], prime x]
--find values for key
find :: Eq a => a -> [(a,b)] -> [b]
find k t = [v | (k', v) <- t, k == k']
--5.7   Excercises
--calcualte sum of all numbers from 1 to 100
sumPow2 = sum [x^2 |x <- [1..100] ]
--pairXY from 0 to x, 0 to y
pairXY :: Int -> Int -> [(Int, Int)]
pairXY a b= [(x,y) | x <-[0..a], y <- [0..b]]
--replicate value x times
replicate :: Int -> a -> [a]
replicate n v = [v| _ <- [1..n]]
--calculate Pythagorean triples up to n
pyth :: Int ->[(Int,Int,Int)]
pyth n = [(x,y,z)| x <- [1..n], y <- [1..n],z <-[1..n], x^2 + y^2 == z^2]
--find all perfect numbers up to n
perfects n = [x | x <- [1..n],  (sum [y | y <- [1..x], x `mod` y == 0, y /= x]) == x]
