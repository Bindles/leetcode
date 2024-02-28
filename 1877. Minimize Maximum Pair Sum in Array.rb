# @param {Integer[]} nums
# @return {Integer}
def min_pair_sum(nums = [3,5,2,3])
  p nums.sort!.reverse.zip(nums).map(&:sum).max
end
p min_pair_sum

nums = [3,5,2,3]
p nums.zip(nums)
p nums.sort.zip(nums)
p nums.reverse.zip(nums)
p nums.sort.reverse.zip(nums)
p nums.sort!.reverse.zip(nums).map(&:sum)


word = "heyman"

# Find all vowels and their indices in the word
vowels_with_indices = word.chars.each_with_index.select { |char, _| 'aeiouAEIOU'.include?(char) }

# Sort the vowels by their indices in the original word
sorted_vowels = vowels_with_indices.sort_by { |_, index| index }

# Extract sorted vowels from the original word
sorted_vowels_in_word = sorted_vowels.map(&:first).join

# Replace the vowels in the original word with the sorted vowels
result = word.chars.map { |char| 'aeiouAEIOU'.include?(char) ? sorted_vowels_in_word.slice!(0) : char }.join

puts result

word = "haymen"

# Zip the sorted characters with the original characters
zipped_chars = word.chars.sort.zip(word.chars)

# Replace vowels in the original word with the sorted vowels
result = word.chars.map do |char|
  if 'aeiouAEIOU'.include?(char)
    sorted_vowel_pair = zipped_chars.find { |sorted_char, original_char| original_char == char }
    sorted_vowel_pair ? sorted_vowel_pair.first : char
  else
    char
  end
end.join

puts result


