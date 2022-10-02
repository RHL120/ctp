package main

import (
	"fmt"
	"math/rand"
	"time"
)

//Question 1:
func memoize[A comparable, B comparable](f func(A) B) func(A) B {
	dict := make(map[A]B)
	return func(x A) B {
		val, ok := dict[x]
		if !ok {
			val = f(x)
		}
		return val
	}
}

func isPrime(n int) bool {
	for i := n; i > 1; i-- {
		if n%i == 0 {
			return false
		}
	}
	return true
}

func rSeed(seed int64) int {
	rand.Seed(seed)
	return rand.Int()
}

func main() {
	f := memoize(isPrime)
	a := time.Now()
	f(113)
	fmt.Printf("Took: %v \n", time.Now().Sub(a))
	a = time.Now()
	f(113)
	fmt.Printf("Took: %v \n", time.Now().Sub(a))
	//Question 3:
	memRSeed := memoize(rSeed)
	fmt.Printf("Original: %d, memoized: %d\n", rSeed(12), memRSeed(12))
	fmt.Printf("Original: %d, memoized: %d\n", rSeed(12), memRSeed(12))

}
