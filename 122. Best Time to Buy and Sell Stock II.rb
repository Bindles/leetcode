#**122. Best Time to Buy and Sell Stock II| PART1
# @param {Integer[]} prices
# @return {Integer}

#SOLUTION 1*
def max_profit(prices)
  profit = 0
  buy = prices[0] #init for iteration1
  prices.each do |price|
      if price > buy
          profit += price - buy
      end
      buy = price
  end
  profit
end

#SOL 2
def max_profit(prices)
  profits = 0

  (1..(prices.length - 1)).each do |i|
      if prices[i] > prices[i - 1]
          profits += prices[i] - prices[i - 1]
      end
  end
  profits
end

#SOL 1* | PUTS
def max_profit(prices)
  profit = 0
  buy = prices[0] #init for first iteration
  prices.each.with_index do |price,ind|
    p "#{ind}  #{buy} <= #{price}"
      if price > buy
          p  "true: #{buy} => #{price}"
          profit += price - buy
          p profit: profit
      end
      buy = price
  end
  profit
end
prices = [7,1,5,3,6,4]
p max_profit(prices)

#**121. Best Time to Buy and Sell Stock II| PART1
# @param {Integer[]} prices
# @return {Integer}

#SOL 1*
def max_profit(prices)
  profit = 0
  buy = prices[0]
  
  prices.each do |price|
      if price > buy
          sell = price - buy
          profit = [sell, profit].max
      else
          buy = price
      end
  end

  profit
end

#OLD SOL 2
def max_profit(prices)
  return 0 if prices.empty?
  minprice = prices[0]
  maxp = 0

  prices.each do |price|
    minprice = [minprice, price].min
    profit = price - minprice
    maxp = [maxp, profit].max
  end
  maxp
end






# def max_profit(prices)
#   profit = 0
#   buy = prices[0]
#   p buy
#   prices.each do |price|
#       if price > buy
#           profit += price - buy
#       end
#       buy = price
#   end

#   profit
# end

# prices = [7,1,5,3,6,4]
# p max_profit(prices)

# def max_profit(prices)
#   profit = 0
#   buy = prices[0]
  
#   prices.each do |price|
#       if price > buy
#           sell = price - buy
#           profit = [sell, profit].max
#       else
#           buy = price
#       end
#   end

#   profit
# end