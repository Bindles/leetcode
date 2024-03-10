apple = [1,3,2]
capacity = [4,3,1,5,2]
class Solution:
    def minimumBoxes(self, apple, capacity):

        total_capacity = 0
        total_apples = sum(apple)

        for count, c in enumerate(sorted(capacity)[::-1], 1):
            total_capacity += c
            if total_capacity >= total_apples:
                return count
s=Solution()
print(s.minimumBoxes(apple, capacity))
      