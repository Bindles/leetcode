# @param {String} jewels
# @param {String} stones
# @return {Integer}
def num_jewels_in_stones(jewels = "aA", stones = "aAAbbbb")
  result= 0
  p jewelsarray =jewels.split('')
  p jewelsarray
  p jewelsarray.any?("A")

  stones.each_char do |stone|
    p result+=1 if jewelsarray.any?(stone)
  end
  p result
end
num_jewels_in_stones

def num_jewels_in_stones(jewels = "aA", stones = "aAAbbbb")
  result, jewelsarray = 0, jewels.split('')
  stones.each_char { |stone| result+=1 if jewelsarray.any?(stone) } and result
end

num_jewels_in_stones