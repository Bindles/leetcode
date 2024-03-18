#* 1827. Minimum Operations to Make the Array Increasing
nums = [1,5,2,4,1]
# @param {Integer[]} nums
# @return {Integer}
#* MY SOL
def min_operations(nums)
  operations = 0
    (1...nums.length).each do |i|
      if nums[i] <= nums[i - 1]
        operations += nums[i - 1] - nums[i] + 1
        nums[i] = nums[i - 1] + 1
      end
    end
  operations
end
puts min_operations(nums)

#* WORKING LOL ...
def min_operations(nums)
  until nums.each_cons(2).all? { |a, b| a < b }

    (1...nums.length).each do |i|
      nums[i] = [nums[i], nums[i-1] + 1].max
    end
    
  end
  nums
end
p min_operations(nums)

def min_operations(nums)
count = 0

    (0...nums.length).each do |i|
      nums[i] = [nums[i], nums[i-1] + 1].max
      count+=1
    end
    
  p count
  nums
end
p min_operations(nums)

def min_operations(nums)
  until nums.each_cons(2).all? { |a, b| a < b }
    puts "Numbers are not strictly increasing, modifying..."

    (1...nums.length).each do |i|
      nums[i] = [nums[i], nums[i-1] + 1].max
    end
    
    puts "Modified nums: #{nums}"
  end
  
  puts "Numbers are strictly increasing: #{nums}"
end
p min_operations(nums)

# nums = [1,2,3]
# p nums.all? {|x| x < x+1}


nums = [1, 2, 3]

while !nums.each_cons(2).all? { |a, b| a < b }
  puts "Numbers are not strictly increasing, modifying..."
  
  # Your modification code here
  # For example, you might want to increment each element by 1
  #nums.map! { |num| num + 1 }
  a = nums.reverse
  p a
  
  puts "Modified nums: #{nums}"
end

puts "Numbers are strictly increasing: #{nums}"