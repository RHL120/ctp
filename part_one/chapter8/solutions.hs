module Main where

--Question 1: Pair is a bifunctor
data Pair a b =
  Pair a b

class Bifunctor f where
  bimap :: (a -> b) -> (c -> d) -> f a c -> f b d
  first :: (a -> b) -> f a c -> f b c
  second :: (a -> b) -> f c a -> f c b

instance Bifunctor Pair where
  bimap f g (Pair x y) = Pair (f x) (g y)
  first f (Pair x y) = Pair (f x) y
  second f (Pair x y) = Pair x (f y)

main :: IO ()
main = return ()
