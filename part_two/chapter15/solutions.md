# Chpater 15
## Question 1
```haskell
phi x = x id
psi y z = fmap z y
phi . psi = (\a -> phi (psi x))
<=>
(phi . psi) a = phi (psi a)
              = phi ((\y z -> fmap z y) a)
	      = phi (\z -> fmap z a)
	      = (\x -> x id) (\z -> fmap z a)
	      = (\z -> fmap z a) id
	      = fmap id a
	      = a
```
## Question 2
The result of the hom functor C(a, x) on a discrete category C is to map x to 
a set containing id if x == a and to the empty set otherwise. For an arbitrary
functor F from C to Set, there are as many morphisms from C(a, a) to F a as elements
of F a. Since the empty set is the initial object of Set, each morphism from
C(a, a) to F a is a unique natural transformation.
