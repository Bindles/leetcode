#* 322. Coin Change
coins = [1,2,5]; amount = 11
# @param {Integer[]} coins
# @param {Integer} amount
# @return {Integer}
#* MY SOL
def coin_change(coins, amount)
  change = [0] + [Float::INFINITY] * amount

  coins.each do |coin|
    (coin..amount).each do |amt|
      change[amt] = [change[amt], change[amt - coin] + 1].min
    end
  end
  change[amount] == Float::INFINITY ? -1 : change[amount]
end

#* MY SOL | -MIN
def coin_change(coins, amount)
  change = [0] + [Float::INFINITY] * amount

  coins.each do |coin|
    (coin..amount).each do |amt|
      new_change = change[amt - coin] + 1
      change[amt] = new_change if new_change < change[amt]
    end
  end
  change[amount] == Float::INFINITY ? -1 : change[amount]
end

#*WORKING. . .
def coin_change(coins, amount)
  curr=0
  count=0

  coins.sort.reverse.each do |n| 
      if n+curr <= amount
          curr+=n
          count+=1
          redo
      end
  end
  curr >= amount ? count : -1
end
