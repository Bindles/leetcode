from typing import List
#*Sol | Typing | LC ACCEPTS
class Solution:
    def isAcronym(self, words: List[str], s: str) -> bool:
        return ''.join(word[0] for word in words) == s

#call
words = ["alice", "bob", "charlie"]
s = "abc"
solution = Solution()
print(solution.isAcronym(words, s))

#*Sol | No Typing | self | LC ACCEPTS
class Solution:
  def isAcronym(self, words, s):
    return ''.join(word[0] for word in words) == s

#call
words = ["alice", "bob", "charlie"]
s = "abc"
solution = Solution()
print(solution.isAcronym(words, s))

#* NO SOL | TYPING | LC WONT ACCEPT
def isAcronym(words: List[str], s: str) -> bool:
    return ''.join(word[0] for word in words) == s

words = ["alice", "bob", "charlie"]
s = "abc"
print(isAcronym(words, s))


#*NO SOL | NO TYPING | NO SELF | LC WONT ACCEPT
def isAcronym(words, s):
    return ''.join(word[0] for word in words) == s

#call
words = ["alice", "bob", "charlie"]
s = "abc"
print(isAcronym(words, s))

#*EXTRA CALL METHOD
class MyClass:
    def my_method(self):
        print("Hello from my_method!")

# Create an instance of MyClass
obj = MyClass()

# Call the method on the instance
obj.my_method()
