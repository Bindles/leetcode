var p = console.log.bind(console)
var l=console.log.bind(console)
var user;
user = { firstName: 'Michael', lastName: 'Hartl' };
let otherUser = { firstName: 'Foo', lastName: 'Bar' };
l(
  otherUser,
  otherUser['firstName']
)

const sonnet = 'Let me not to the marriage of true minds Admit impediments. Love is not love Which alters when it alteration finds, Or bends with the remover to remove. O no, it is an ever-fixed mark That looks on tempests and is never shaken; It is the star to every wandring bark'

// Unique words
let uniques = {};
// All words in the text
let words = sonnet.match(/\w+/g);
// Iterate through 'words' and build up an associative array of unique words.
for (let i = 0; i < words.length; i++) {
let word = words[i];
if (uniques[word]) {
uniques[word] += 1;
} else {
uniques[word] = 1;
}
}
console.log(uniques)


let uniqz = new Map();
uniqz.set("loved", 0);
//Map { 'loved' => 0 }
let currentValue = uniqz.get("loved");
uniqz.set("loved", currentValue + 1);
//Map { 'loved' => 1 }

p (
  uniqz
)


var now = new Date;
let daysOfTheWeek = ["Sunday", "Monday", "Tuesday", "Wednesday",
"Thursday", "Friday", "Saturday"];


p (
    daysOfTheWeek[now.getDay()],
    now,
    now.getYear() + "\n",
    now.getTime(),
    now.getDay(),
    now.getMonth(),
    now.getFullYear(),
    now.getDate()
  )


let dayName = daysOfTheWeek[now.getDay()];
p(`Hello, world! Happy ${dayName}.`);


