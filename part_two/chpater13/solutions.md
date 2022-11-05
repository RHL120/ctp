# Chapter 13
## Question1:
`
f :: a -> b
f' :: b -> a
f . f' = id
e * a = a
f (a * b) = f a * f b
f (e * b) = f e * f b = f b
`
## Question2:
The empty list is defined as the identity of list concatination:
[] ++ [a] = [a] ++ [] = [a]
One is the identity of multiplication:
1 * a = a * 1 = a.
12 can be expressed as:
[1, 2, 3, 2]
[1, 3, 4]
[1, 12]
[1, 2, 6]
[2, 6]
[1, 3, 4]
[3, 4]
[2, 2, 3]
[1, 2, 2, 3]
I guess it could be written with an arbitrary number of 1's in the list so there
could be an infinite number of lists representing any number. Not sure which answer
is expected.
