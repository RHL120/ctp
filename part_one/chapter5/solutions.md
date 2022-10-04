# Chapter 5
## Question 1: Show that the terminal object is unique up to unique isomorphism
The book has established that the initial objects are unique up to unique isomorphism.
the initial object is the opposite of the terminal object thus we can conclude that
the terminal object is unique up to isomorphism
## Question 2: What is the product of two objects in a poset
The product category consists of:
```
p :: c -> a
q :: c -> b
m :: d -> c
p' :: d -> a
q' :: d -> b
where
 p' = p . m
 q' = q . m
```
the arrows in a poset correspond to <= so the product of 2 objects of a poset
is the greatest object less than or equal to both a and b

## Question 3: What is the co product of two objects in a poset
Inverting the answer the previous question we get the co product of 2 objects of
a poset is the lowest object greater than or equal to a and b
