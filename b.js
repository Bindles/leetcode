var l=console.log.bind(console)
const letters = new Set(["a","b","c"]);

// List all Elements
let text = "";
letters.forEach (function(value) {
  l(text += value);
})

const lettersa = ["a","b","c"];

for (x of lettersa) {
  l(x)
}

class Car {
  constructor(model, mileage) {
    this.model = model;
    this.mileage = mileage;
  }
}

const cars = [
  new Car("Toyota", 35),
  new Car("Honda", 28),
  new Car("Ford", 32),
  new Car("Chevrolet", 25),
  new Car("Tesla", 50)
];

// Select fuel-efficient cars
const fuelEfficientCars = cars.filter(car => car.mileage > 30);

fuelEfficientCars.map(car => car.model);
// Output: ["Toyota", "Ford", "Tesla"]
cars.map(car => car.model)
objcars= [
  {brand: "Honda", model: "Civic"},
  {brand: "Honda", model: "Civic"}
]
objcars.forEach(oc => objcars.brand)


const lettersarr = new Array(["a","b","c","d"]);

// List all Elements
let textz = "";
for (const x of lettersarr.values()) {
  x;
}


