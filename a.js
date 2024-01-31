l=console.log.bind(console)
objcars= [
  {brand: "Honda", model: "Civic"},
  {brand: "Honda", model: "Civic"}
]
const a = objcars.forEach(oc => oc.brand);
const b = objcars.map(oc => oc.brand);
l(b)

numbers = [1,2,3]
console.log(numbers.map(number => number * 10));

numbers.map(number => {
  console.log(number * 2); // Print each doubled value
});
numbers.map(number => {console.log(number * 10);});
var snm = numbers.map(number => number * 10)
l(snm)

const numres = numbers.map(number =>  number* 5)
l(numres)

const doubledNumbers = numbers.map(number => number * 2);

console.log(doubledNumbers); // Ou

console.log(numbers.map(number => {
  number * 2; // Print each doubled value
}));
