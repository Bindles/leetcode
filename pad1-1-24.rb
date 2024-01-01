# @param {String[]} words
# @return {Boolean}
def make_equal(words = ["abc","aabc","bc"])

    #wordh["a"]=0
    wh={}
    for word in words
      wordh = Hash.new(0)
      word.each_char.with_index do |wordchar, ind| 
        wordh[wordchar]+=1 
        p wh[word]=wordh if ind == word.length-1
      end
    end
  p '--'
  # Output the word hashes for each word
  # wh.each do |word, hash|
  #   puts "Hash for #{word}: #{hash}"
  # end

  #puts wordh
  
end

puts make_equal





# @param {String[]} words
# @return {Boolean}
def make_equalz(words = ["abc","aabc","bc"])

    wh={}
    for word in words
      wordh = Hash.new(0)
      word.each_char.with_index do |wordchar, ind| 
        wordh[wordchar]+=1 
        p wh[word]=wordh if ind == word.length-1
      end
    end
  p '--'

  
end

puts make_equalz


def nice
  words = ["cool", "man", "bad"]

  word_counts = {}
  
  words.each do |word|
    word_counts[word] = word.chars.tally
  end

  p word_counts
end

nice
