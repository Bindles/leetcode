numbers = [1,2,3,8,1,3,5]

p numbers.find {|n|n % 2 == 0}

def fruit_index_finder
  words = ["orange", "banana", "apple", "grape", "kiwi"]
  index = words.index { |word| word == "apple" }

  if index
    puts "The index of 'apple' is #{index}"
  else
    puts "'apple' not found in the array."
  end
end

# Call the method
fruit_index_finder