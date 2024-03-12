#PYTHON
#* 2441. Largest Positive Integer That Exists With Its Negative
nums = [-1,10,6,7,-7,1]
# @param {Integer[]} nums
# @return {Integer}
#* CONCISE
def findMaxK(nums):
    return max((n for n in set(nums) if n > 0 and -n in nums), default=-1)

print(findMaxK(nums))

#*SOL
def findMaxK(nums):
    uniqueNums = set(nums)
    lp = -1

    for num in uniqueNums:
        if -num in uniqueNums and num > 0:
            lp = max(lp, num)
    return lp

print(findMaxK(nums))

#* SOL
def findMaxK(nums):
    while(True):
        num=max(nums)
        if(-num in nums):
            return num
        else:
            nums.remove(num)
        if(len(nums)==0):
            return -1
print(findMaxK(nums))

#* COMMENTS
def findMaxK(nums):
    unique_nums = set(nums)  # Create a set to store unique numbers from the input list.
    largest_positive = -1  # Initialize the largest positive number found so far to -1.

    # Iterate through each number in the set of unique numbers.
    for num in unique_nums:
        # Check if the set contains the negative of the current number, and if the current number is positive.
        if -num in unique_nums and num > 0:
            # If the conditions are met, update the largest positive number found so far.
            largest_positive = max(largest_positive, num)

    # Return the largest positive number found, or -1 if no such number exists.
    return largest_positive if largest_positive != -1 else -1

print(findMaxK(nums))
