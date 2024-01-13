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

def search_insert(nums=[1,3,4,6,8],target=5)  
  nums.index{|n|n>=target}||nums.length
end

p search_insert
