// 1475. Final Prices With a Special Discount in a Shop
prices = [8,4,6,2,3]
/**
 * @param {number[]} prices
 * @return {number[]}
 */
var finalPrices = function(prices) {
  let n = prices.length;
  let res = [];

  for (let i = 0; i < n; i++) {
    let found_discount = false;
    for (let j = i + 1; j < n; j++) {
      if (prices[j] <= prices[i]) {
        res.push(prices[i] - prices[j]); 
        found_discount = true; 
        break;
      }
    }
    if (!found_discount) res.push(prices[i]); 
  }
  
  return res; 
};
console.log(finalPrices(prices))


// def final_prices(prices)
//   n = prices.size
//   res = []

//   (0...n).each do |i|
  
//     found_discount = false
//     (i+1...n).each do |j|
//       if prices[j] <= prices[i]
//         p "#{prices[i]} #{prices[i] - prices[j]}"
//         res << prices[i] - prices[j]
//         found_discount = true
//         break
//       end
//     end

//     res << prices[i] unless found_discount
//   end
//   res
// end
// p final_prices(prices)

















