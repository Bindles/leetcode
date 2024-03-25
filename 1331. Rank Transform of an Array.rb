#* 1331. Rank Transform of an Array
#* LEARN => ARRAY COMBINE TALLY COMBINE TALLY TO_H ARRAY TO HASH
arr = [40,10,20,30]
# @param {Integer[]} arr
# @return {Integer[]}
def array_rank_transform(arr)
  sorted_arr = arr.sort.uniq
  arr.map {|num|sorted_arr.index(num) + 1 }
end
p array_rank_transform(arr)

def array_rank_transform(arr)
  hash = arr.sort.uniq.each_with_index.to_h
  p hash
  p hash[20]+1
  arr.map{|x| hash[x] + 1}
end
p array_rank_transform(arr)

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
#p find_and_replace_pattern(words, pattern)

