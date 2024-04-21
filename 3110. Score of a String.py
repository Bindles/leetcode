#PYTHON
#* 3110. Score of a String
s = "hello"
#* SOL | NO SEPERATE EACH_CONS FUNCTION
def score_of_string(s):
    return sum(abs(ord(a) - ord(b)) for a, b in zip(s, s[1:]))
print(score_of_string(s))

#* FN -> EACH_CONS
def each_cons(xs, n):
    return zip(*(xs[i:] for i in range(n)))

#* SOLUTION 2 | W SEP EACH_CONS
def score_of_string(s):
    return sum(abs(pair[0] - pair[1]) for pair in each_cons(s.encode(), 2))
print(score_of_string(s))

#* MISC
#* PRINT PAIRS
def score_of_string(s):
   print(list(each_cons(s,2)))
print(score_of_string(s))

#* PRINT CHAT
def score_of_string(s):
   for char in s:
    print(char)
print(score_of_string(s))

# #* SOLUTION
# def score_of_string(s)
#     s.chars.each_cons(2).sum { |pair| (pair[0].ord - pair[1].ord).abs }
# end
# p score_of_string(s)
