# @param {String} sentence
# @return {Boolean}

#MY SOL 1 | TALLY
def check_if_pangram(sentence)
    p sentence.each_char.tally.count >= 26
end
#MY SOL 1 | EACH_CHAR => CHARS
def check_if_pangram(sentence)
  p sentence.chars.tally.count >= 26
end

#MY SOL 2 | CHARS => UNIQ => SORT | NO HASH
def check_if_pangram(s)
  s.chars.uniq.sort == ('a'..'z').to_a
end

p check_if_pangram("thequickbrownfoxjumpsoverthelazydog")

