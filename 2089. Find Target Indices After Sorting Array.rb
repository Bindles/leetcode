# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}
def target_indices(nums = [1,2,5,2,3], target = 2)
  res=[]
  nums.sort.each.with_index {|num, i| res << i if num == target} and res
end

def target_indices(nums = [1,2,5,2,3], target = 2)
  nums.sort.filter_map.with_index{|num, i| i if num == target}
end

def target_indices(nums = [1,2,5,2,3], target = 2)
  nums.sort.filter_map.with_index{_2 if _1==target}
end

p target_indices