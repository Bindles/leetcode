#* 2780. Minimum Index of a Valid Split
nums = [2,1,3,1,1,1,7,1,2,1]
# @param {Integer[]} nums
# @return {Integer}
#* SOL 1
def minimum_index(nums)
  full=nums.tally
  half=Hash.new(0)
  n=nums.size

  nums.each_with_index do |num, i|
    half[num] += 1
    left = half[num]
    right = full[num] - left
    return i if left * 2 > i + 1 && right * 2 > n - i - 1
  end
  -1
end