def make_equal(words = ["abc", "aabc", "bc"])
  word_hashes = {}

  words.each do |word|
    word_hash = Hash.new(0)
    word.each_char { |char| word_hash[char] += 1 }
    word_hashes[word] = word_hash
  end

  # Output the word hashes for each word
  word_hashes.each do |word, hash|
    puts "Hash for #{word}: #{hash}"
  end

  # Now you can compare the hashes as needed
  # Example: Compare the hashes of the first two words
  if word_hashes[words[0]] == word_hashes[words[1]]
    puts "#{words[0]} and #{words[1]} have equal character counts."
  else
    puts "#{words[0]} and #{words[1]} do not have equal character counts."
  end
end

make_equal