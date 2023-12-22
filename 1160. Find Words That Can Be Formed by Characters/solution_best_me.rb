#TALLY|MY-SOLUTION|BRACKET
def count_characters(words, chars)
  a=0
  words.each do |word|
    if word.each_char.tally.all? { |char, count| chars.each_char.tally[char].to_i >= count }
      a+=word.length
    end
  end
  puts a
end
count_characters(["cat","bt","hat","tree"], "atach")
#TALLY|MY-SOLUTION|PUTS|BRACKET
def count_characters2(words, chars)
  words.each do |word|
    if word.each_char.tally.all? { |char, count| chars.each_char.tally[char].to_i >= count }
      puts "Good word: #{word}"
    end
  end
end
count_characters2(["cat","bt","hat","tree"], "atach")

#TALLY|MY-SOLUTION|DEBUGGING|NO-BRACKET-LONG
def ccc(words, chars)
  a=0
  words.each do |word|
    if word.each_char.tally.all? do |char, count| 
        puts "Checking character: #{char} in word: #{word}"
        puts "Count in word: #{count}"
        puts "Count in chars: #{chars.each_char.tally[char].to_i}"
        chars.each_char.tally[char].to_i >= count 
      end
      puts "Good word: #{word}"
      a+=word.length
    end
  end
  return a
end

ccc(["cat", "bt", "hat", "tree"], "atach")



