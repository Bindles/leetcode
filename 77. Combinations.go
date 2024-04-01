package main

import (
	"fmt"
	"math/big"
)

func main() {
	n, k := 4, 2

	// Call the functions and print the results
	fmt.Println("Combination using bitmask:")
	fmt.Println(combine1(n, k))

	fmt.Println("Combination using DFS:")
	fmt.Println(combine2(n, k))

	fmt.Println("Combination using DFS (Variant 2):")
	fmt.Println(combine3(n, k))
}

// SOL 1: Combination using bitmask
func combine1(n, k int) [][]int {
	var results [][]int
	nums := make([]int, n)
	for i := 0; i < n; i++ {
		nums[i] = i + 1
	}

	bitmask := big.NewInt(1)
	bitmask.Lsh(bitmask, uint(k)).Sub(bitmask, big.NewInt(1))
	for bitmask.Cmp(big.NewInt(1 << uint(n))) < 0 {
		var subset []int
		for i := 0; i < n; i++ {
			if bitmask.Bit(i) == 1 {
				subset = append(subset, nums[i])
			}
		}
		if len(subset) == k {
			results = append(results, subset)
		}
		bitmask.Add(bitmask, big.NewInt(1))
	}
	return results
}

// SOL 2: Combination using DFS
func combine2(n int, k int) [][]int {
	var res [][]int
	dfs(&res, nil, 1, n, k)
	return res
}

func dfs(res *[][]int, path []int, start, n, k int) {
	if len(path) == k {
		*res = append(*res, path)
		return
	}
	for i := start; i <= n; i++ {
		// Don't do this, as slice in Go is essentially a pointer.
		// dfs(res, append(path, i), i+1, n, k)

		// Create a transient slice.
		temp := append([]int{}, path...)
		dfs(res, append(temp, i), i+1, n, k)
	}
}

// SOL 3: Combination using DFS (Variant 2)
func combine3(n, k int) [][]int {
	var ans [][]int

	var dfs func([]int, int)
	dfs = func(path []int, prev int) {
		if len(path) == k {
			temp := make([]int, k)
			copy(temp, path)
			ans = append(ans, temp)
		}

		for i := prev; i <= n; i++ {
			path = append(path, i)
			dfs(path, i+1)
			path = path[:len(path)-1]
		}
	}

	dfs([]int{}, 1)

	return ans
}
