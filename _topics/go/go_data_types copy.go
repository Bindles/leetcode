package main

import "fmt"

func main() {
    var age int // Declaring a variable 'age' of type 'int'
    age = 30    // Assigning a value to the variable 'age'
    fmt.Println("Age:", age)

    var name string // Declaring a variable 'name' of type 'string'
    name = "John"  // Assigning a value to the variable 'name'
    fmt.Println("Name:", name)

    var isStudent bool // Declaring a variable 'isStudent' of type 'bool'
    isStudent = true   // Assigning a value to the variable 'isStudent'
    fmt.Println("Is student?", isStudent)

    //var weight float64 // Declaring a variable 'weight' of type 'float64'
    //weight = 75.5      // Assigning a value to the variable 'weight'
    var weight float64 = 75.5
    fmt.Println("Weight:", weight)

    // Short variable declaration
    country := "USA" // Declaring and initializing a variable 'country' of type 'string' using short variable declaration
    fmt.Println("Country:", country)

    // Multiple variable declaration and initialization
    var (
        height  int     = 180
        salary  float64 = 50000.50
        isMarried         = false // Type inference
    )
    fmt.Println("Height:", height, "Salary:", salary, "Is married?", isMarried)




		//ARRAYS
		numbers := [5]int{1, 2, 3, 4, 5} // Initialize an array with values
		fmt.Println(numbers[0]) // Output: 1

		var numbersarr [5]int =  [5]int{0,10,20,30,40} // You can also initialize it this way
		fmt.Println(numbersarr)

		//var ahash map[string]string // Declare an empty map 'person' with string keys and string values
		//ahash["name"] = "John"

	
		personhashmap := make(map[string]string) // Initialize an empty map
		personhashmap["name"] = "John" // Assign a value to a key
		personhashmap["age"] = "30"
		fmt.Println(personhashmap)
		fmt.Println(personhashmap["name"], personhashmap["age"])

		
		type Person struct {
			Name string
			Age  int
	}
	steven := Person{Name: "steven", Age: 30} // Create an instance of the Person struct
	fmt.Println("Name:", steven.Name, "Age:", steven.Age)

										//Left side type not needed
	var numslicefromarr []int = []int(numbersarr[:])
	fmt.Println(numslicefromarr)

	var nums = []int{1,2,3,4}
	fmt.Println(nums)

	  // Apply the anonymous function to each element using range
    result := make([]int, len(nums))
    for i, num := range nums {
        result[i] = num * 100
    }

    fmt.Println(result)

	  // Apply the anonymous function to each element using range
    resultz := make([]int, len(nums))
    for i, num := range nums {
			if num % 2 == 0 {
        resultz[i] = num * 100
			} else {
				resultz[i] = num
			}
    }

    fmt.Println(resultz)

    // Filter even numbers using a loop and an if statement
		//FILTER_MAP
    var evens []int
    for _, num := range nums {
        if num%2 == 0 {
            evens = append(evens, num * 1000)
        }
    }
    

    fmt.Println(evens)

    

}
