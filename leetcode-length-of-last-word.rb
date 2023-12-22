#my first solution
# @param {String} s
# @return {Integer}
def length_of_last_word(s)
   return s.split(' ').last.length
end

def length_of_last_word2(s)
   a=s.split(" ")
   return a.last.length
end

def length_of_last_word3(s)
    s.split[-1].size
end

#training 028 index 1st occ
puts length_of_last_word("Hello World")
puts length_of_last_word2("Hello World")
puts length_of_last_word3("Hello World")

def strstr(n, h)
  p n
  p h
  p n.index(h)
  n.each_char do |i|
    puts i
  end
end

strstr("sadbutsad", "sad")

def zz
  p "sadbutsad".split(' ')
end
zz