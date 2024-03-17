#* 409. Longest Palindrome
s = "abccccdd"
# @param {String} s
# @return {Integer}
#* SOL 1 | GOT IT AWH MATH
def longest_palindrome(s)
  result=0
  s.chars.tally.values.each do |val|
      result += (val / 2) * 2
      result += 1 if result.even? && val.odd?
  end
result
end
#* PUTS| 1.1
def longest_palindrome(s)
  result=0
  s.chars.tally.values.each do |val|
      p "#{result} #{val} |  #{result.even?} #{val.odd?}"
      p result += (val / 2) * 2
      p result += 1 if result.even? && val.odd?
  end
result
end
p longest_palindrome(s)
#* *********

#* ONELINERS
def longest_palindrome(s)
  [s.size, s.each_char.tally.sum { _2 & ~1 } + 1].min
end

def longest_palindrome(s)
  s.each_char.tally.reduce(0) do | r, (_, v) |
      r + (v & ~1) | v & 1
  end
end

def longest_palindrome(s)
  t = s.chars.tally
  t.sum { |_, v| v - v % 2 } + (t.any? { |_, v| v.odd? } ? 1 : 0)
end



#* INTERESTING

def longest_palindrome(s)
  counts = s.chars.tally.values
  sum = 0
  has_odd_count = false
  counts.each do |c|
    if c.even?
      sum += c
    else
      sum += c - 1
      has_odd_count = true
    end
  end
  sum + (has_odd_count ? 1 : 0)
end


#*BAD
def longest_palindrome(s)
  s.chars.tally.values.sum do |val|
    (val / 2) * 2 + (val.odd? ? 1 : 0)
  end
end
#*BAD
def longest_palindrome(s)
  s.chars.tally.values.sum do |val|
    (val & ~1) + (val & 1)
  end
end


#* WORKING*******
#*
def longest_palindrome(s)
  p s.chars.tally.sort_by{|_key, val| [val.even? || val == 1 ? 0 : 1, -val]}.each{|key, val| p "#{key} #{val}"}
end
p longest_palindrome(s)
#*
def longest_palindrome(s)
    p s.chars.tally.sort_by{|_key, val| -val}.reject{|_k,v| v.odd? && v != 1}.each{|key, val| p "#{key} #{val}"}
end
p longest_palindrome(s)
#*
def longest_palindrome(s)
  arr=[]
  mirror=[]
  x = s.chars.tally.sort_by{|_key, val| -val}.reject{|_k,v| v.odd? && v != 1}
  p x.each { |key, val|
      p "#{key} #{val}"
      if val > 1
      arr << key * (val / 2)
      elsif val == 1
        mirror[0]=key
      end
  }
  #mirror=arr
  #arr+arr.reverse
  mirror=mirror+(arr.reverse)
  (arr+mirror).join.split('').size
end
p longest_palindrome(s)
#* PASSED VISIBLE TESTS
def longest_palindrome(s)
  arr=[]
  mirror=[]
  x = s.chars.tally
  return 0 if x.size > 2
  x.sort_by{|_key, val| -val}.reject{|_k,v| v.odd? && v != 1}
  p x.each { |key, val|
      p "#{key} #{val}"
      if val > 1
      arr << key * (val / 2)
      elsif val == 1
        mirror[0]=key
      end
  }
  #mirror=arr
  #arr+arr.reverse
  mirror=mirror+(arr.reverse)
  (arr+mirror).join.split('').size
end
p longest_palindrome(s)

#* END *********