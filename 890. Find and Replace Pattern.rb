#* 890. Find and Replace Pattern
words = ["abc","deq","mee","aqq","dkd","ccc"]
pattern = "abb"
#* LEARN TALLY TALLY SHORTEN TALLY CONCISE TALLY DOWN TALLY INDEX TALLYINDEX
# @param {String[]} words
# @param {String} pattern
# @return {String[]}
#* SOL | SUPERCONCISE | NEW TECHNIQUES TALLYING
def find_and_replace_pattern(words, pattern)
  result = []
  words.each do |word|
    word_dict = word.chars.each_with_index.to_h
    pattern_dict = pattern.chars.each_with_index.to_h
	  result << word if word_dict.values == pattern_dict.values
  end
  result
end
p find_and_replace_pattern(words, pattern)

p '-'
def find_and_replace_pattern(words, pattern)
  result = []
  
  words.each do |word|
    # word_dict = {}
    # word.chars.each_with_index do |char, index|
    #   word_dict[char] = index
    # end
    # p word_dict

    word_dict = word.chars.each_with_index.to_h
    p word_dict

    pattern_dict = pattern.chars.each_with_index.to_h
    p pattern_dict
    

    # pattern_dict = {}
    # pattern.chars.each_with_index do |char, index|
    #   pattern_dict[char] = index
    # end
    # p pattern_dict

	  result << word if word_dict.values == pattern_dict.values
		  
  end
	
  result
end
p find_and_replace_pattern(words, pattern)


#* AWESOME CCONCISE
pattern_dict = pattern.chars.each_with_index.to_h
p pattern_dict


pattern_dict = {}
pattern.chars.each_with_index do |char, index|
  pattern_dict[char] = index
end
p pattern_dict