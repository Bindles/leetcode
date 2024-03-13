#* 1641. Count Sorted Vowel Strings
n = 2
# @param {Integer} n
# @return {Integer}
# @param {Integer} n
# @return {Integer}
def count_vowel_strings(n)
  (1..n+1).map{|i| (1..i).map{|j| ((j)*(j+1))/2}.sum}.sum
end

def count_vowel_strings(n)
   #vowels = %w[a e i o u]
   #p vowels.combination(2).to_a.map(&:join).length + vowels.length
    #p a
end
p count_vowel_strings(n)

array = [1, 2, 3, 4]
p array.combination(2).to_a  # Generates combinations of 2 elements from the array

vowels=%w[a e i o u]
p vowels
#p vowels.combination(2).to_a
#p vowels.combination(2).to_a.map(&:join)
p vowels.combination(1).to_a.map(&:join).length + vowels.length






def count_sorted_vowel_strings(n)
    vowels = ['a', 'e', 'i', 'o', 'u']
    combinations = vowels.combination(n).to_a
    combinations.each do |vowel_combo|
        puts vowel_combo.join('')
    end
end

n = 3
count_sorted_vowel_strings(n)
# In this version of the code:

# count_sorted_vowel_strings is the method name.
# n represents the length of the combinations.
# vowels is an array containing the vowels.
# combinations stores all combinations of vowels of length n.
# vowel_combo represents each individual combination of vowels in the loop.

def count_sorted_vowel_strings(n)
    vowels = ['a', 'e', 'i', 'o', 'u']
    result_count = [0]

    generate_vowel_combinations(n, vowels, '', 0, result_count)

    return result_count[0]
end

def generate_vowel_combinations(n, vowels, current_combination, index, result_count)
    if n == current_combination.length
        result_count[0] += 1
        return
    end

    (index...vowels.length).each do |vowel_index|
        generate_vowel_combinations(n, vowels, current_combination + vowels[vowel_index], vowel_index, result_count)
    end
end

n = 2
puts count_sorted_vowel_strings(n)
# I changed variable names to be more descriptive of their purpose in the context of generating vowel combinations. The count_sorted_vowel_strings function now conveys its intent more clearly, and the recursive function generate_vowel_combinations has parameter names that better describe their roles.