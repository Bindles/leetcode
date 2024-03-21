#* 2000. Reverse Prefix of Word
word = "abcdefd"
ch = "d"
# @param {String} word
# @param {Character} ch
# @return {String}
#* SOL 1 | OG
def reverse_prefix(word, ch)
  return word if !word.include?(ch)
  occ_ind = word.index(ch)
  rest_of_word = word[occ_ind+1..-1]
  word.slice(0..occ_ind).reverse + rest_of_word
end
p reverse_prefix(word, ch)

#* SOL 1.1
def reverse_prefix(word, ch)
  return word if !word.include?(ch)
  occ_ind = word.index(ch)
  p "#{ch} found at index: #{occ_ind} rest of word:"
  p "#{word.slice(0, occ_ind+1)} => #{word.slice(0, occ_ind+1).reverse}"
  p rest_of_word = word[occ_ind+1..-1]
  word.slice(0..occ_ind).reverse + rest_of_word
end
p reverse_prefix(word, ch)

#* SOL 2 | OPT
def reverse_prefix(word, ch)
  index = word.index(ch)
  word[..index] = word[..index].reverse if index
  word
end

#* INTERESTING 
#*
def reverse_prefix(word, ch)
  return word unless word.include?(ch)
  i = word.index(ch)
  # surprisingly, word[n..] equals "", when n = word.length
  word[0..i].reverse + word[i + 1..]
end

#*
def reverse_prefix(word, ch)
  i = 0
  right = 0
  while word[right] != ch && right < word.size
      right +=1
  end

  return word if right == word.size

  i = 0
  while right > i
      word[right], word[i] = word[i], word[right]
      i += 1
      right -= 1 
  end
  word
end