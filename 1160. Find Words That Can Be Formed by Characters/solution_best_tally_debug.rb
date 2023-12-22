#TALLY|MY-SOLUTION|DEBUGGING|NO-BRACKET-LONG
def ccdebug(words, chars)
answer_length=0
  words.each do |word|
    if word.each_char.tally.all? do |char, count| 
        puts "Checking character: #{char} in word: #{word}"
        puts "Count in word: #{count}"
        puts "Count in chars: #{chars.each_char.tally[char].to_i}"
        chars.each_char.tally[char].to_i >= count 
      end
      puts "Good word: #{word}"
      answer_length+=word.length
    end
  end
  puts answer_length
end

ccdebug(["cat", "bt", "hat", "tree"], "atach")


#TALLY|MY-SOLUTION|NO-BRACKET-LONG
def count_characters(words, chars)
answer_length=0
  words.each do |word|
    if word.each_char.tally.all? do |char, count| 
    chars.each_char.tally[char].to_i >= count 
    end
      puts "Good word: #{word}"
      answer_length+=word.length
    end
  end
  puts answer_length
end

count_characters(["cat", "bt", "hat", "tree"], "atach")
