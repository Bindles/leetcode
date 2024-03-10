#*2894. Divisible and Non-divisible Sums Difference
#PYTHON
#*2894. Divisible and Non-divisible Sums Difference
n = 10;m = 3
# *nums[ternary].append(item) | well python ternary==closer to rails postfix if]
class Solution:
    def differenceOfSums(self, n, m):
        nums = [[], []]
        for i in range(1, n + 1):
            nums[1 if i % m == 0 else 0].append(i)
        return sum(nums[0]) - sum(nums[1])
        
s=Solution()
print(s.differenceOfSums(n,m))

#*reg ternary
def difference_of_sums(n, m):
    nums = [[], []]
    for i in range(1, n + 1):
        nums[1].append(i) if i % m == 0 else nums[0].append(i)
    return sum(nums[0]) - sum(nums[1])

print(difference_of_sums(n, m))

#* reg if
def difference_of_sums(n, m):
    nums = [[], []]
    for i in range(1, n + 1):
        if i % m == 0:
            nums[1].append(i)
        else:
            nums[0].append(i)
    return sum(nums[0]) - sum(nums[1])

print(difference_of_sums(n, m))
