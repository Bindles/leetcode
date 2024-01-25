#MY_SOLUTION(3min)
def find_words_containing(words, x)
  result=[]
  words.each.with_index { |v, i| p v,i && result << i if words[i].include?(x) }
  return result
end

#MY_SOLUTION.COMPRESS=>ALMOST1LINER
def find_words_containing(words, x)
  result=[]
  words.each.with_index { |v, i| p v,i && result << i if words[i].include?(x) } && result
end

words = ["leet","code", "sa"]
x = "e"
find_words_containing(words, x)