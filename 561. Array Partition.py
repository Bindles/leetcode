#PYTHON
#*561. Array Partition
nums = [1,4,3,2]

#*SOL
def array_pair_sum(nums):
    return sum(sorted(nums)[::2])

print(array_pair_sum(nums))
