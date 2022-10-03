module Main where

-- Question 1
-- I know I could use maybe
-- but this is how the exercise was presented
data Option a
  = Valid a
  | Invalid
  deriving (Show)

--identity
ret :: a -> Option a
ret = Valid

--composition
compose :: (b -> Option c) -> (a -> Option b) -> (a -> Option c)
compose f g x =
  case g x of
    Valid y -> f y
    Invalid -> Invalid

-- Question 2:
safeReciprocal :: (Fractional a, Eq a) => a -> Option a
safeReciprocal x
  | x == 0 = Invalid
  | otherwise = Valid $ 1 / x

-- Question 3:
safeRoot :: (Floating a, Ord a) => a -> Option a
safeRoot x
  | x < 0 = Invalid
  | otherwise = Valid $ sqrt x

rootRecip :: (Floating a, Ord a) => a -> Option a
rootRecip = compose safeRoot safeReciprocal

main :: IO ()
main = do
  print $ safeRoot (-1)
  print $ safeReciprocal 0
  print $ safeRoot 4
  print $ safeReciprocal 1
  print $ rootRecip 1
