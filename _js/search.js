l=console.log.bind(console)
l('hi')

nums = [1, 3, 5, 6, 8, 12, 17]
target=8
l(nums)

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




