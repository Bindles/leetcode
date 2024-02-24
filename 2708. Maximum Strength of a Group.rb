# @param {Integer[]} nums
# @return {Integer}
#SOL 1 | SC
def max_strength(nums)
  result = Array.new(2, nums[0])
  nums.drop(1).each { |num|
    res, cur_min = result
    result = [ [res, num, num*res, num*cur_min].max, [cur_min, num, num*cur_min, num*res].min ] } and result[0]
end

#SOL 1 | CONCISE
def max_strength(nums)
  result = Array.new(2, nums[0])
  
  nums.drop(1).each { |num|
    res, cur_min = result
    result = [ [res, num, num*res, num*cur_min].max, [cur_min, num, num*cur_min, num*res].min ]
  }
  result[0]
end

#SOL 1 | READABLE
def max_strength(nums)
  result = Array.new(2, nums[0])

  nums.drop(1).each do |num|
    res, cur_min = result
    max_product = [res, num, num * res, num * cur_min].max
    min_product = [cur_min, num, num * cur_min, num * res].min
    result = [max_product, min_product]
  end
  result[0]
end


#SOL 1 | EACH_WITH_OBJECT(ARRAY)
def max_strength(nums)
  nums.drop(1).each_with_object(Array.new(2, nums[0])) { |num, acc|
    (res, cur_min) = acc
    acc[0], acc[1] = [res, num, num*res, num*cur_min].max, [cur_min, num, num*cur_min, num*res].min 
    }[0]
end