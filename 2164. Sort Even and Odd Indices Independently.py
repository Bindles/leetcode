#PYTHON
#* 2164. Sort Even and Odd Indices Independently
nums = [4,1,2,3]
#*MY SOL 
def sort_even_odd(nums):
    evens, odds = [nums[i] for i in range(len(nums)) if i % 2 == 0], [nums[i] for i in range(len(nums)) if i % 2 != 0]
    evens.sort()
    odds.sort(reverse=True)
    return [evens.pop(0) if i % 2 == 0 else odds.pop(0) for i in range(len(nums))]

print(sort_even_odd(nums))
