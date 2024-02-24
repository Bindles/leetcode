#*125 Valid Palindrome | scan match delete reverse casecmp pattern matching
# @param {String} s
# @return {Boolean}
#* SOL1 | DELETE | FASTEST
def is_palindrome(s = "A man, a plan, a canal: Panama")
  str=s.downcase.delete("^a-z0-9")
  str.reverse==str
end
p is_palindrome

#SOL 2 | select.match?
def is_palindrome(s = "A man, a plan, a canal: Panama")
    p formatted_string = s.chars.select {|char| char.match?(/[a-zA-Z]/) || char.match?(/\d/)}.join.downcase
    p formatted_string == formatted_string.reverse
end
 is_palindrome

#SOL 2.5 | SELECT.MATCH | REGEX COMBINED
def is_palindrome(s)
  p formatted_string = s.downcase.chars.select {|char| char.match?(/[a-z0-9]/)}.join
  p formatted_string == formatted_string.reverse
end

#SOL 3 | SCAN
def is_palindrome(s)
  p formatted_string = s.downcase.scan(/[a-z0-9]/).join
  p formatted_string == formatted_string.reverse
end

#*DOESNT WORK
#SOL 4 | 2POINTER | FAILS EDGE-CASE
def is_palindrome(s = "A man, a plan, a canal: Panama")
  # Initialize pointers for the start and end of the string
  left = 0
  right = s.length - 1

  # Iterate until the pointers meet or cross
  while left < right
    # Skip non-alphanumeric characters from the left
    left += 1 until /[a-z0-9]/i.match?(s[left])
    # Skip non-alphanumeric characters from the right
    right -= 1 until /[a-z0-9]/i.match?(s[right])

    # If characters at pointers don't match, return false
    return false if s[left].casecmp(s[right]) != 0

    # Move pointers inward
    left += 1
    right -= 1
  end
  # If the loop completes without returning false, it's a palindrome
  true
end


#*REFRESH
#REGEX MATCH letter,number
s = "hey:0man"
s.each_char do |char|
  puts char if char.match?(/[a-zA-Z]/) || char.match?(/\d/)
end

#RUBY B-I STRING MATCHING 
ss = "A man, a plan, a canal: Pa*nama"
p str=ss.downcase.delete("^a-z0-9")
p str=ss.downcase.delete("a-z0-9")
p str=ss.downcase.delete("a-z0-9,:*")

#CASECMP
string1 = "Hello"
string2 = "hello"
string3 = "World"
print string1.casecmp(string2), ' '  # Output: 0 (because "Hello" is equal to "hello" when case is ignored)
print string1.casecmp(string3), ' '  # Output: -1 (because "Hello" comes before "World" in lexicographical order)
print string3.casecmp(string1), ' '  # Output: 1 (because "World" comes after "Hello" in lexicographical order)


# Matching against regular expressions
case "hello"
  in /hel+o/
    puts "String matches pattern"
end
  # Output: String matches pattern


#* Python (Using for loops with tuple unpacking):
# # Python using for loops with tuple unpacking
# points = [(1, 2), (3, 4), (5, 6)]
# for x, y in points:
#     print(f"x: {x}, y: {y}")

#* Ruby (Using block syntax with pattern matching):
# Ruby using block syntax with pattern matching
points = [[1, 2, 10], [3, 4, 9], [5, 6, 8]]
points.each do |x, y, z|
  puts "x: #{x}, y: #{y}, z: #{z}"
end
  