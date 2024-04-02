#* 1844. Replace All Digits with Characters
s = "a1c1e1"
# @param {String} s
# @return {String}
#* I DID A TON OF SOLUTIONS :)
#* SOL 1 | 2ND TRY
def replace_digits(s)
  shift = ->(c, x) { ((c.ord - 'a'.ord + x.to_i) % 26 + 'a'.ord).chr }
  s.chars.each_slice(2).map { |char, digit| [char, shift.call(char, digit)] }.flatten.join
end

puts replace_digits(s) 

#* SOL 2 | OG SOL CAME BACK
def replace_digits(s)
  res = []
  s.chars.each_slice(2) do |chr_a, chr_b|
      p res << chr_a
      p res << (chr_a.ord + chr_b.to_i).chr if chr_b
  end
  res.join
end
p replace_digits(s)
#* SOL 2.1 | READABLE/CONCISE
def replace_digits(s)
  s.chars.each_slice(2) do |a_of_pair, b_of_pair|
    s[b_of_pair] = (a_of_pair.ord + b_of_pair.to_i).chr if b_of_pair
  end
  s
end
#* SOL 2.2 | SUPER CONCISE
def replace_digits(s)
  s.chars.each_slice(2) {|a,b| s[b] = (a.ord + b.to_i).chr if b} and s
end
p replace_digits(s) # Output: "abcdef"

#* SOL 3
def replace_digits(s)
  s.chars.each_with_index{|chr,i| s[i] << (s[i-1].ord + chr.to_i).chr if i.odd?} and s
end
p replace_digits(s) # Output: "abcdef"


#* TEST
p x = s.chars.each_with_index.map {|c,i| c if i.even?}
p  y = s.chars.each_with_index.map {|c,i| c if i.odd?}
p x.zip(y)
p z = s.chars.each_with_index.partition {|ch, ind| ind.even?}

p a = s.chars.select.with_index.map {|c,i| c if i.even?}
p b = s.chars.select.with_index.map {|c,i| c if i.odd?}


  p c = s.chars.select.with_index { |c, i| i.even? }
  p d = s.chars.select.with_index { |c, i| i.odd? }
  c.zip(d)

  better = s.chars.each_slice(2).to_a
  p better

def replace_digits(s)
  p zipped = s.chars.each_slice(2).to_a
end
p replace_digits(s)
#*(END)[TEST]




#* lambda written out
  # shift = lambda do |c,x|
  #   ((c.ord - 'a'.ord + x.to_i) % 26 + 'a'.ord).chr 
  # end




#*WORKING . . . . .
#*
#* DOESNT WORK AGAIN
p 'DOESNT WORK OG CLOSE'
def replace_digits(s)
  i = 1
  s.chars.each_slice(2) do |char, digit|
    s[i] = ((char.ord - 'a'.ord + digit.to_i) % 26 + 'a'.ord).chr
    i += 2
  end
  s
end
p replace_digits(s)
p 'doesnt work' #* DOESNT WORK
def replace_digits(s)
  result = ""
  s.chars.each_slice(2) do |char, digit|
    result += ((char.ord - 'a'.ord + digit.to_i) % 26 + 'a'.ord).chr
  end
  result
end
p replace_digits(s)
#* . . . . .

#* MISC
p 7 % 1 == 0
p 7 % 2 == 0 

p 7 % 2 == 1 #* never saw this as odd check until today always % 1 == 0