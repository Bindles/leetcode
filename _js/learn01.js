const l = console.log.bind(console);

function horseAge(strings, age) {
  const ageString = age > 5 ? 'old' : 'young';
  return `${strings[0]}${ageString} at ${age} years`;
}

const horse = { age: 10 }; // Define the horse object with an age property
const bio2 = horseAge`This horse is ${horse.age}`;
l(bio2);


const pikachu = {name: 'Pikachu'}
const stats = {hp:40, attack:60, defense:45}

pikachu['hp'] = stats.hp
pikachu['attack']=stats.attack
pikachu['defense']= stats.defense

l(pikachu['attack'])

const lv0 = Object.assign(pikachu, stats)
const lv1 = Object.assign(pikachu, {level: 10}) 

const lv10 = { ...pikachu, ...stats}
const lv11 = { ...pikachu, hp: 45}

let pokemon = ['Arbok', 'Rachu']

pokemon.push('Bulb')
pokemon.push('Metapod')
pokemon.push('Weedle')

//push
l(pokemon=[...pokemon, 'Pidgey', 'Pidgeotto', 'Pidgeot'])
//shift
l(pokemon = ['Bulbasaur', 'Metapod', 'Weedle', ...pokemon ])
pokemon = ['Bulbasaur', ...pokemon , 'Metapod', 'Weedle']

const orders = [50,30,105,15]
const total = orders.reduce((acc,cur) => acc+cur)
l(total)

const withTax = orders.map(ord => ord * 1.1)
l(withTax)
const highVal = orders.filter(val => val > 100)
l(highVal)

//PROMISE
const random = () => {
  return Promise.resolve(Math.random())
}

nums=[1,2,3]
n=[10,11]
neww=[...nums, ...n]
l(neww)
l([...nums, ...nums])

















