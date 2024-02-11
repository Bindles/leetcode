def count_palindromes(frequencies)
  odd_count = 0
  palindrome_count = 0

  frequencies.each do |count|
      palindrome_count += count / 2
      odd_count += count % 2
  end

  palindrome_count + (odd_count > 0 ? 1 : 0)
end

def max_palindromes_after_operations(words)
  max_palindromes = 0

  words.each do |word|
      frequencies = Array.new(26, 0)
      word.each_char { |char| frequencies[char.ord - 'a'.ord] += 1 }
      max_palindromes += count_palindromes(frequencies)
      
      # Consider swapping characters within the same word
      word.length.times do |i|
          (i + 1...word.length).each do |j|
              word[i], word[j] = word[j], word[i]
              frequencies[word[i].ord - 'a'.ord] -= 1
              frequencies[word[j].ord - 'a'.ord] += 1
              
              max_palindromes = [max_palindromes, count_palindromes(frequencies)].max
              
              word[i], word[j] = word[j], word[i] # Revert the swap
              frequencies[word[i].ord - 'a'.ord] += 1
              frequencies[word[j].ord - 'a'.ord] -= 1
          end
      end
  end

  max_palindromes
end

# Example test cases
puts max_palindromes_after_operations(["abbb", "ba", "aa"]) # Output: 3
puts max_palindromes_after_operations(["abc", "ab"])       # Output: 2
puts max_palindromes_after_operations(["cd", "ef", "a"])   # Output: 1
