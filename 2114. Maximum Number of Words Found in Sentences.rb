# @param {String[]} sentences
# @return {Integer}
def most_words_found(sentences = ["alice and bob love leetcode", "i think so too", "this is great thanks very much"])
  sentences.each{|sentences| p sentences.split(' '), sentences.split(' ').length}
end
p most_words_found
def most_words_found(sentences = ["alice and bob love leetcode", "i think so too", "this is great thanks very much"])
  sentences.map{|sentences| sentences.split(' ').length}.max
end
p most_words_found
