class Solution:
    def truncateSentence(self, s: str, k: int) -> str:
        return (" ").join(s.split()[:k])

s = "Hello how are you Contestant"
k = 4
sol= Solution()
print(sol.truncateSentence(s,k))

print(s)
print(s.split())
print(s)
a=s.split()
print(a)
print(a[0])
print(" ".join(a[:3]))


# Creating a list of words
words = ["apple", "banana", "orange", "grape", "pear"]

# Slicing to get a sublist
print(words[1:4])  # Output: ["banana", "orange", "grape"]
print(words[:3])   # Omitting start index defaults to 0, so it includes elements from the beginning up to index 2
print(words[2:])   # Omitting end index defaults to the length of the list, so it includes elements from index 2 to the end
print(words[::-1]) # Reverses the list

# Adding and removing elements
words.append("melon")     # Adds "melon" to the end of the list
words.insert(2, "kiwi")   # Inserts "kiwi" at index 2
words.pop(0)               # Removes and returns the element at index 0 ("cherry")
words.remove("banana")    # Removes the first occurrence of "banana"
print(words)  # Output: ["kiwi", "orange", "grape", "pear", "melon"]