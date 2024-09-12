module Main where

myLast :: [a] -> Maybe a
myLast [] = Nothing
myLast (x : xs) = if not (null xs) then myLast xs else Just x

-- main = print (myLast [4, 1, 2, 3, 11])

myButLast :: [a] -> Maybe a
myButLast [] = Nothing
myButLast (x : (_ : [])) = Just x
myButLast (_ : xs) = myButLast xs

-- main = print (myButLast [4, 1, 2, 3, 11])

main :: IO ()
main = print (myButLast [4, 1, 2, 3, 11])
