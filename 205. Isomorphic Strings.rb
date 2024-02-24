# @param {String} s
# @param {String} t
# @return {Boolean}
#*SOL 1 | CONCISE
def is_isomorphic(s = "foo", t = "bar")
  s.chars.map{s.index(_1)} == t.chars.map{t.index(_1)} 
end
#*SOL 1 | PUTS
def is_isomorphic(s = "foo", t = "bar")
  p s.chars.map{|char|s.index(char)}
  p t.chars.map{|char|t.index(char)} 
  s.chars.map{|char|s.index(char)} == t.chars.map{|char|t.index(char)} 
end
p is_isomorphic