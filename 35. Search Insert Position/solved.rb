# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer}
def search_insert(nums, target)
  nums.each.with_index do |num,i|
      if num > target && num != target && i != nums.length
          return i
      elsif num < target && i == nums.length-1
          return i+1
      elsif num == target
          return i
      end
      p nums.length
  end
end


