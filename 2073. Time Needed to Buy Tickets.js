// 2073. Time Needed to Buy Tickets
tickets = [2,3,2]; k = 2
// MY SOL 
/**
 * @param {number[]} tickets
 * @param {number} k
 * @return {number}
 */
var timeRequiredToBuy = function(tickets, k) {
  return tickets.reduce((seconds, ticket, i) => {
    return seconds + Math.min(ticket, tickets[k]) - (i > k && ticket >= tickets[k] ? 1 : 0);
  }, 0);
}
console.log(timeRequiredToBuy(tickets, k));