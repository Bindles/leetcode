def find_words_containing(words = ["leet","code"], x = "e")
  words.select.with_index { |word, index| word.include?(x) }.map(&:last)
end

find_words_containing