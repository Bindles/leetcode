#* 1544. Make The String Great
s = "leEeetcode"
# @param {String} s
# @return {String}
#* MY SOL 1
def make_good(s)
  i=0;res=[]
  
  valid_pair = ->(char1, char2) { char1 == char2 || [char1.upcase, char1.downcase].none? { |c| c == char2 } }

  while i < s.size do
      res << s[i]
      until i >= s.size || res.empty? || valid_pair.call(res.last, s[i + 1])
        res.pop
        i += 1
      end
      i += 1
  end
  res.join('')
end
p make_good(s)

#* MY SOL 2
def make_good(s)
  stack = []
  s.each_char do |char|
    (stack.last && (char.ord - stack.last.ord).abs == 32) ? stack.pop : stack.push(char)
  end
  stack.join('')
end
p make_good(s)

#* MY SOL 2 | CONCISE | EW_OBJECT
def make_good(s)
  s.chars.each_with_object([]) { |char, stack| (stack.last && (char.ord - stack.last.ord).abs == 32) ? stack.pop : stack.push(char) }.join('')
end
p make_good(s)

#* MY SOL 3 | REDUCE
def make_good(s)
  s.each_char.reduce([]) { |stack, char| (stack.last && (char.ord - stack.last.ord).abs == 32) ? stack.pop : stack.push(char); stack }.join('')
end
p make_good(s)


#* MISC
#* SOL 1 | UNTIL ONE LINER
def make_good(s)
  i=0;res=[]

  valid_pair = ->(char1, char2) { char1 == char2 || [char1.upcase, char1.downcase].none? { |c| c == char2 } }

  while i < s.size do
      res << s[i]
      (res.pop; i += 1) until i >= s.size || res.empty? || valid_pair.call(res.last, s[i + 1])
      i += 1
  end
  res.join('')
end
p make_good(s)


