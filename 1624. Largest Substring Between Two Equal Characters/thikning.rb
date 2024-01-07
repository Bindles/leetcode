# @param {String} s
# @return {Integer}
def max_length_between_equal_characters(s)
    
end

s = "abcd"
current_char = "empty"
x=0
i=0

*SUEDO*
ITER EACH in "acbd" |char|
if !current_char = "empty"
    if curren_char == char
        larr << x
        x = 0
    elsif current_char != char
        x += 1
    
else
current_char =  char