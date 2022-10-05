package main

//Question 3:
func fmap[A interface{}, B interface{}, C interface{}](f func(B) C, g func(A) B) func(A) C {
	return func(x A) C {
		return f(g(x))
	}
}

func id(x int) int {
	return x
}

func p1(x int) int {
	return x + 1
}

func main() {
}
