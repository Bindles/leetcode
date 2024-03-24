#* TO HASH
numbers = [1, 2, 3, 4, 5]
pairs = numbers.each_with_index.to_h

p pairs

#* TO HASH => TO ARRAY => PAIR
numbers = [1, 2, 3, 4, 5]
pairs = numbers.each_with_index.to_h.to_a

p pairs

#* MAP PAIRS
numbers = [1, 2, 3, 4, 5]
pairs = numbers.map.with_index { |element, index| [element, index] }

p pairs

numbers = [1, 2, 3, 4, 5]
pairs = numbers.each.map { |num| [num, num * 10] }

p pairs

pairs = numbers.each.map { |num| [num, num * 10] }.to_h

p pairs

p pairs = numbers.each.map { |num| [num, num * 10] }.to_h.to_a

#* PAIRS EXAMPLES / &:> / <
# Array of numbers
numbers = [1, 2, 3, 4, 5]
p numbers.each_with_index.to_h

# Counting numbers greater than their index
count_greater_than_index = numbers.each_with_index.count(&:>) 

puts "Numbers greater than their index: #{count_greater_than_index}"

# Array of numbers
numbers = [5, 4, 3, 2, 1]

# Counting numbers less than their index
p numbers.each_with_index.to_h.to_a
count_less_than_index = numbers.each_with_index.count(&:<)

puts "Numbers less than their index: #{count_less_than_index}"


