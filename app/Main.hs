module Main where

main :: IO ()
-- basic function
square :: Float -> Float
square x = x * x

nice :: Bool -> Integer
nice x = if x then 5 else 2

-- conditions, if else then kinda thing
sign :: (Ord a1, Num a1, Num a2) => a1 -> a2
sign n
  | n > 0 = 1
  | n < 0 = -1
  | otherwise = 0

-- function with let in
mag :: Float -> Float -> Float
mag x y =
  let sqMag = square x + square y
   in sqrt sqMag

-- factorial, looping using recursion
factorial :: Integer -> Integer
factorial 0 = 1
factorial n = n * factorial (n - 1)

-- lists
l :: [Integer]
l = [1, 2, 3, 4, 5, 6]

-- la :: [Integer]
-- la = 1 : (2 : (3 : []))

sumArr :: (Num a) => [a] -> a
sumArr [] = 0
sumArr (x : xs) = x + sumArr xs

steal :: (Num a) => [a] -> Integer -> [a]
steal _ 0 = []
steal [] _ = []
-- steal (x : xs) 0 = []
steal (x : xs) n = x : steal xs (n - 1)

-- Higher order functions

-- fn :: Integer -> Integer
-- fn x = x * x

apply :: (a -> b) -> [a] -> [b]
apply _ [] = []
apply fn (x : xs) = fn x : apply fn xs

-- main = print (sumArr l)
-- main = print (steal l 4)
main = print (apply (\x -> x * x) l)
