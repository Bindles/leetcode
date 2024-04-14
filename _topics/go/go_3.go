package main

import (
    "fmt"
    "strings"
    "strconv"
)

func main() {
    stringsx()
    intsx()
 }

func stringsx() {
    // String Declaration
    // Strings are declared using double quotes ("").
    var str string = "Hello, Go!"
    fmt.Println("String Declaration:", str)

    // String Literals
    // String literals are raw string literals (delimited by backticks) and interpreted string literals (delimited by double quotes).
    rawStr := `This is a raw string literal`
    interpretedStr := "This is an interpreted string literal"
    fmt.Println("String Literals:")
    fmt.Println("Raw String Literal:", rawStr)
    fmt.Println("Interpreted String Literal:", interpretedStr)

    // String Length
    // The length of a string can be obtained using the len() function.
    str = "Hello, Go!"
    length := len(str)
    fmt.Println("String Length:", length)

    // String Indexing
    // Individual characters of a string can be accessed using square brackets [] and the zero-based index.
    str = "Hello, Go!"
    char := str[0]
    fmt.Println("String Indexing:", string(char))

    // String Concatenation
    // Strings can be concatenated using the + operator or the fmt.Sprintf() function.
    str1 := "Hello"
    str2 := "Go!"
    concatenatedStr := str1 + ", " + str2
    fmt.Println("String Concatenation:", concatenatedStr)

    // Common Built-in Methods in strings Package
    // The strings package in Go provides various functions for manipulating strings.
    // Some of the most common ones include:
    // 1. Contains: Checks if a string contains a substring.
    // 2. Split: Splits a string into substrings based on a separator.
    // 3. Join: Joins an array of strings into a single string using a separator.
    // 4. Trim: Trims leading and trailing whitespace from a string.
    // 5. ToUpper and ToLower: Converts a string to uppercase or lowercase.
    // 6. Index and LastIndex: Finds the index of the first or last occurrence of a substring.
    // 7. Replace: Replaces all occurrences of a substring with another substring.
    fmt.Println("Common Built-in Methods in strings Package:")
    fmt.Println("Contains:", strings.Contains("Hello, Go!", "Go"))
    fmt.Println("Split:", strings.Split("apple,orange,banana", ","))
    fmt.Println("Join:", strings.Join([]string{"apple", "orange", "banana"}, ","))
    fmt.Println("Trim:", strings.Trim("   Hello, Go!   ", " "))
    fmt.Println("ToUpper:", strings.ToUpper("hello"))
    fmt.Println("ToLower:", strings.ToLower("HELLO"))
    fmt.Println("Index:", strings.Index("Hello, Go!", "Go"))
    fmt.Println("LastIndex:", strings.LastIndex("Hello, Go! Go! Go!", "Go"))
    fmt.Println("Replace:", strings.Replace("Hello, Go! Go! Go!", "Go", "Golang", -1))

    fmt.Println(reverse("race"))
    ispal("racecar")
    fmt.Println(countvowel("Arithmetic"))
    fmt.Println(countvowels("Arithmetic"))
    capfirst("hey")
    capfirstb("hello")
}

//q1-a
func reverse(s string) (result string) {
    for _,char := range s {
      result = string(char) + result
    }
    return 
  }
//q1-b
func ispal(word string) {
    
    fmt.Println(word == reverse(word))
}
//q2-vowel
func countvowel(s string) int {
    return strings.Count(s, "i")
}
//q2-vowel
func countvowels(s string) int {
    count := 0
    vowels := "aeiouAEIOU"
    for _,char := range s{
        if strings.ContainsRune(vowels, char){
            count++
        }
    }
    return count
}
//q3-a
func capfirst(word string) {
    fmt.Println(strings.Title(word))
}
//q3-b
func capfirstb(word string) {
    fmt.Println(strings.ToUpper(word[0:1])+ word[1:])
}


func intsx() {
    a := 12
    var b int = 15
    fmt.Println(a + b)
    // Using if-else statement for conditional printing
    if a%2 == 0 {
        fmt.Println("even")
    } else {
        fmt.Println("odd")
    }

	// Declare variables of different types
	var num_ex int = 42
	var str_ex string = "Hello, world"
	var float_ex float64 = 3.14
	var bool_x bool = true

	// Display the types of variables
	fmt.Printf("Type of num_ex: %T\n", num_ex)
	fmt.Printf("Type of str_ex: %T\n", str_ex)
	fmt.Printf("Type of float_ex: %T\n", float_ex)
	fmt.Printf("Type of bool_x: %T\n", bool_x)

    //convert int to float [n]
    atofloat := int(a)
    //xx  := string(a)
    fmt.Printf("a => float: %T\n", atofloat)
    // Convert int to string
    num := 42
    str := strconv.Itoa(num)
    fmt.Println(str) // Output: "42"

    // Convert string to int
    //str = "123"
    num, _ = strconv.Atoi(str)
    fmt.Println(num) // Output: 123

//end of main() function

    fmt.Println(ToString())
    fmt.Println(ToInt())
    fmt.Println(ToBoth())

}

func ToString() string {
    // Convert int to string
    numz := 42
    fmt.Printf("Convert int=>str\n%d (%T)\n", numz, numz)
    strz := strconv.Itoa(numz)
    fmt.Printf("%s (%T)\n", strz, strz)
    return strz
}

func ToInt() int {
    // Convert string to int
    strx := "123"
    fmt.Printf("Convert str=>int\n%s (%T)\n", strx, strx)
    numx, _ := strconv.Atoi(strx)
    fmt.Printf("%d (%T)\n", numx, numx)
    return numx
}

func ToBoth() int {
    // Define num
    num := 42
    fmt.Printf("Convert int=>float=>str=>int\n%d (%T)\n", num, num)

    // Convert int to float
    floatNum, _ := strconv.ParseFloat(strconv.FormatInt(int64(num), 10), 64)
    fmt.Printf("%f (%T)\n", floatNum, floatNum)

    // Convert float to string
    str := strconv.FormatFloat(floatNum, 'f', -1, 64)
    fmt.Printf("%s (%T)\n", str, str)

    // Convert string to int
    numInt, _ := strconv.Atoi(str)
    fmt.Printf("%d (%T)\n", numInt, numInt)
    return numInt
}
