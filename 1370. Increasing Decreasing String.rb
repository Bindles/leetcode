#* 1370. Increasing Decreasing String
#* LEARN => STRING SORT INDEX EACH DELETE_AT | GT
s = "aaaabbbbcccc"
# @param {String} s
# @return {String}
#* MY SOL | AWESOME ONE DID IT FAST TOO
def sort_string(s)
  s = s.chars
  result = ''
  while !s.empty?
    s.uniq.sort.each do |letter|
      s.delete_at(s.index(letter) || s.length)
      result += letter
    end
    s.uniq.sort.reverse.each do |letter|
      s.delete_at(s.index(letter) || s.length)
      result += letter
    end
  end
  result
end
