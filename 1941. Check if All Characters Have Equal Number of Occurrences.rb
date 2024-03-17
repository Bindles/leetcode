#* 1941. Check if All Characters Have Equal Number of Occurrences
s = "abacbc"
# @param {String} s
# @return {Boolean}
#* MY SOLUTIONS
#* SOL 1
def are_occurrences_equal(s)
  count = s.count(s[0])
  tally = s.chars.tally
  return tally.all?{|k,v| v == count}
end
p are_occurrences_equal(s)

#* SOL 2
  def are_occurrences_equal(s)
    s.chars.tally.values.uniq.size == 1
  end
p are_occurrences_equal(s)

#* INTERSTING OTHER PPL SOL
# @param {String} s
# @return {Boolean}
def are_occurrences_equal(s)
  s.chars.tally.values.tally.count == 1
end
p are_occurrences_equal(s)