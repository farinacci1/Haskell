-- Following book Programming in Haskell by Graham Hutton
-- layout rule indent to indicate that item belongs to previous item:
-- layout rule example:
a = b + c
    where
        b = 1
        c = 2
d = a * 2
-- double of number:
double x = x + x
-- summing numbers supports both integer and floats
addList [] = 0
addList (n:ns) = n + addList ns
-- quick sort implementation
qsort [] = []
qsort (x:xs) = qsort smaller ++ [x] ++ qsort larger
    where
        smaller = [a | a <- xs, a <= x]
        larger = [b| b <- xs, b > x]
-- average of a list of integers (return type is integer):
average ns = addList ns `div` length ns

--Types and classes
--Type is a collection of related values
--type False will return 'False :: Bool'
-- type True will return True :: Bool
-- V::T means that V is a value of T
-- not:: Bool -> Bool
-- :: can also be used with expressions that have not been evaluated yet
-- e::T means evaluation of expression e will produce value of type T
--Basic types: Bool, Char, String , Int, Integer, Float, double
-- List is sequence of same type
--Example [['a','b'],['c','d','e']] :: [[char]] meaning its a list of lists of chars
--Tuple Types
-- a tuple is a finite sequence of components of possibly different types: enclosed by round parentheses, seperated by commas
--Example: (False,'a','True')
-- check if Int is even
isEven :: Int -> Bool
isEven n = n `mod` 2 == 0
-- add 2 numbers EX.add (2,2)
add :: (Int, Int) -> Int
add (x,y) = x + y
-- get all numbers from 0 to n
zeroTo :: Int -> [Int]
zeroTo n = [0..n]
-- curried functions
-- add 2 numbers EX. add' 2 2
add' :: Int -> (Int -> Int)
add' x y = x + y
--Multiply 3 numbers
mult :: Int -> (Int -> (Int -> Int))
mult x y z = x * y * z
-- class constraints
--From prelude:EXAMPLE (+) :: Num a => a -> a -> a
--Eq: equality type example (==) :: a -> a -> Bool
--Ord - ordered types are instance of equality class
--Ord example  (<) :: a -> a -> Bool
--show showable Types
--convert to String
--EX: show :: a ->String
-- read readable Types
-- convert from string to type given
-- read "False" :: Bool
-- read "123" :: Int
--other types include numeric, integral and fractional
