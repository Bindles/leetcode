#*APPLES
class Solution:
    def minimumBoxes(self, apple, capacity):

        total_capacity = 0
        total_apples = sum(apple)

        for count, c in enumerate(sorted(capacity)[::-1], 1):
            total_capacity += c
            if total_capacity >= total_apples:
                return count

s=Solution()
apple = [5,5,5]
capacity = [2,4,2,7]
print(s.minimumBoxes(apple, capacity))
        