#*2108. Find First Palindromic String in the Array
# @param {String[]} words
# @return {String}
def first_palindrome(words = ["abc","car","ada","racecar","cool"])
    words.find{|w|w == w.reverse} || ""
end
p first_palindrome

#*LEARN
module Enumerable
    def each
      index = 0
  
      while index < size
        yield(self[index])
        index += 1
      end
  
      self # Return the original collection
    end
  
    def find
      index = 0
  
      while index < size
        element = self[index]
        return element if yield(element)
        index += 1
      end
  
      nil # Return nil if no element satisfies the condition
    end
end
  