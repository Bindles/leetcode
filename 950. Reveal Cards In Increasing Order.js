// 950. Reveal Cards In Increasing Order
var deck = [17,13,11,2,3,5,7]
/**
 * @param {number[]} deck
 * @return {number[]}
 */
var deckRevealedIncreasing = function(deck) {
  deck.sort((a,b)=>b-a)
  let result = []
  for(let card of deck){
      if(result.length) result.unshift(result.pop())
      result.unshift(card)
      }
  return result
};
console.log(deckRevealedIncreasing(deck))