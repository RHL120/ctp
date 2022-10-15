module Main where

--Question1:
natMaybeList :: Maybe a -> [a]
natMaybeList Nothing = []
natMaybeList (Just x) = [x]

-- fmap f . natMaybeList Nothing = fmap f [] = []
-- natMaybeList . fmap f Nothing =  natMaybeList Nothing = []
-- thus the 2 above are equal
-- fmap f . natMaybeList (Just x) = fmap f [x] = [f x]
-- natMaybeList . fmap f (Just x) = natMaybeList (Just (f x)) = [x]
-- thust the 2 above are equal
main :: IO ()
main = return ()
