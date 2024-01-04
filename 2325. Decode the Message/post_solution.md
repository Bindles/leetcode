# Intuition

<!-- Describe your first thoughts on how to solve this problem. -->

# Approach

<!-- Describe your approach to solving the problem. -->

First i learned how to convert a number to its corresponding letter so when i iterated through each char in key i could give it the index converted. heres howi converted:
number = 3
letter = ('a'.ord + number - 1).chr

Then i iterated through each character in key with index and assigned hash[z] with the index but converted to letter.

Next i iterated through each char in message, checked if hash[message.current.char] was nil and if so assigned a space (" ") to result array, else i assigned hash[message.current.char]'s value to the result array and returned result.

# Complexity

- Time complexity:
<!-- Add your time complexity here, e.g. $$O(n)$$ -->

- Space complexity:
<!-- Add your space complexity here, e.g. $$O(n)$$ -->

# Code

```
def decode_message(key, message)
  result=[]
  hasher={}

  a=key.split('').uniq
  a.delete(" ")
  b = a.join

  b.each_char.with_index(1) do |c,ind|
    hasher[c]= ('a'.ord + ind - 1).chr
  end

  message.each_char do |fuk|
  hasher[fuk].nil? ? (result << " ") : (result << hasher[fuk])
  end
return result.join
end

```
