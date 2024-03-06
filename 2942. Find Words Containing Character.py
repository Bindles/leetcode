#2942. Find Words Containing Character
words = ["leet","code"]
x = "e"
#*MY SOL
class Solution:
    def findWordsContaining(self, words, x):
        res=[]
        for index, word in enumerate(words):
            if x in word:
                res.append(index)
        return res


s=Solution()
print(s.findWordsContaining(words,x))


#*LEARN
# Example: Square all even numbers from 1 to 10
squares_of_evens = [x**2 for x in range(1, 11) if x % 2 == 0]
print(squares_of_evens)


# numbers = [1, 2, 3, 4, 5]
# even_numbers = numbers.select { |x| x.even? }

# Python:
numbers = [1, 2, 3, 4, 5]
even_numbers = filter(lambda x: x % 2 == 0, numbers)