const words = ["leet", "code"];
const x = "e";

// Check if any word in the array contains the character 'x'
// Check if any word in the array contains the character 'x'
const containsX = words.map((word, index) => {
  if (word.includes(x)) {
    return index;
  }
}).filter(index => index !== undefined);

const containsXX = words.map((word, index) => word.includes(x) ? index : undefined).filter(index => index !== undefined);

console.log(containsX); // Output: true (since "leet" contains 'e')
console.log(containsXX);
//words.map(word => )