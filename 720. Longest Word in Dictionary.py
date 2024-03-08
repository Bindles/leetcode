#PYTHON
#*720. Longest Word in Dictionary
words = ["a","banana","app","appl","ap","apply","apple"]
class Solution:
    def longestWord(self, words):
        wordsMap = set(words)
        words.sort(key = lambda x : (-len(x), x))
        
        for word in words:
            flag = False
            for i in range(1,len(word)):
                k = word[:i]
                if word[:i] in wordsMap:
                    continue
                else:
                    flag = True
            if not flag:
                return word
        return ""    

s=Solution()
print(s.longestWord(words))