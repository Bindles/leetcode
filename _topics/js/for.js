//FOR OF LOOP => [iteratable].each || for iterator in [iteratable]
//FOR IN LOOP => [iteratable].each_index || for index, _iter in enumerate([iteratable])


// Iterating over an array:
const fruits = ['apple', 'banana', 'orange'];
for (const fruit of fruits) {
    console.log(fruit);
}

// Concise alternative: You can use the forEach() method.
fruits.forEach(fruit => console.log(fruit));

// Iterating over a string:
const str = 'hello';
for (const char of str) {
    console.log(char.toUpperCase());
}

// There's no built-in method for iterating over a string character-by-character that's more concise than using a for...of loop.

// Iterating over a Map:
const map = new Map([
    ['a', 1],
    ['b', 2],
    ['c', 3]
]);
for (const [key, value] of map) {
    console.log(key, value);
}
// Concise alternative: You can use the forEach() method.
// 
map.forEach((value, key) => console.log(key, value));


// Iterating over a Set:
const set = new Set([1, 2, 3, 4, 5]);
for (const num of set) {
    console.log(num * 2);
}
// There's no built-in method for iterating over a Set that's more concise than using a for...of loop.


// Iterating over the arguments object:
function sum() {
    let total = 0;
    for (const arg of arguments) {
        total += arg;
    }
    return total;
}
console.log(sum(1, 2, 3, 4, 5)); // Output: 15
// Concise alternative: You can convert the arguments object to an array and then use the reduce() method.

function sum() {
    return Array.from(arguments).reduce((total, arg) => total + arg, 0);
}
console.log(sum(1, 2, 3, 4, 5)); // Output: 15
// The reduce() method allows you to accumulate values from an array into a single value, making it a concise alternative to manually iterating over the arguments object.

// In summary, while the for...of loop is often the most appropriate choice for iterating over iterable objects in JavaScript, there are some cases where built-in methods like forEach() or reduce() provide more concise or powerful alternatives.

