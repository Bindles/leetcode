# @param {Integer[]} nums
# @return {Integer[]}
def product_except_self(nums = [1,2,3,4])
  nums.reduce.with_index{|acc,(num, index)| acc * num * index }
end

#* MY SOL 2 | PUTS | SHOW NUMS :*
def product_except_self(nums = [1,2,3,4])
  tp = nums.reduce(:*)
  p tp
  nums.map{|num| tp / num}
  nums.map{|num| nums.reduce(:*) / num}
end

#* 2|CONCISE
p product_except_self
def product_except_self(nums = [1,2,3,4])
  nums.map{|num| nums.reduce(:*) / num}
end
p product_except_self

#* 2|READABLE
def product_except_self(nums = [1,2,3,4])
  totproduct = nums.reduce(:*)
  nums.map { |num| num.zero? ? 0 : totproduct / num }
end
p product_except_self

#* YIELD SELF | COMBINE 2 LINES INTO ONE
def product_except_self(nums = [1,2,3,4])
  nums.reduce(:*).yield_self { |totproduct| nums.map { |num| num.zero? ? 0 : totproduct / num } }
end
p product_except_self

#*MY SOL | 1st WORKING
def product_except_self(nums = [1,2,3,4])
  zero_count = nums.count(0)
  
  if zero_count > 1
    return Array.new(nums.length, 0)
  elsif zero_count == 1
    total_product = nums.reject(&:zero?).reduce(:*)
    return nums.map { |num| num.zero? ? total_product : 0 }
  else
    total_product = nums.reduce(:*)
    return nums.map { |num| total_product / num }
  end
end

p product_except_self([-1,1,0,-3,3])

#*MY SOL 1| 1st WORKING | W COMMENTS
def product_except_self(nums = [1,2,3,4])
  zero_count = nums.count(0)
  
  # If there are more than one zero, all products will be zero except the zeros themselves.
  if zero_count > 1
    return Array.new(nums.length, 0)
  elsif zero_count == 1
    # If there is only one zero, all products will be zero except for the one at the zero's index.
    total_product = nums.reject(&:zero?).reduce(:*)
    return nums.map { |num| num.zero? ? total_product : 0 }
  else
    # If there are no zeros, we can calculate the product without considering zeroes.
    total_product = nums.reduce(:*)
    return nums.map { |num| total_product / num }
  end
end

p product_except_self([-1,1,0,-3,3])


