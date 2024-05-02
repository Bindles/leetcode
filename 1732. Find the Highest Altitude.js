// 1732. Find the Highest Altitude
gain = [-5,1,5,0,-7]
/**
 * @param {number[]} gain
 * @return {number}
 */
var largestAltitude = function(gain) {
  let cur = 0;
  let highest = 0;
  for (let x of gain) {
    cur += x
    if (cur > highest) highest = cur
  }
  return highest
};
console.log(largestAltitude(gain))

var largestAltitude = function(gain) {
  let cur = 0;
  let highest = 0;
  for (let x of gain) {
    cur += x
    highest = Math.max(highest, cur)
  }
  return highest
};
console.log(largestAltitude(gain))


//show the difference in .max with array (...) (...somearr)
var largestAltitude = function(gain) {
  let cur = 0;
  let highest = 0;
  let somearr = []
  for (let x of gain) {
    cur += x
    somearr=[highest, cur]
    highest = Math.max(...somearr)
  }
  return highest
};

//RUBYS

// def largest_altitude(gain)
//   cur = highest = 0
//   gain.each do |x|
//     cur += x
//     highest = cur if cur > highest
//   end
//   highest
// end

// def largest_altitude(gain)
//     current = highest = 0
//     gain.each do |x|
//         current += x
//         highest = [highest, current].max
//     end
//     highest
// end