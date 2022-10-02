package main

import (
	"fmt"
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

func main() {
	f := memoize(isPrime)
	a := time.Now()
	f(113)
	fmt.Printf("Took: %v \n", time.Now().Sub(a))
	a = time.Now()
	f(113)
	fmt.Printf("Took: %v \n", time.Now().Sub(a))
}
