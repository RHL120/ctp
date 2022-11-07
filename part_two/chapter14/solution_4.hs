{-# LANGUAGE TypeFamilies #-}

class Representable f where
  type Rep f :: *
  tabulate :: (Rep f -> x) -> f x
  index :: f x -> Rep f -> x

data Stream x =
  Cons x (Stream x)

instance Representable Stream where
  type Rep Stream = Int
  tabulate f = Cons (f 0) (tabulate (f . (+ 1)))
  index (Cons b bs) 0 = b
  index (Cons b bs) n = index bs (n - 1)

square :: Int -> Int
square x = x * x

mem :: Stream Int
mem = tabulate square
