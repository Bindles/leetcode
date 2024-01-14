def bcz(s = "ab#c")
  stack = []

  s.each_char do |char|
    if char == "#"
      p char
      p "pop =>"
      p stack.pop
    else
      p "normal char #{char}"
      p "push =>"
      p stack.push(char)
    end
  end

  p stack.join
end

bcz



##
# The function `b` compares two strings after removing all characters followed by a "#" symbol, and
# returns true if the resulting strings are equal.
# 
# Args:
#   s: The parameter `s` is a string that represents a sequence of characters. Defaults to ab#c
#   t: The parameter `t` represents a string. In the given code, the default value for `t` is "ad#c".
# Defaults to ad#c
def b(s = "ab#c", t = "ad#c")
  sa,ta = [],[]
  s.each_char { |char| char == "#" ? sa.pop : sa.push(char) } 
  t.each_char { |char| char == "#" ? ta.pop : ta.push(char) } 
  sa == ta
end

sa,ta = [],[]
s.each_char { |char| char == "#" ? sa.pop : sa.push(char) } 
t.each_char { |char| char == "#" ? ta.pop : ta.push(char) } && sa == ta
end

p b

def b(s = "ab#c", t = "ad#c")
      s.each_char.with_object([]) { |char, arr| char == "#" ? arr.pop : arr.push(char) } &&
      t.each_char.with_object([]) { |char, arr| char == "#" ? arr.pop : arr.push(char) }
end

def backspace_compare(s, t)
  sa,ta = [],[]
  s.each_char { |char| char == "#" ? sa.pop : sa.push(char) } && t.each_char { |char| char == "#" ? ta.pop : ta.push(char) } && (sa == ta)
end


p b

def backspace_compare(s, t)
  sa,ta = [],[]
  s.each_char{|char|char=="#" ? sa.pop : sa.push(char)} 
  t.each_char {|char|char=="#" ? ta.pop : ta.push(char)} && sa==ta
end


def backspace_compare(s, t)
  sa,ta = [],[]
  s.each_char{|char|char=="#" ? sa.pop : sa.push(char)} && t.each_char {|char|char=="#" ? ta.pop : ta.push(char)}&&sa==ta
end


p '---'
az =[1,2,3,4,5]
az.push(1)
p az
az.pop
p az
az.pop
p az