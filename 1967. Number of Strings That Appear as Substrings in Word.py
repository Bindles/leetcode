#* 1967. Number of Strings That Appear as Substrings in Word
patterns = ["a","abc","bc","d"]
word = "abc"
# @param {String[]} patterns
# @param {String} word
# @return {Integer}
#* SOL 1
def num_of_strings(patterns, word):
    return sum(1 for p in patterns if p in word)

print(num_of_strings(patterns, word))