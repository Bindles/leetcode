#* 2164. Sort Even and Odd Indices Independently
nums = [4,1,2,3]
# @param {Integer[]} nums
# @return {Integer[]}
#*WIN
def sort_even_odd(nums)
  evens, odds = nums.partition.with_index { |_, i| i.even? }
  return ([evens.sort] + [odds.sort_by{|x|-x}]).transpose.flatten
end
p sort_even_odd(nums)

def sort_even_odd(nums)
  evens, odds = nums.partition.with_index { |_, i| i.even? }
  p evens.sort!
  p odds.sort!.reverse!
  ([evens] + [odds]).transpose.flatten
end
p sort_even_odd(nums)

def sort_even_odd(nums)
  evens, odds = nums.partition.with_index { |_, i| i.even? }
  p evens.sort!
  p odds.sort!.reverse!
  nums.each_with_index.map { |_, i| i.even? ? evens.shift : odds.shift }
end
p sort_even_odd(nums)

def sort_even_odd(nums)
  even = nums.each_with_index.select { |_, i| i.even? }.map(&:first).sort
  odd = nums.each_with_index.select { |_, i| i.odd? }.map(&:first).sort.reverse
  nums.each_with_index.map { |_, i| i.even? ? even.shift : odd.shift }
end

nums = [4,1,2,3]
p sort_even_odd(nums)

def sort_even_odd(nums)
  nums.each_with_index.partition { |_, i| i.even? }.map(&:sort).flatten.each_slice(2).to_a.transpose.flatten(1)
end
p sort_even_odd(nums) 


def sort_even_odd(nums)
  p nums.sort_by.with_index {|x,i| [i.odd? ? 1 : 0, i.even? ? 0 : 1]}
end
p sort_even_odd(nums)
#OUTPUT=>[2,4,1,3]
#EXPECTED=> #[2,3,4,1]



words = ["apple", "banana", "orange", "kiwi", "peach", "grape"]

sorted_words = words.sort_by { |word| -word }

puts sorted_words.inspect
# Output: ["kiwi", "apple", "peach", "grape", "banana", "orange"]

sorted_words = words.sort_by { |word| [word.length, -word.reverse] }

puts sorted_words.inspect


words = ["apple", "banana", "orange", "kiwi", "peach", "grape"]

sorted_words = words.sort_by { |word| -word }

puts sorted_words.inspect
# Output: ["peach", "orange", "kiwi", "grape", "banana", "apple"]

words = ["apple", "banana", "orange", "kiwi", "peach", "grape"]

sorted_words = words.sort_by { |word| [-word] }

puts sorted_words.inspect
# Output: ["peach", "orange", "kiwi", "grape", "banana", "apple"]

words = ["banana", "orange", "grape", "apple", "kiwi", "peach"]

sorted_words = words.sort_by.with_index { |word, index| index }

puts sorted_words.inspect
# Output: ["apple", "banana", "grape", "kiwi", "orange", "peach"]

words = [3,5,1,3]

sorted_words = words.sort_by { |word| -word }

puts sorted_words.inspect
# Output: ["peach", "orange", "kiwi", "grape", "banana", "apple"]


# words = ["banana", "orange", "grape", "apple", "kiwi", "peach"]

# sorted_words = words.sort_by(:descend) {|e| e}

# puts sorted_words.inspect
# # Output: ["peach", "orange", "kiwi", "grape", "banana", "apple"]


#* DIFF PROBLEM PALINDROME:

s = "abccccdd"
def longest_palindrome(s)
  p s.chars.tally.sort_by{|_key, val| [val.even? || val == 1 ? 0 : 1, -val]}.each{|key, val| p "#{key} #{val}"}
end
p longest_palindrome(s)
#OUTPUT=>[2,4,1,3]
#EXPECTED=> #[2,3,4,1]
