def sort_array_by_parity(nums = [3,1,2,4])
  a=[]
    p nums.join.to_i.even?
    p '-'
    nums.each do |num|
     num.even? ? (a.push(num)) : (p 'a')
    end
    nums.each do |num|
      num.odd? ? (a.push(num)) : (p 'a')
     end
    p a
end

p sort_array_by_parity

words = ["apple", "banana", "kiwi", "grapefruit"]
sorted_words = words.sort_by { |word| word.length }
puts sorted_words
# Output: ["kiwi", "apple", "banana", "grapefruit"]

words = ["hello", "world", "ruby", "programming"]
sorted_words = words.sort_by { |word| word.count("aeiou") }
puts sorted_words.per(1)
# Output: ["ruby", "world", "hello", "programming"]


words = ["dog", "cat", "elephant", "mouse"]
sorted_words = words.sort_by { |word| -word[-1].ord }
puts sorted_words
# Output: ["elephant", "cat", "dog", "mouse"]