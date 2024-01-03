# @param {String[]} words
# @param {Character} x
# @return {Integer[]}

#OPTIMAL SOLUTIONS/1LINERS
def find_words_containing(words, x)
    words.map.with_index {|word, index| word.include?(x) ? index : nil}.compact
end

def find_words_containing(words, x)
  words.zip(0..).filter_map { _2 if _1.include?(x) }  

end


def find_words_containing(words, x)
    words.filter_map.with_index { |w, i| i if w.include?(x) }
end

def find_words_containing(words, x)
    (0...words.size).filter_map{|i| i if words[i].include?(x) }
end

def find_words_containing(words, x)
    result = []
    words.each_with_index {|word, index| result.push index if word.include? x} && result
end

