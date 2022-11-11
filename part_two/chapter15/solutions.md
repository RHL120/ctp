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
