#* 1451. Rearrange Words in a Sentence
text = "Leetcode is cool"
# @param {String} text
# @return {String}
def arrange_words(text)
    text.split.sort_by{|word| word.length}.join(" ").capitalize
end
p arrange_words(text)

