module Main where

--I know the book said to not use haskell but I simply can not resist
--question 1
myId :: a -> a
myId x = x

--question 2
myCompose :: (a -> b) -> (b -> c) -> (a -> c)
myCompose f g = \x -> g (f x)

--question 3
addOne :: Int -> Int
addOne = (1 +)

main :: IO ()
main = do
  print (addOne 12)
  print (myCompose myId addOne 12)
