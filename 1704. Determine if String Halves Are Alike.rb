def halves_are_alike_x(s = "book")
  def count_vowels(x)
    x.each.select {|char| "aeiouAEIOU".include?(char)}.size
  end
  resulta, resultb =[],[]
  s.each_char.with_index { |char,ind| resulta << char if ind < (s.length / 2)}
  s.each_char.with_index { |char,ind| resultb << char if ind >= (s.length / 2)}
  p resulta, resultb
  p count_vowels(resulta)
  p count_vowels(resultb)
  count_vowels(resulta) == count_vowels(resultb)
end

p halves_are_alike_x

def halves_are_alike(s = "book")
  def count_vowels(x)
    x.each.select {|char| "aeiouAEIOU".include?(char)}.size
  end
  resulta, resultb =[],[]
  s.each_char.with_index { |char,ind| resulta << char if ind < (s.length / 2)}
  s.each_char.with_index { |char,ind| resultb << char if ind >= (s.length / 2)}
  return count_vowels(resulta) == count_vowels(resultb)
end

p halves_are_alike