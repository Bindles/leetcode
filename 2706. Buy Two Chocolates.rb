# @param {Integer[]} prices
# @param {Integer} money
# @return {Integer}
def buy_choco(prices = [3,2,3], money = 3)
    acc=0
    c= prices.length
    prices.sort.each.with_index do |price, i|
        p "#{price} | #{money} | #{c}"
        money >= price ? (money -= price) : ( return money)
        c-=1
    end
end

p buy_choco

def buyable_elements(arr, coins)
    total_cost = 0
    buyable = []
  
    arr.each do |element|
      if total_cost + element <= coins
        buyable << element
        total_cost += element
      else
        break
      end
    end
  
    buyable
end
  
  arr = [1, 3, 1, 5, 7]
  coins = 5
  
  buyable = buyable_elements(arr, coins)
  puts "You can buy the following elements1: #{buyable.inspect}"

  def buyable_elements(arr, coins)
    total_cost = 0
    arr.take_while { |element| (total_cost += element) <= coins }.size
  end
  
  arr = [1, 3, 1, 5, 7]
  coins = 5
  
  buyable = buyable_elements(arr, coins)
  puts "You can buy the following elements2: #{buyable.inspect}"

  arr = [1, 3, 1, 5, 7]
coins = 5

arr = [1, 3, 1, 5, 7]
buyable_elements = arr.take_while.with_index do |element, index|
  arr[0..index].sum < 6
end

p buyable_elements  # Output: [1, 3, 1]

# Check if you have enough coins for the first two elements
enough_coins = arr[0..1].sum <= coins

puts enough_coins ? "You have enough coins for the first two elements." : "You don't have enough coins for the first two elements3."

a = (0...arr.length).map do |i|
    arr[0..i].sum
end.select! { |n| n < 6}

p a


arr = [1, 3, 1, 5, 7]
buyable_elements = []
sum = 0

arr.each do |element|
  break if sum + element >= 6
  
  buyable_elements << element
  sum += element
end

p buyable_elements  # Output: [1, 3, 1]

p [ 1, 1, 2, 2, 3, 3, 4, 5 ] - [ 1, 2, 4 ]
p [ "a", "b", "c" ] | [ "c", "d", "a" ]    #=> [ "a", "b", "c", "d" ]
p [ 1, 1, 3, 5 ] & [ 1, 2, 3 ]                 #=> [ 1, 3 ]

#WORKS
def buy_choco(prices, money)
  prices.sort!
  money - prices[0] - prices[1] if prices[0] + prices[1] < money + 1
  money
end

#AGAIN
def buy_choco(prices = [1,2,2], money = 3)
  s=0
  money - prices.sort.take_while { |el| (s += el) <= money}.sum
end
p buy_choco
  


# @param {Integer[]} prices
# @param {Integer} money
# @return {Integer}

# @param {Integer[]} prices
# @param {Integer} money
# @return {Integer}
def buy_choco(prices, money)
  prices.sort!
  money >= prices[0]+ prices[1] ? (return money - prices[0]+ prices[1]) : money
end

#SOL1
def buy_choco(prices, money)
  prices.sort!
  if prices[0] + prices[1] < money + 1
    return money - prices[0] - prices[1]
  end
  money
end

#SOL 1 CONCISE | NOT READABLE
def buy_choco(prices, money)
  prices.sort!
  return money - prices[0] - prices[1] if prices[0] + prices[1] < money + 1
  money
end


