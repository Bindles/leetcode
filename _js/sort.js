//SORTING [js]

const l = console.log.bind(console)

const numbers = [3, 1, 5, 2, 4];
numbers.sort(); // Sorts the array in place
console.log(numbers); // Output: [1, 2, 3, 4, 5]

const fruits = ["banana", "apple", "orange", "grape"];
fruits.sort(); // Sorts the array in place
console.log(fruits); // Output: ["apple", "banana", "grape", "orange"]

const nums = [10, 5, 20, 2];
nums.sort(); // Sorts the array as strings
console.log(nums); // Output: [10, 2, 20, 5] (not what we want)

nums.sort((a, b) => a - b); // Sorts as nums: [1, 2, 5, 10]
console.log(nums);


//SORT FRUTIS BY LENGTH:
const f = ["banana", "apple", "strawberry"];

f.sort((a, b) => a.length - b.length);
console.log(f); // Output: ["apple", "banana", "strawberry"]

const fr = ["banana", "apple", "strawberry"];

let myfr = fr.map(word => ({ word, length: word.length }))
l(myfr)

const fru = ["banana", "apple", "strawberry"];

let myfru = fr.map(word => ({ [word]: word.length }))
l('mapped=>hash[unsorted]')
l(myfru)
myfru.sort((a, b) => Object.values(b)[0] - Object.values(a)[0]);
l('sorted=>hash')
l(myfru)


l('--')
const words = ["banana", "apple", "strawberry"];

// Map words to arrays [word, length]
const wordLengths = words.map(word => [word, word.length]);

// Sort the arrays based on the length
wordLengths.sort((a, b) => a[1] - b[1]);
l('sorted=>array')
l(wordLengths)

// Convert the sorted arrays to objects (hashes)
const wordLengthsObject = Object.fromEntries(wordLengths);
l('sorted=>hash')
console.log(wordLengthsObject);

// Convert the sorted arrays to arrays
l('sorted=>array')
console.log(wordLengths);