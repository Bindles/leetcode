# @param {String[]} words
# @param {String} chars
# @return {Integer}
def count_characters(words, chars)
  total_count = 0

  chars_sorted = chars.split('').sort.join

  for word in words
    word_sorted = word.split('').sort.join

    if chars_sorted.include?(word_sorted)
      total_count += 1
    end
  end

  total_count
end

# Example usage:
words = ["attach", "cat", "hat"]
chars = "atach"

result = count_characters(words, chars)
puts result