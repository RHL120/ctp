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
--Question2:
type Reader = (->)

natReaderList1 :: Reader () a -> [a]
natReaderList1 _ = []

natReaderList2 :: Reader () a -> [a]
natReaderList2 r = fmap r [()]

--There is an infinite number of () lists because the list type does not have a
--specific size
--Question3:
natReaderMaybe1 :: Reader Bool a -> Maybe a
natReaderMaybe1 r = r <$> Just True

natReaderMaybe2 :: Reader Bool a -> Maybe a
natReaderMaybe2 r = r <$> Just False

main :: IO ()
main = return ()
