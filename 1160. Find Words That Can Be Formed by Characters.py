#PYTHON
#*1160. Find Words That Can Be Formed by Characters
words = ["cat", "bt", "hat", "tree"]
chars = "atach"
#*MY SOL | CONCISE
class SB:
    def countCharacters(self, words, chars):
        sumOfLengths = 0
        for word in words:
            if all(word.count(char) <= chars.count(char) for char in word):
                sumOfLengths += len(word)
        return sumOfLengths
s = SB()
print(s.countCharacters(words, chars))

#*MY SOL | WORKING 
class SA:
    def countCharacters(self, words, chars):
        res=0
        # Loop through each word in the list
        for word in words:
        # Check each character in the word
            for char in word:
                # Check if the character exists in chars
                if char not in chars:
                    print(f"Character '{char}' not found in '{chars}' for word '{word}'")
                    break
            else:
                print(f"All characters in '{word}' found in '{chars}'", len(word))
                res+=len(word)

        print(res)



s = SA()
print(s.countCharacters(words, chars))







print('----')
word="cat"
print(word.count(chars))
print(all(word.count(char) <= chars.count(char) for char in word))