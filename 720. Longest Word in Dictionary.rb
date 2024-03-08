#*720. Longest Word in Dictionary
#*LEARN => hash lambda attempt
# @param {String[]} words
# @return {String}
# @param {String[]} words
# @return {String}
#* SOL
def longest_word(words = ["a","banana","app","appl","ap","apply","apple"])
  found_words = {"" => true}
  words.sort!.each do |word|
    found_words[word] = true if found_words[word[...-1]]
  end

  found_words.keys.max_by(&:length)
end
p longest_word

#*ALL BELOW DONT WORK ***********************
#*WORKING SO CLOSE :( 
def longest_word(words = ["a","banana","app","appl","ap","apply","apple"])
  fn = ->(word) { word.chars.inject('') { |prefix, char| prefix + char } }
  valid_words = words.select { |word| words.include?(fn.call(word.chop)) }
  max_length = valid_words.map(&:length).max
  valid_words.select { |word| word.length == max_length }.min
end
p longest_word




  def longest_word(words = ["a","banana","app","appl","ap","apply","apple"])
    words.sort_by!(&:size) # Sort words by length in ascending order
    seen = Set.new # Set to store words that can be built
    longest_word = ""
  
    words.each do |word|
      if word.size == 1 || seen.include?(word[0..-2]) # If word's prefix is in the set or it's a single character word
        seen << word # Add the word to the set
        longest_word = word if word.size > longest_word.size # Update the longest word
      end
    end
  
    longest_word
  end
  # In this solution, the lambda &:size is used to convert the size method into a block, allowing it to be passed to sort_by! succinctly. The rest of the code iterates through the words, keeping track of words that can be built and updating the longest word accordingly. Finally, the longest word found is returned.
  
  
  
  def longest_word(words = ["a","banana","app","appl","ap","apply","apple"])
    words.sort_by!(&:length)  # Sort words by length to prioritize shorter words in case of a tie
    valid_words = Set.new
    longest_word = ""
  
    words.each do |word|
      # Check if the prefix (excluding the last character) of the current word is already a valid word
      if word.length == 1 || valid_words.include?(word[0..-2])
        valid_words.add(word)  # Add the current word to the set of valid words
        longest_word = word if word.length > longest_word.length  # Update the longest word
      end
    end
  
    longest_word
  end
  
  # Example usage:
  words1 = ["w", "wo", "wor", "worl", "world"]
  puts longest_word(words1)  # Output: "world"
  
  words2 = ["a", "banana", "app", "appl", "ap", "apply", "apple"]
  puts longest_word(words2)  # Output: "apple"
  # In this solution, I use a lambda (&:length) to create a concise block for sorting words by their lengths. I also utilize a Set to efficiently check for valid prefixes. The result is a functionally equivalent solution with a more concise syntax.

  #****************************