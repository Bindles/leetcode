def min_coins(coins, target)
  coins.sort!.reverse! # Sort coins in descending order
  num_coins = 0
  p target

  coins.each do |coin|
    while target >= coin
      target -= coin
      num_coins += 1
    end
  end

  num_coins
end

# Test the function
coins = [1, 5, 10, 25]
target = 50
puts "Minimum number of coins needed to make #{target} cents: #{min_coins(coins, target)}"
