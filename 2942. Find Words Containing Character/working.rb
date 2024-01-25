# @param {String[]} words
# @param {Character} x
# @return {Integer[]}
def find_words_containing(words = ["leet","code", "sa"], x = "e")
  result=[]
  words.each_index do |i|
    p words[i] && result << words[i] if words[i].include?(x)
  end
  result
end

def find_words_containing(words = ["leet","code", "sa"], x = "e")
  result=[]
  words.each.with_index { |v, i| p v,i && result << i if words[i].include?(x) }
  return result
end

find_words_containing