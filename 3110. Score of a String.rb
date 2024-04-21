#* 3110. Score of a String
 s = "hello"
# @param {String} s
# @return {Integer}
#* PUTS | SOL BELOW
def score_of_string(s)
    s.chars.each_cons(2).each do |x|
        p x
    end
end
p score_of_string(s)

#* SOLUTION
def score_of_string(s)
    s.chars.each_cons(2).sum { |pair| (pair[0].ord - pair[1].ord).abs }
end
p score_of_string(s)
#* USE BYTES
def score_of_string(s)
    s.bytes.each_cons(2).sum { |pair| (pair[0] - pair[1]).abs }  
end
p score_of_string(s)

#* WORKING
def score_of_string(s)
    s[1].ord
    s.chars.map(&:ord)
end
p score_of_string(s)