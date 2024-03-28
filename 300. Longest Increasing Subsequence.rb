#* 300. Longest Increasing Subsequence
nums = [10,9,2,5,3,7,101,18]
# @param {Integer[]} nums
# @return {Integer}
#* SOL 2 | FASTER | 22-25x
def length_of_lis(nums)
  memo = []
  nums.each do |n|
    i = memo.bsearch_index { _1 >= n } || memo.size
    memo[i] = n
  end
  memo.size
end

#* MY SOL 1 | ORIG
def length_of_lis(nums)
  dp = Array.new(nums.size, 1)
  nums.each_index do |i|
      (0...i).each do |j|
          dp[i] = [ dp[i], dp[j]+1 ].max if nums[i] > nums[j]
      end
  end
  dp.max
end

#* MY SOL 2 | TRYING TO MAKE CONCISE :/
def length_of_lis(nums)
  dp = Array.new(nums.size, 1)
  nums.each_index do |i|
    dp[i] = (0...i).map {|j| dp[j] + 1 if nums[i] > nums[j] }.compact.max || dp[i]
  end
  dp.max
end