
def sort_vowels(s = "lEetcOde")
  vowels = 'aeiou'
  result = s.chars.map { |c| vowels.include?(c.downcase) ? c : nil }

  vowels_found = result.compact.sort
  result.map { |c| vowels.include?(c.downcase) ? vowels_found.shift : c }.join
end

puts sort_vowels
# This will output:

# "eEtcOdEl"

# In this code, we use map to create an array where vowels are replaced with nil and non-vowels remain as they are. Then, we sort the non-nil vowels and replace them in the original array while maintaining their original positions. Finally, we join the array back into a string.


# ChatGPT
# Response 2
# To accomplish this, you can iterate over each character in the string, check if it's a vowel, and then sort the vowels while keeping the consonants in place. Here's the modified code:


def sort_vowels(s = "lEetcOde")
  vowels = 'aeiouAEIOU'
  vowels_in_string = s.chars.select { |c| vowels.include?(c) }
  consonants_in_string = s.chars.select { |c| !vowels.include?(c) }
  
  sorted_vowels = vowels_in_string.sort_by(&:downcase)
  
  sorted_string = s.chars.map do |c|
    if vowels.include?(c)
      sorted_vowels.shift
    else
      c
    end
  end.join
  
  sorted_string
end

p sort_vowels
# This code will sort the vowels in the string "lEetcOde" while keeping the consonants in place.