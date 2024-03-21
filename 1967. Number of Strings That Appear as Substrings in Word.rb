#* 1967. Number of Strings That Appear as Substrings in Word
patterns = ["a","abc","bc","d"]
word = "abc"
# @param {String[]} patterns
# @param {String} word
# @return {Integer}
#* SOL 1
def num_of_strings(patterns, word)
  res=0
  patterns.each{|p| res+=1 if word.include?(p)}
  res
end
p num_of_strings(patterns, word) 
#* SOL 2 | CONCISE
def num_of_strings(patterns, word)
  patterns.count{|p| word.include?(p)}
end
p num_of_strings(patterns, word) 

#* INTERSTING SOLS
def num_of_strings(patterns, word)
    patterns.filter{|p| word.include?(p)}
end
p num_of_strings(patterns, word) 


#* COMPARE METHODS
def num_of_strings(patterns, word)
  p patterns.map{|p| word.include?(p)}
  p patterns.map{|p| p if word.include?(p)}
  p patterns.filter{|p| word.include?(p)}
  p patterns.find_all{|p| word.include?(p)}
  patterns.select{|p| word.include?(p)}
end
p num_of_strings(patterns, word) 