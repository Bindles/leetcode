package main

import (
    "fmt"
    //"strings"
    "strconv"
)

func main() {
    simple()
    all()

}

func simple() {
	accountAge := 2.6
    fmt.Println("Your account has existed for", accountAge, "years")
    fmt.Printf("Your account has existed for %.2f years", accountAge)
    fmt.Printf("Your account has existed for %.3f %T", accountAge, accountAge)

	// create a new "accountAgeInt" here
	accountAgeInt := int(accountAge)
	// it should be the result of casting "accountAge" to an integer

	fmt.Println("Your account has existed for", accountAgeInt, "years")
    fmt.Printf("Your account has existed for %d %T", accountAgeInt, accountAgeInt)
    
    // Convert accountAgeInt back to a floating-point number
    accountAgeFloat := float64(accountAgeInt)

    fmt.Printf("Account age as a float: %.2f %T\n", accountAgeFloat, accountAgeFloat)
}

func all() {
    accountAge := 2.6
    fmt.Println("Your account has existed for", accountAge, "years")
    fmt.Printf("Your account has existed for %.2f years\n", accountAge)
    fmt.Printf("Your account has existed for %.3f %T\n", accountAge, accountAge)

    // Convert accountAge to an integer
    accountAgeInt := int(accountAge)

    fmt.Println("Your account has existed for", accountAgeInt, "years")
    fmt.Printf("Your account has existed for %d %T\n", accountAgeInt, accountAgeInt)

    // Convert accountAgeInt back to a floating-point number
    accountAgeFloat := float64(accountAgeInt)
    fmt.Printf("Account age as a float: %.2f %T\n", accountAgeFloat, accountAgeFloat)

    // Convert accountAgeInt to a string
    accountAgeStr := strconv.Itoa(accountAgeInt)
    fmt.Printf("Account age as a string: %s %T\n", accountAgeStr, accountAgeStr)

    // Convert accountAgeStr to an integer
    accountAgeIntFromString, _ := strconv.Atoi(accountAgeStr)
    fmt.Printf("Account age as an integer from string: %d %T\n", accountAgeIntFromString, accountAgeIntFromString)

    // Convert accountAge to a string
    accountAgeFloatStr := strconv.FormatFloat(accountAge, 'f', -1, 64)
    fmt.Printf("Account age as a string from float: %s %T\n", accountAgeFloatStr, accountAgeFloatStr)

    // Convert accountAgeFloatStr to a floating-point number
    accountAgeFloatFromString, _ := strconv.ParseFloat(accountAgeFloatStr, 64)
    fmt.Printf("Account age as a float from string: %.2f %T\n", accountAgeFloatFromString, accountAgeFloatFromString)
}


