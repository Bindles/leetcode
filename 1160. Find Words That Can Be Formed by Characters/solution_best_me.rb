def count_characters2(words, chars)
  words.each do |word|
    if word.each_char.tally.all? { |char, count| chars.each_char.tally[char].to_i >= count }
      puts "Good word: #{word}"
    end
  end
end
count_characters2(["cat","bt","hat","tree"], "atach")