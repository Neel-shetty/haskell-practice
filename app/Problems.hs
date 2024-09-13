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

elementAt :: [a] -> Integer -> Maybe a
elementAt (x : _) 1 = Just x
elementAt (_ : xs) i
  | i < 1 = Nothing
  | otherwise = elementAt xs (i - 1)

-- main = print (elementAt [4, 1, 2, 3, 11] 3)

myLength :: [a] -> Integer
myLength [] = 0
myLength (_ : xs) = 1 + myLength xs

-- main = print (myLength [4, 1, 2, 3, 11])

myReverse :: [a] -> [a]
myReverse [] = []
myReverse (x : xs) = myReverse xs ++ [x]

-- main = print (myReverse [4, 1, 2, 3, 11])

-- tail recursion
fac n = aux n 1
  where
    aux n acc
      | n <= 1 = acc
      | otherwise = aux (n - 1) (n * acc)

elem :: [a] -> a -> Bool
elem [] _ = False
elem (x : xs) n = if x == n then True else elem xs

main :: IO ()
main = print (fac 5)
