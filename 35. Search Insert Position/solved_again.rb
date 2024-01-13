def search_insert(nums = [1,3,5,6], target = 5)  
  nums.push(target).sort.uniq.index(target)
end

p search_insert