//2164. Sort Even and Odd Indices Independently
//nums = [4,1,2,3]

package main

import (
	"fmt"
	"sort"
)

func sortEvenOdd(nums []int) []int {
	evens := make([]int, 0)
	odds := make([]int, 0)

	// Partition the numbers into evens and odds
	for i, num := range nums {
		if i%2 == 0 {
			evens = append(evens, num)
		} else {
			odds = append(odds, num)
		}
	}

	// Sort evens in non-decreasing order and odds in non-increasing order
	sort.Ints(evens)
	sort.Slice(odds, func(i, j int) bool { return odds[i] > odds[j] })

	// Merge them back into nums
	for i := range nums {
		if i%2 == 0 {
			nums[i] = evens[0]
			evens = evens[1:]
		} else {
			nums[i] = odds[0]
			odds = odds[1:]
		}
	}

	return nums
}

func main() {
	nums := []int{4, 1, 2, 3}
	fmt.Println(sortEvenOdd(nums))
}



