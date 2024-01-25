#MY_SOLUTION(4mins)
def most_words_found(sentences)
  mostwords=[]
  for s in sentences
    mostwords << s.split(' ').size
  end
return mostwords.max  
end
