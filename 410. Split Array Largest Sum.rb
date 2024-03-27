#* 410. Split Array Largest Sum
nums = [7,2,5,10,8]
k = 2
# @param {Integer[]} nums
# @param {Integer} k
# @return {Integer}
#* MY SOL
def split_array(nums, k)
  lo = nums.max
  hi = nums.sum
  
  while lo < hi
    mid = lo + (hi - lo) / 2
    sm, cnt = 0, 1

    nums.each do |n|
      if sm + n > mid
        sm, cnt = n, cnt + 1
      else
        sm += n
      end
    end
    lo, hi = cnt > k ? [mid + 1, hi] : [lo, mid]
  end
  lo
end
p split_array(nums, k)