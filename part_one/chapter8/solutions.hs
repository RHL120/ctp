module Main where

import Control.Applicative (Const(Const))
import Data.Functor.Identity

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

--Question2:
type Maybe' a = Either (Const () a) (Identity a)

primeToMaybe :: Maybe' a -> Maybe a
primeToMaybe (Left _) = Nothing
primeToMaybe (Right (Identity x)) = Just x

maybeToPrime :: Maybe a -> Maybe' a
maybeToPrime Nothing = Left (Const ())
maybeToPrime (Just x) = Right (Identity x)
