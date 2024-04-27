#* 1475. Final Prices With a Special Discount in a Shop
prices = [8,4,6,2,3]
# @param {Integer[]} prices
# @return {Integer[]}
def final_prices(prices)
  n = prices.size
  res = []

  (0...n).each do |i|
  
    found_discount = false
    (i+1...n).each do |j|
      if prices[j] <= prices[i]
        p "#{prices[i]} #{prices[i] - prices[j]}"
        res << prices[i] - prices[j]
        found_discount = true
        break
      end
    end

    res << prices[i] unless found_discount
  end
  res
end
p final_prices(prices)
























def final_prices(prices)
  n = prices.length
  result = Array.new(n, 0)

  (0...n).each do |i|
    # Iterate through the elements starting from i+1
    (i+1...n).each do |j|
      # Check if prices[j] <= prices[i]
      if prices[j] <= prices[i]
        # Apply discount and break the loop
        # Here, you can calculate the final price and store it in result[i]
        break
      end
    end
  end

  return result
end