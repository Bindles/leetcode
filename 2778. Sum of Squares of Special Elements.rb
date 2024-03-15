nums = [1,2,3,4]
#* 2778. Sum of Squares of Special Elements
# @param {Integer[]} nums
# @return {Integer}
#* 1
def sum_of_squares(nums)
  n=nums.size;nums.map.with_index{|num,i|num**2 if (n % (i+1)) == 0}.compact.sum
end
p sum_of_squares(nums)
#* 2
def sum_of_squares(nums)
    n=nums.size;nums.zip(1..).sum{|num,i| n % i == 0 ? num * num : 0}  
end
p sum_of_squares(nums)
#*3
def sum_of_squares(nums)
    sum = 0
    n = nums.size
    nums.each_with_index do |num, i|
        sum += num**2 if  (n % (i + 1)) == 0
    end
    sum
end
p sum_of_squares(nums)
#* FASTEST
def sum_of_squares(nums)
    sum=0;n=nums.size
    (0...n).each{|i|sum += nums[i]**2 if n % (i+1) == 0 }
    sum
end
p sum_of_squares(nums)

#* MOST DOESNT WORK BELOW*
#*WORKING............
def sum_of_squares(nums)
    p nums.select.with_index{|num,index| index.even?}
end
p sum_of_squares(nums)

nums = [1, 2, 3, 4]  # Example 1-indexed array

# Custom method to iterate over elements with index starting from 1
def each_with_index_offset(enum, offset)
  enum.each_with_index do |item, index|
    yield(item, index + offset)
  end
end

# Usage of custom method to iterate over elements with index starting from 1
each_with_index_offset(nums, 1) do |item, index|
  puts "Index #{index}: #{item}"
end


def sum_of_squares(nums)
    n=nums.length
    #nums.each {|number| p number;4 % number}
    p nums.select{|num| num % num == 0 }.map{|num| num**2}.sum
end
p sum_of_squares(nums)

nums = [2,7,1,19,18,3]
def sum_of_squares(nums)
    n=nums.length
    each_with_index_offset(nums, 1) {|number, index| p "ind: #{index}number: #{number} number / 4.0: #{number / 4.0}" }
end
p sum_of_squares(nums)

nums = [2,7,1,19,18,3]
def sum_of_squares(nums)
    res=[]
    n=nums.length
    each_with_index_offset(nums, 1) {|number, index| res << index if n % number == 0}
    p res
end
p sum_of_squares(nums)


