def fb(words, chars)
  a=0
  words.select do |word|
    chars_copy = chars.dup
    can_form_word = word.chars.all? { |char| chars_copy.sub!(char, '') }

    puts "Good word: #{word}" if can_form_word
    a += word.length if can_form_word
  end
  return a
end
words2 = ["hello", "world", "leetcode"]
chars2 = "welldonehoneyr"
fb(words2, chars2)