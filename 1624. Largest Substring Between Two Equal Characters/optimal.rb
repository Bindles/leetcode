# @param {String} str
# @return {Integer}

#1
def max_length_between_equal_characters(s) =

  s.chars.uniq.map{ ~s.index(_1)+s.rindex(_1) }.max


#2
def max_length_between_equal_characters(str)
  indices = {}
  
  str.each_char.with_index do |char, index|
    (indices[char] ||= []) << index 
  end

  indices.values.map { |char_indices| char_indices.last - char_indices.first }.max - 1
end

#3
def max_length_between_equal_characters(s)
  seen = {}
  result = -1

  s.each_char.with_index do |char, i|
    if seen.key?(char)
      result = [result, i - seen[char] - 1].max

    else
      seen[char] = i
    end
  end
  
  result
end