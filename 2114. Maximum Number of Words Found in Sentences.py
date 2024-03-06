#MY SOL
#*2114. Maximum Number of Words Found in Sentences
sentences = ["alice and bob love leetcode", "i think so too", "this is great thanks very much"]

class Solution:
    def mostWordsFound(self, sentences):
        count=[]
        for sent in sentences:
            count.append(len(sent.split()))
        return max(count)
    
sol=Solution()
print(sol.mostWordsFound(sentences))


#*SOL 2 | No Array
class Solutionz:
    def mostWordsFound(self, sentences):
        count=0
        for sentence in sentences:
            count=max(count,len(sentence.split(' ')))
        return count
    
solz=Solutionz()
print(solz.mostWordsFound(sentences))