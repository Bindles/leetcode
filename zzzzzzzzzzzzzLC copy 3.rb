def palindrome?(str)
  str == str.reverse
end

def max_palindromes_after_operations(words)
  max_palindromes = 0
  
  # Calculate character frequency for each word
  frequencies = words.map { |word| word.chars.group_by(&:itself).transform_values(&:count) }
  
  n = words.length
  
  # Iterate through each word
  (0...n).each do |i|
    # Iterate through each character in the word
    (0...words[i].length).each do |x|
      # Try swapping this character with every other character in the word
      (x...words[i].length).each do |y|
        # Swap characters
        words[i][x], words[i][y] = words[i][y], words[i][x]
        
        # Count the number of palindromes formed after the swap
        count = 0
        (0...n).each do |j|
          count += frequencies[j].values.sum if palindrome?(words[j])
        end
        
        # Update max_palindromes if the current count is greater
        max_palindromes = [max_palindromes, count].max
        
        # Swap back characters to restore the original word
        words[i][x], words[i][y] = words[i][y], words[i][x]
      end
    end
  end
  
  max_palindromes
end







# Test cases
puts max_palindromes_after_operations(["abbb", "ba", "aa"]) # Output: 3
puts max_palindromes_after_operations(["abc", "ab"]) # Output: 2
puts max_palindromes_after_operations(["cd", "ef", "a"]) # Output: 1


# REAL OUTPUT:
# "c:\dev\leetcode\zzzzzzzzzzzzzLC copy 3.rb"
# 2 <= WRONG
# 1 
# 2 <=WRONG