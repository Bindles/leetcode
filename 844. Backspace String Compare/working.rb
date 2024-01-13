# @param {String} s
# @param {String} t
# @return {Boolean}
def backspace_compare(s, t)
  s.each_char.with_index do |str,ind|
      s.slice!(ind) and s.slice!(ind)  if s[ind+1] == "#"
  end
  p s
  t.each_char.with_index do |str,ind|
      t.slice!(ind) and t.slice!(ind)  if t[ind+1] == "#"
  end
  p t
  return s==t

  
end