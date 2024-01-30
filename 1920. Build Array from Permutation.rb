# @param {Integer[]} nums
# @return {Integer[]}
def build_array(nums)
  ans=[]; nums.each.with_index{|num,i| p ans[i] = nums[nums[i]] } and ans
end

# @param {Float} celsius
# @return {Float[]}
def convert_temperature(celsius)
  res=[]; res << celsius + 273.15; res << celsius * 1.80 + 32.00 and res
end