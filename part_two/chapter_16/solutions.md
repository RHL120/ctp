# Chapter 16
## Question 1
```haskell
--I did not understand the question so I stole https://danshiebler.com/2018-11-10-category-solutions/
--and reformulated it a little bit
a :: (a -> b) -> (x -> a) -> x -> b
a a2 = (.) a2

b :: ((x -> a) -> (x -> b)) -> (a -> b)
b conv = \x -> (x id) x
```
## Question 2
