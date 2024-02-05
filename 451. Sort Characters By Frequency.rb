# @param {String} s
# @return {String}

#THOUGHT I COMPLETED NORMAL QUESTION IN 1 MINUTE | DIDNT WORK :(
#FAILS
def frequency_sort(s="aloveleetcode")
  sa = s.split('').sort { |a,b| b <=> a }
  p s.each_char.sort{ |a,b| sa.count(b) <=> sa.count(a) }.join
end
#OUTPUT: "eeeeloloctvda"

#MY SOLUTION #1
def frequency_sort(s="loveleetcode")
  hashcount = s.split('').tally
  s.each_char.sort_by { |c| [-hashcount[c], c] }.join
end

p frequency_sort

#TIME TO OPTIMIZE SOL#2:
def frequency_sort(s="loveleetcode")
  s.chars.tally.sort_by { -_2 }.map { |a,b|  p a*b}.join
end

#WORKING . . .
def frequency_sort(s="loveleetcode")
  hash = {}
  hash["a"]=1
  p hash
  p '--'
  s.each_char { |c| hash[c]=1 }
  p s.split('').tally
  p hash
end

def frequency_sort(s="loveleetcode")
  # hash = Hash.new(0)
  # s.each_char { |char| hash[char] += 1 }
  # p hash
  hashcount = s.split('').tally
  s.each_char.sort_by { |c| [-hashcount[c], c] }.join
end


# **********************************
#BEST OPTIMAL SOLUTION I FOUND AFTER
def frequency_sort(s="loveleetcode")
  s.chars.tally.sort_by { -_2 }.map { _1 * _2 }.join
end
#***********************************

p frequency_sort

#NEWLY USED: { -_2 }.map
#FOUND OUT: (hash).map { _1 * _2 }.join

#LEARN A TON
p "treehouse".split('').tally
p "treehouse".chars.tally

p "treehouse".chars.tally.each {|a,b| p a, b}
p "treehouse".chars.tally.map {|a,b| p a, b}

p "treehouse".chars.tally.map { p _1* _2}

p "treehouse".chars.tally.sort_by { _1}



# a =[1,1,2,3]

# s = "loveleetcode"
# hash = Hash.new { |h, k| s.each_char { |char| h[char] = 0 } }
# p hash

# sa = s.split('').sort { |a,b| b <=> a }
# p sa
# s.each_char.sort{ |a,b| sa.count(b) <=> sa.count(a) }.join