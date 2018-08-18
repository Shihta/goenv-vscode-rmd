package main

import (
	"fmt"

	"github.com/Shihta/gotest/libb"
)

func main() {
	fmt.Println("Hello, World bbbbbbbbb! >>>  ____ ++++")
	fmt.Println(libb.GetFun1_1())
	xs := []float64{1, 2, 3, 4}
	avg := libb.Average(xs)
	fmt.Println(avg)
}
