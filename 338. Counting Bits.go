// 338. Counting Bits
package main

import (
	"fmt"
	"strconv"
)

func countBits(n int) []int {
	result := make([]int, n+1)
	for i := 0; i <= n; i++ {
		binaryStr := strconv.FormatInt(int64(i), 2)
		count := 0
		for _, char := range binaryStr {
			if char == '1' {
				count++
			}
		}
		result[i] = count
	}
	return result
}

func main() {
	n := 5
	fmt.Println(countBits(n)) // Output: [0 1 1 2 1 2]
}
