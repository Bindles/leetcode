def count_characters2(words, chars)
  words.each do |word|
    if word.each_char.tally.all? do |each_char_in_word, all_how_many_param| 
    p each_char_in_word
    p all_how_many_param
    p chars.each_char.tally[each_char_in_word]
 
    end
      #p word
      
    end
  end
end
count_characters2(["catatataa","bt","hat","tree"], "atach")

def cc(words, chars)
  words.each do |word|
    if word.each_char.tally.all? do |each_char_in_word, all_how_many_param| 
    p each_char_in_word
    p all_how_many_param
    p chars.each_char.tally[each_char_in_word]
 
    end
      #p word
      
    end
  end
end
cc(["catatataa","bt","hat","tree"], "atach")