function expect(val) {
  function ab() {
    console.log('hi');
  }

  return {
    toBe: function (n) {
      if (val === n) {
        console.log('true');
        return true;
      } else {
        console.log('false');
        return false;
      }
    },
    notToBe: function (y) {
      if (val !== y) {
        console.log('true');
        return true;
      } else {
        console.log('false');
        return false;
      }
    }
  };
}

expect(5).toBe(5); // Output: true
expect(5).notToBe(10); // Output: true



function greet(x,y){
  this.x = x
  this.y = y
  console.log(x + " " + y)
  function abc() {
    l("hi")
  }
}
a = greet("a","b")

function Spell(name, str, elem) {
  this.name=name;
  this.str=str;
  this.elem=elem;
  create()
  function create(){
    l(name, str, elem)
  }
}
var fireball = new Spell("the following spell has been created " + "fb",12,"fire")

function Spellz(name, str, elem) {
  this.name = name;
  this.str = str;
  this.elem = elem;
}

Spellz.prototype.createz = function() {
  console.log(`Spell created: ${this.name}, Strength: ${this.str}, Element: ${this.elem}`);
};

// Use the new keyword to create an instance of Spell
const fireballz = new Spellz("fb", 12, "fire");

// Call the create method
fireballz.createz();


function outerFunction() {
  console.log("Outer function");

  function innerFunction() {
    console.log("Inner function");
  }

  // Call the inner function
  innerFunction();
}

// Call the outer function
outerFunction();




//function should now rec 2 arrays of temps
arr1="abcde".split('')
arr2=[1,2,3,4,5]
arr2.push(0)
concatarr=arr1.concat(arr2)
