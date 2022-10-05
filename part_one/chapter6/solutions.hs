module Main where

--Question 1: Show that Maybe a is isomorphic to Either () a
--To show that Maybe a is isomorphic to Either () a we have to show that there
--exists an f that takes a Maybe a and gives an Either () a and an f' that is the
--inverse of f
f :: Maybe a -> Either () a
f Nothing = Left ()
f (Just x) = Right x

f' :: Either () a -> Maybe a
f' (Left _) = Nothing
f' (Right x) = Just x

main :: IO ()
main = return ()
