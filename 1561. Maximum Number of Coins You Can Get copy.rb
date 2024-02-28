# @param {Integer[]} piles
# @return {Integer}
def max_coins(piles = [2,4,1,2,7,8])
    piles.sort!  # Sort the array in ascending order
    p piles
    sum = 0
    ((piles.length - 2)..0).step(-3).each do |i|
      p piles[i]
      sum += piles[i]  # Pick every third element from the end
    end
    p 'return'
    sum
end
  
  
  
p max_coins

sum=0
array = [2,4,1,2,7,8].sort!
(1...array.length).step(3) do |i|
  puts array[i]
  sum+=array[i]
end
p sum


def max_coins(piles = [2,4,1,2,7,8])
  piles.sort!
  sum=0
  (1...piles.length).step(3) do |i|
    p piles[i]
    sum+=piles[i]
  end
  p sum
end
p max_coins

def max_coins(piles = [2,4,1,2,7,8])
  piles.sort!
  sum=0
  (1...piles.length).step(3){sum+=piles[_1]} and sum
end
p max_coins
