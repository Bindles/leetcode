#* 2788. Split Strings by Separator
words = ["one.two.three","four.five","six"]
separator = "."
# @param {String[]} words
# @param {Character} separator
# @return {String[]}
def split_words_by_separator(words, separator)
  words.join(separator).split(separator).reject(&:empty?)
end
p split_words_by_separator(words,separator)