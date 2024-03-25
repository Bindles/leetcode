#* 2341. Maximum Number of Pairs in Array
nums = [61,30,92,45,50,41,49,54,27,10,50,22,50,1,8,75,87,53,33,9,14,76,49,88,10,37,10,34,32,1,94,86,84]
# @param {Integer[]} nums
# @return {Integer[]}
#* MY SOL 1
def number_of_pairs(nums)
  p tal = nums.tally
  p pair = tal.values.map{|x| x if x > 1}.compact.map{|x| x.even? ? x : x - 1}.sum / 2
  p pairs = tal.values.select{|x| x > 1}.size
  p left = tal.values.select{|x| x.odd?}.size
  p [pairs, left].flatten
end
p number_of_pairs(nums)

#* MY SOL 2 | FASTER
def number_of_pairs(nums)
  tal = nums.tally
  pairs = left = 0

  tal.values.each do |count|
    if count >1
      pairs += count / 2
      left += count.odd? ? 1 : 0
    else
      left+=1
    end
  end
  return [pairs, left]
end
p number_of_pairs(nums) 