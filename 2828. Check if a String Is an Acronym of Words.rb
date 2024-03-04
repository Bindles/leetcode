# @param {String[]} words
# @param {String} s
# @return {Boolean}
def is_acronym(words = ["alice","bob","charlie"], s = "abc")
    p words.map{ |word| word[0]}.join == s
end
is_acronym