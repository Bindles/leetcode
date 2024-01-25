# @param {String[]} sentences
# @return {Integer}
def most_words_found(sentences = ["please wait", "continue to fight", "continue to win"])
  gay=[]
  for s in sentences
    puts s
  end
  z = sentences.max
  p a =sentences[2].split(' ').size
  p sentences.max.split(' ').size
end

def most_words_found(sentences = ["please wait", "continue to fight", "continue to win"])
  mostwords=[]
  for s in sentences
    mostwords << s.split(' ').size
  end
return mostwords.max  
end

p most_words_found