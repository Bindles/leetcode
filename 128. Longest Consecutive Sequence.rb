# @param {Integer[]} nums
# @return {Integer}
#* 128. Longest Consecutive Sequence
#* chunk_while sort array[i+1]

#*SOL 3 | LEARNED CHUNK WHILE FOR THIS SOLUTION
def longest_consecutive(nums = [100,4,200,1,3,2])
  nums.sort.uniq.chunk_while{|first,sec|first+1 == sec}.to_a.map(&:length).max
end
def longest_consecutive(nums = [100,4,200,1,3,2])
  return 0 if nums.empty?
  nums.sort.uniq.chunk_while{_1+1==_2}.map(&:length).max
end
def longest_consecutive(nums = [100,4,200,1,3,2])
  p nums.sort.uniq.chunk_while{|prev,curr| prev+1 == curr}.to_a

  p result = nums.sort.uniq.chunk_while{|prev,curr|prev+1 == curr}.map(&:length)
  p result.max
end
p longest_consecutive

#*MY SOL 1
def longest_consecutive(nums = [100,4,200,1,3,2])
  count=0
  counts=[]
  nums.sort.uniq.each.with_index { |num,i|
    num + 1 == nums.sort.uniq[i + 1] ? count += 1 : (counts << count + 1 and count = 0)
  } and counts.max || 0
end

#*MY SOL 1.5 | DONT CALL nums.sort.uniq twice
def longest_consecutive(nums = [100,4,200,1,3,2])
  count=0
  counts=[]
  nums_sorted = nums.sort.uniq
  nums_sorted.each.with_index do |num,i|
    if num + 1 == nums_sorted[i+1]
      count+=1
    else
      counts << count + 1
      count = 0
    end
  end
  p counts
  counts.max || 0
end
p longest_consecutive


#* SOL 2 SET
def longest_consecutive(nums)
  numsx = nums.to_set
  seq_length = 0
  numsx.each do |num|
    if !numsx.include?(num - 1)
      curr_num = num
      curr_link = 1
      while numsx.include?(curr_num + 1)
        curr_num += 1
        curr_link += 1
      end
      seq_length = [seq_length, curr_link].max
    end
  end
  seq_length
end


#* RELEVANT LEARNING/TESTING CHUNK_WHILE
# Example 1: Group consecutive numbers by their parity (odd or even)
numbers = [1, 2, 3, 5, 6, 7, 9, 10]
result = numbers.chunk { |n| n.even? }.to_a
puts result.inspect
# Output: [[false, [1]], [true, [2]], [false, [3, 5]], [true, [6]], [false, [7, 9]], [true, [10]]]

# Example 2: Group consecutive elements by their length
words = ["apple", "banana", "cat", "dog", "elephant", "fox"]
result = words.chunk(&:length).to_a
puts result.inspect
# Output: [[5, ["apple"]], [6, ["banana", "elephant"]], [3, ["cat", "dog"]], [5, ["fox"]]]

# Example 3: Group consecutive elements by their value changes
temperatures = [20, 21, 22, 22, 23, 22, 21, 20, 25]
result = temperatures.chunk { |temp| temp > 22 }.to_a
puts result.inspect
# Output: [[false, [20, 21, 22, 22]], [true, [23]], [false, [22, 21, 20]]]

#*FIND CONSEC SEQUENCE
consecutive_numbers = [5, 7, 1, 2, 3, 9]

result = consecutive_numbers.chunk_while { |prev, curr| curr == prev + 1 }.to_a

puts result.inspect
# Output: [[5], [7], [1, 2, 3], [9]]

#*FIND SEQUENCE | NON CONSEC
numbers = [100, 4, 200, 1, 3, 2]
#GROUP
p numbers.sort.uniq.chunk_while { |prev, curr| curr == prev + 1 }.to_a

p result = numbers.sort.uniq.chunk_while { |prev, curr| curr == prev + 1 }.to_a.map(&:length)
p result.max
# Output: [[4], [200], [1, 3, 2]]


