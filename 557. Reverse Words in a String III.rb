# @param {String} s
# @return {String}
def reverse_words(s)
    p s.split.map(&:reverse).join(' ')
end

p reverse_words("Let's take LeetCode contest")




#NOTES 
#JOIN == JOIN('') | SPLIT SORTA == SPLIT(' ')
# split and split(' ') are not equivalent.

# split: This method splits a string into an array of substrings based on whitespace characters (spaces, tabs, newlines, etc.). It will remove leading and trailing whitespace and split the string at each occurrence of one or more consecutive whitespace characters.

# split(' '): This method explicitly splits a string on spaces only. It will split the string at each occurrence of a space character (' '), but it will not split on other whitespace characters like tabs or newlines.

array = ["apple", "banana", "orange"]
puts array.join
# Output: "applebananaorange"

puts array.join('')
# Output: "applebananaorange"