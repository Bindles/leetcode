# @param {Integer} n
# @return {Boolean}
#*SOL 1 | OK
def is_happy(n)
  return true if n == 1
  return false if n < 9 && n != 7
  num = n.digits.sum{|digit|digit*digit}
  is_happy(num)
end

#SOL 2 | FAILS END | SO CLOSE
def is_happy(n)
  seen = Set.new
  while n != 1 && !seen.include?(n)
    seen.add(n)
    len = n.to_s.length
    n = n.to_s.chars.map(&:to_i).sum { |digit| digit**len }
  end
  n == 1
end

#*NOTHING BELOW HERE WORKS
#WORKING
def is_happy(n = 19)
  p len = n.to_s.length
  p a = (1**len) + (9**len)
  n.each_char do |nn|
    p nn
  end
end

def is_happy(n = 19)
  p len = n.to_s.length
  result = n.to_s.chars.map(&:to_i).sum { |digit| digit**len }
  puts result  # Output: 82
end
is_happy


# n = 19
# len = n.to_s.length

# result = n.to_s.chars.map(&:to_i).sum { |digit| digit**len }
# p result  # Output: 82
