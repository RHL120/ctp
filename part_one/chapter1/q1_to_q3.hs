module Main where

--I know the book said to not use haskell but I simply can not resist
myId :: a -> a
myId x = x

myCompose :: (a -> b) -> (b -> c) -> (a -> c)
myCompose f g = \x -> g (f x)

addOne :: Int -> Int
addOne = (1 +)

main :: IO ()
main = do
  print (addOne 12)
  print (myCompose myId addOne 12)
