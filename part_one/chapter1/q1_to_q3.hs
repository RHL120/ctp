module Main where

--I know the book said to not use haskell but I simply can not resist
myId :: a -> a
myId x = x

myCompose :: (a -> b) -> (b -> c) -> (a -> c)
myCompose f g = \x -> g (f x)

main :: IO ()
main = putStr "hello"
