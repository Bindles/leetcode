// Go2
package main

import (
	"fmt"
    //"sort"
    //"slices"
	"strings"
)

func main() {
	mySlice := []int{10, 20, 30, 40, 50}
    //aSlice := mySlice

	// Get the last element
	lastElement := mySlice[len(mySlice)-1]

	fmt.Printf("Last element: %d\n", lastElement)

	wordstr := "Hey World"
	words := strings.Split(wordstr, " ")

    // Get the last element
	lastw := words[len(words)-1]
    fmt.Printf("Last element: %d\n", lastw)
	fmt.Println(words)
    fmt.Println(words[len(words)-1])
		fmt.Println(words, lastw)


}
