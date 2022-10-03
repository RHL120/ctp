module Main where

-- I know I could use maybe
-- but this is how the exercise was presented
data Option a
  = Valid a
  | Invalid

--identity
ret :: a -> Option a
ret = Valid

--composition
compose :: (a -> Option b) -> (b -> Option c) -> (a -> Option c)
compose f g x =
  case f x of
    Valid y -> g y
    Invalid -> Invalid

main :: IO ()
main = putStrLn "hello"
