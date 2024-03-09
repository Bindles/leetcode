l=console.log.bind(console)
l('hi')

nums = [1, 3, 5, 6, 8, 12, 17]
target=8
l(nums)
const numarray=[7,9,12,1,4,3]
const words=["banana", "apple", "strawberry"]

let re = numarray.map(nums => nums * 2)
l(re)
let res = numarray.map((nums, index) => nums ** index)
l(res)
let reso = words.map((word, i) => ({ [word.toUpperCase()]: i}))
l(reso)
let resa = words.map(word => ({ [word.toUpperCase()]: word.length}))
l(resa)

l(nums.find(num => num === target))

for(index=0; index < nums.length; index++) {
  if (nums[index] === target) {
    l(`found ${nums[index]} at indice: ${index}`)
    break;
  }
}

nums.forEach((num, index) => {
  if (num === target) {
    console.log("Number:", num); // Number: 8
    console.log("Index:", index); // Index: 4
  }
});



i=0
// Use forEach to log each element of the array
nums.forEach((num) => {
  l(num === target, num);
  if (num === target) { 
    l(`found ${num} at indice: ${i}`)
  }
  i+=1
});

let foundIndex = -1;
let foundNum;

// Iterate over each element of the array
nums.forEach((num, index) => {
  // Check if the current element is the target
  if (num === target) {
    foundIndex = index; // Store the index of the target
    foundNum = num;     // Store the value of the target
  }
});

let found = []

// Iterate over each element of the array
for (const [index, num] of nums.entries()) {
  // Check if the current element is the target
  if (num === target) {
    found[0] = num;
    found[1] = index    // Store the value of the target
    break;              // Exit the loop early
  }
}

console.log(found) // Number: 8

console.log("Number:", foundNum);   // Number: 8
console.log("Index:", foundIndex); // Index: 4




