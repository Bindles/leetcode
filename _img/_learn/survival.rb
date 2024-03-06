p customer_ages=[18,21,24]
p customer_ages.reverse
p customer_ages
p customer_ages.push(26)
p customer_ages

p '--'
p customer_ages.reverse!
p customer_ages

# Array.new(n) do |index|
#     # Block code here
# end

# Array.new(n): This creates a new array with n elements. If a block is given, it yields each index from 0 to n-1 to the block, allowing you to generate elements dynamically.

# do |index| ... end: This is the block that receives each index as an argument.

# index += 1: In this context, index is the current index being processed. It's common to adjust it as needed, such as adding 1 to match a 1-based index instead of 0-based.

# The if-elsif-else conditions inside the block are determining what value to put at each index in the array. In this case, it's generating elements for the FizzBuzz game.

def fizz_buzz(n)
    Array.new(n) do |index|
        index += 1
        if index % 3 == 0 && index % 5 == 0
            'FizzBuzz'
        elsif index % 3 == 0
            'Fizz'
        elsif index % 5 == 0
            'Buzz'
        else
            index.to_s
        end
    end
end

# Generating an array of squares of numbers from 1 to 10:

p squares = Array.new(10) { |i| (i + 1) ** 2 }
# => [1, 4, 9, 16, 25, 36, 49, 64, 81, 100]
# Creating an array of random numbers between 1 and 100:

p random_numbers = Array.new(5) { rand(1..100) }
# => [42, 17, 91, 58, 3]
# Constructing an array of strings with alternating cases:

words = ["hello", "world", "ruby", "code"]

p alternating_cases = Array.new(words.length) { |i| i.even? ? words[i].upcase : words[i].downcase }
# => ["HELLO", "world", "RUBY", "code"]

alternating_cases = []
words.each_with_index do |word, i|
  alternating_cases << (i.even? ? word.upcase : word.downcase)
end
p alternating_cases
# => ["HELLO", "world", "RUBY", "code"]

words.map.with_index do |word, i|
  i.even? ? word.upcase : word.downcase
end
p alternating_cases
# => ["HELLO", "world", "RUBY", "code"]
