#* 2164. Sort Even and Odd Indices Independently
nums = [4,1,2,3]
# @param {Integer[]} nums
# @return {Integer[]}
def sort_even_odd(nums)
  p nums.sort_by.with_index {|x,i| [i.odd? ? 1 : 0, i.even? ? 0 : 1]}

end
#[2,3,4,1]
p sort_even_odd(nums)


s = "abccccdd"
def longest_palindrome(s)
  p s.chars.tally.sort_by{|_key, val| [val.even? || val == 1 ? 0 : 1, -val]}.each{|key, val| p "#{key} #{val}"}
end
p longest_palindrome(s)

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



