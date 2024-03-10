#* ARRAY => REDUCE [FUNCTION, INITIAL VALUE] (inject)
[1,2,3,4].reduce do |total, number|
  total + number
end
# => 10
p [1,2,3,4].inject { |total, number| total + number }
# => 10
p [1,2,3,4].reduce(100) { |total, number| total + number }
# => 110
# The shorthand way of summing up these numbers can be done using the following:

p [1,2,3,4].reduce(&:+)
# => 10
p [1,2,3,4].reduce(100, &:+)
# => 110

def greet(name)
  "Hello, #{name}!"
end

def greetlength(name)
  {name => name.length}
end

names = ["Alice", "Bob", "Charlie"]

# Using the & symbol to convert the method greet into a block
greetings = names.map(&method(:greet))
greetingz = names.map(&method(:greetlength))

puts greetings.inspect
p greetingz

def word_pattern(pattern="heyman", s="jj")
  p s.split.map(&pattern.chars.zip(s.split).to_h.invert) == pattern.chars
end