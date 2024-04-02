//[VARS]
// VAR
var greeting = "Hello";
var name_ = "Alice";
var age = 25;
// CONST
const birthYear = 1995;
console.log(greeting);
console.log(name_ + " is " + age + " years old"); // Output: Hello Alice!

//[STRING]
var boy = "John";
console.log("My name is " + boy);

//[NUMBER] (INTEGER 'INT')
var a = 10;
var b = 5;
console.log(a * b);

//[BOOLEAN]
var isRaining = true;
var isSunny = false;
console.log("Is it raining? " + isRaining);
console.log("Is it sunny? " + isSunny);

//[ARRAY]
var fruits = ["Apple", "Banana", "Orange"];
console.log(fruits);

//[OBJECT]
var person = {
  name: "Alice",
  age: 25,
  isStudent: true
};
console.log(person);
console.log(person.name); // Output: Alice

//[ARRAY ITERATION]
var numbers = [1, 2, 3, 4, 5];
console.log("Numbers (for loop):");
for (var i = 0; i < numbers.length; i++) {
  console.log(numbers[i]);
}

//[ARRAY FILTER]
var evenNumbers = numbers.filter(function(num) {
  return num % 2 === 0;
});
console.log("Even numbers (filtered):");
console.log(evenNumbers);

//[FUNCTIONS]
function add(a, b) {
  return a + b;
}

console.log("Addition result:");
console.log(add(5, 3)); // Output: 8
