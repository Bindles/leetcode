# @param {Integer[]} nums
# @return {Integer}
def minimum_operations(nums = [1,5,0,3,5])
  #nums.min_by {|n| n.nonzero?}
  #p nums.min_by{ |n| n.nonzero? || Float::INFINITY }

  #nums.map {|n| n==1 ? 0 : n}
  #nums.map {|n| n-nums.min_by{ |n| n.nonzero? || Float::INFINITY } }
  while nums.any? { |n| n!= 0 }
    steps=0
    nums.map {|n| [n-nums.min_by{ |n| n.nonzero? || Float::INFINITY }, 0].max }
    steps+=1
  end
  p steps
  
    
end

def minimum_operations(nums = [1, 5, 0, 3, 5])
  steps = 0
  while nums.any? { |n| n != 0 } #til all 0
    min_nonzero = nums.min_by { |n| n.nonzero? || Float::INFINITY } #find the minimum non-zero value
    nums.map! { |n| [n - min_nonzero, 0].max } #reduce by the minimum non-zero value, ensuring no negative values
    steps += 1
  end
  steps
end

def minimum_operations(nums = [1, 5, 0, 3, 5])
  steps = 0
  while nums.any? { |n| n != 0 } # Continue until all numbers are zero
    steps += 1
    nums.map! { |n| [n - (min_nonzero = nums.min_by { |n| n.nonzero? || Float::INFINITY }), 0].max } # Reduce by the minimum non-zero value, ensuring no negative values
  end
  steps
end

def minimum_operations(nums = [1, 5, 0, 3, 5])
  steps = 0
  while nums.any? { |n| n != 0 } #until all == 0 
    steps += 1
    nums.map! { |n| [n - nums.min_by { |n| n.nonzero? || Float::INFINITY }, 0].max } #reduce by min non-zero value, ensuring no negative values
  end
  steps
end

# def minimum_operations(nums = [1, 5, 0, 3, 5])
#   steps = 0
#   until nums.all? { |n| n == 0 } # Continue until all numbers are zero
#     steps += 1
#     nums.map! { |n| [n - nums.min_by { |n| n.nonzero? || Float::INFINITY }, 0].max } #reduce by min non-zero value, ensuring no negative values
#   end
#   steps
# end

def minimum_operations(nums = [1, 2, 3, 5])
  steps = 0
  while nums.any? { |n| n != 0 } #til all 0
    p min_nonzero = nums.min_by { |n| n.nonzero? || Float::INFINITY }
    p nums.map! { |n| [n - min_nonzero, 0].max } 
    p steps += 1
  end
  steps
end

def minimum_operations(nums)
  nums.uniq.filter { _1 > 0 }.count
end

puts minimum_operations # Call the function with the default array [1, 5, 0, 3, 5]


p minimum_operations


fruits = %w[carrots apple orange]
p fruits.min_by {|f| -f.length}

nums = [1, 3, 7, 5]
minimum_nonzero = nums.min_by { |n| n.nonzero? }
p nums.min_by{ _1.nonzero?}
puts minimum_nonzero