# @param {String} allowed
# @param {String[]} words
# @return {Integer}
def count_consistent_strings(allowed = "ab", words = ["ad","bd","aaab","baa","badab"])
  words.select do |word|
    word.each_char.all?{|char| allowed.include?(char)}
  end.count
end

def count_consistent_strings(allowed = "ab", words = ["ad","bd","aaab","baa","badab"])
  words.select {|word| word.each_char.all?{|char| allowed.include?(char)}}.count
end

def count_consistent_strings(allowed = "ab", words = ["ad","bd","aaab","baa","badab"])
  words.select do |word|
    word.each_char.all?{allowed.include?(_1)}
  end.count
end

def count_consistent_strings(allowed = "ab", words = ["ad","bd","aaab","baa","badab"])
  words.select {|word| word.each_char.all?{allowed.include?(_1)}}.count
end

def count_consistent_strings(allowed = "ab", words = ["ad","bd","aaab","baa","badab"])
  words.select {|word| word.each_char.all?{allowed.include?(_1)}}.count
end

p count_consistent_strings