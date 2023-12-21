# @param {String[]} words
# @param {String} chars
# @return {Integer}
def count_characters_thinking(words, chars)
  z=chars.each_char.tally

    for word in words
      a = word.each_char.tally
    end
    p a
    p z
end

count_characters_thinking(["cat","bt","hat","tree"], "atach")



def count_characters(words, chars)
  a = chars.each_char.tally

  words.each do |word|
    #word_count = word.each_char.tally , word_count => word

    if word.each_char.tally.all? { |char, count| a[char].to_i >= count }
      puts "Good word: #{word}"
    end
  end
end
count_characters(["cat","bt","hat","tree"], "atach")

def count_characters2(words, chars)
  words.each do |word|
    if word.each_char.tally.all? { |char, count| chars.each_char.tally[char].to_i >= count }
      puts "Good word: #{word}"
    end
  end
end
count_characters2(["cat","bt","hat","tree"], "atach")


def count_character_ncb_dont_use(words, chars)
  a = chars.each_char.tally

  words.each do |word|
    word_count = word.each_char.tally

    if word_count.all? do |char, count| 
        a[char].to_i >= count 
      end
      puts "Good word: #{word}"
    end
  end
end
count_character_ncb_dont_use(["cat","bt","hat","tree"], "atach")
