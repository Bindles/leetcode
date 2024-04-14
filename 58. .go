package main

import (
	"fmt"
	"strings"
)

func main() {
	// Example usage
	s := "Hello World"
    //b|written as var
	// lw := lengthOfLastWord(s)
	// fmt.Printf("Last word: %s\n", lw)

    //a
    fmt.Println(lengthOfLastWord_con(s))
    fmt.Println(lengthOfLastWord_read(s))
    fmt.Println("My Solution [print]:")
	fmt.Println(lengthOfLastWord_p(s))
    fmt.Println("Working. . .:")
    fmt.Println(lengthOfLastWord_w(s))
    fmt.Println(lengthOfLastWord_wx(s))
}




//concise
func lengthOfLastWord_con(s string) int {
    s = strings.TrimSpace(s)
    words := strings.Split(s, " ")
    return len(words[len(words)-1])
}
//readable
func lengthOfLastWord_read(s string) int {
    s = strings.TrimSpace(s)
    words := strings.Split(s, " ")
    lastword := words[len(words)-1]
    return len(lastword)
}
//puts
func lengthOfLastWord_p(s string) int {
    s = strings.TrimSpace(s)
    words := strings.Split(s, " ")
    fmt.Println(words[len(words)-1])
    return len(words[len(words)-1])
}
//WORKING . . .
//short
func lengthOfLastWord_w(s string) string {
	words := strings.Split(s, " ")
	lastword := words[len(words)-1]
	return lastword
  
}
//long
func lengthOfLastWord_wx(s string) string {
	words := strings.Split(s, " ")
	if len(words) > 0 {
		return words[len(words)-1]
	}
	return "No words found."
}

// package main

// import (
// 	"fmt"
// 	"strings"
// )

// func lengthOfLastWord(s string) string {
// 	words := strings.Split(s, " ")
// 	if len(words) > 0 {
// 		return words[len(words)-1]
// 	}
// 	return "No words found."
// }

// func main() {
// 	// Example usage
// 	s := "Hello World"
// 	lastWord := lengthOfLastWord(s)
// 	fmt.Printf("Last word: %s\n", lastWord)
// }



// package main

// import "fmt"

// func lengthOfLastWord(s string) int {
//     words := strings.Split(s, " ")
//     fmt.Println(words[len(words)-1])
// }

// func main() {
//     // Example usage
//     var s string = "Hello World"
// }
