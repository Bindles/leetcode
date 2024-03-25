// Define the Person constructor function
function Person(name, age) {
  // Inside the constructor function, 'this' refers to the newly created object
  // Assign the 'name' and 'age' properties to the object
  this.name = name;
  this.age = age;
  // No explicit return statement is needed
  // 'this' will be implicitly returned when using 'new' keyword with this constructor
}

// Create a new instance of Person using the 'new' keyword
var Bob = new Person('Bob Man', 22);

// Access properties of the created object
console.log(Bob.name); // Output: Bob Man
console.log(Bob.age); // Output: 22


// Define the Person constructor function
function Person(name, age) {
  // Inside the constructor function, 'this' refers to the newly created object
  // Assign the 'name' and 'age' properties to the object
  this.name = name;
  this.age = age;

  // Check if the array to store instances exists, if not, create it
  if (!Person.instances) {
    Person.instances = [];
  }

  // Push the current instance into the array
  Person.instances.push(this);
}

// Create a new instance of Person using the 'new' keyword
var Bob = new Person('Bob Man', 22);
var Alice = new Person('Alice Woman', 30);
var Chuck = new Person('Chuck Funnyman', 32)

// Access properties of the created objects
console.log(Bob.name); // Output: Bob Man
console.log(Bob.age); // Output: 22
console.log(Alice.name); // Output: Alice Woman
console.log(Alice.age); // Output: 30

// Access the array of instances
console.log(Person.instances); // Output: [{ name: 'Bob Man', age: 22 }, { name: 'Alice Woman', age: 30 }]
