#MY SOLUTION:
def longest_square_streak(nums = [4,3,6,16,8,2])
  puts "Original array: #{nums}"
  
  nums.sort!
  puts "Sorted array: #{nums}"
  
  result = Hash.new(0)
  nums.each { |num| result[num**2] = result[num] + 1 }
  puts "Result hash: #{result}"
  
  max = result.values.max
  puts "Maximum streak: #{max}"
  
  if max == 1  
    puts "Result: -1"
    return -1 
  else
    puts "Result: #{max}"
    return max
  end
end
p longest_square_streak

#CLEAR
def longest_square_streak(nums = [4,3,6,16,8,2])
  nums.sort!
  result = Hash.new(0)
  nums.each { |num| result[num**2] = result[num] + 1 }
  max = result.values.max
  if max == 1  
    return -1 
  else
    return max
  end
end

#CONCISE
def longest_square_streak(nums = [4,3,6,16,8,2])
  nums.sort!
  result = Hash.new(0)
  nums.each { |num| result[num**2] = result[num] + 1 }
  max = result.values.max
  max == 1 ? -1 : max
end
p longest_square_streak

#SOLUTION 2
def longest_square_streak(nums = [4,3,6,16,8,2])
  set = Set.new(nums)
  max_len = -1
  set.each do |num|
    streak = 1
    streak += 1 while set.include?(num**2) && (num = num**2)
    max_len = streak if streak >= 2 && streak > max_len
  end
  max_len
end

#SUPER CONCISE
def longest_square_streak(nums)
  result = nums.sort.each_with_object(Hash.new(0)) { |num, hash| hash[num**2] = hash[num] + 1 }
  max = result.values.max
  max == 1 ? -1 : max
end

#SUPER CONCISE-RIDICULOUS
def longest_square_streak(nums)
  result = nums.sort.each_with_object(Hash.new(0)) {_2[_1**2] = _2[_1] + 1 }
  max = result.values.max
  max == 1 ? -1 : max
end





def longest_square_streak(nums = [4,3,6,16,8,2])
  set = Set.new(nums)
  max_len = -1

  set.each do |num|
      puts "Checking number: #{num}"
      streak = 1
      while set.include?(num**2) && (num = num**2)
          puts "Increasing streak for #{num}"
          streak += 1
      end
      if streak >= 2 && streak > max_len
          puts "Updating max_len to #{streak}"
          max_len = streak
      end
  end

  max_len
end