module Main where

myLast :: [a] -> Maybe a
myLast [] = Nothing
myLast (x : xs) = if not (null xs) then myLast xs else Just x

main :: IO ()
main = print (myLast [4, 1, 2, 3, 11])
