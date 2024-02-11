def is_palindrome?(word)
    word == word.reverse
  end
  
  def max_palindromes_after_operations(words)
    palindromes_count = words.count { |word| is_palindrome?(word) }
  
    words.each_with_index do |word1, i|
      words.each_with_index do |word2, j|
        next if i == j  # Skip if the same word is chosen
  
        (0...word1.length).each do |x|
          (0...word2.length).each do |y|
            temp = word1[x]
            word1[x] = word2[y]
            word2[y] = temp
  
            # Check if either of the words becomes palindrome after the swap
            new_count = 0
            new_count += 1 if is_palindrome?(word1)
            new_count += 1 if is_palindrome?(word2)
  
            palindromes_count = [palindromes_count, new_count].max
  
            temp = word1[x]
            word1[x] = word2[y]
            word2[y] = temp
          end
        end
      end
    end
  
    palindromes_count
  end
  
  # Example Testcases
  puts max_palindromes_after_operations(["abbb", "ba", "aa"]) # Output: 3
  puts max_palindromes_after_operations(["abc", "ab"]) # Output: 2
  puts max_palindromes_after_operations(["cd", "ef", "a"]) # Output: 1
  
  # Additional Testcase
  puts max_palindromes_after_operations(["aaa", "ab"]) # Output: 2
  