// 205. Isomorphic Strings
package main

import "fmt"

func isIsomorphic(s string, t string) bool {
    // Create two maps to store character mappings
    sToT := make(map[byte]byte)
    tToS := make(map[byte]byte)

    // Iterate through each character in the strings
    for i := 0; i < len(s); i++ {
        charS := s[i]
        charT := t[i]

        // Check if the character mapping already exists
        if val, ok := sToT[charS]; ok {
            // If the mapping is different, return false
            if val != charT {
                return false
            }
        } else {
            // Otherwise, create the mapping
            sToT[charS] = charT
        }

        // Repeat the process for the reverse mapping
        if val, ok := tToS[charT]; ok {
            if val != charS {
                return false
            }
        } else {
            tToS[charT] = charS
        }
    }

    // If all character mappings are consistent, return true
    return true
}

func main() {
    // Example usage
    s := "egg"
    t := "add"
    result := isIsomorphic(s, t)
    fmt.Printf("Isomorphic: %v\n", result)
}
