#PYTHON
#* 58. Length of Last Word
s = "Hello World"
#* MY SOL
# @param {String} s
# @return {Integer}
#*MY SOL
def length_of_last_word(s)
    return s.split[-1].length
end
p length_of_last_word(s)

#*READ
def length_of_last_word(s)
    sp = s.split
    return sp[-1].length
end
  p length_of_last_word(s)

#*MY FIRST OLD SOL
def length_of_last_word(s)
    return s.split(' ').last.length
end
p length_of_last_word(s)

#*READ
def length_of_last_word(s)
    sp=s.split(" ")
    return sp.last.length
end
p length_of_last_word(s)