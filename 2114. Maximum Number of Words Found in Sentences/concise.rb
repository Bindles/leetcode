#MY_SOLUTION.CONCISE=>1LINER(3mins)
def most_words_found(sentences)
  mostwords=[]
  sentences.each { |s| mostwords << s.split(' ').size } && mostwords.max  
end