#PYTHON
#* 189. Rotate Array
nums = [1,2,3,4,5,6,7]; k = 3
from collections import deque
# @param {Integer[]} nums
# @param {Integer} k
# @return {Void} Do not return anything, modify nums in-place instead.
#* SOL
def rotate(nums, k):
    nums_deque = deque(nums)
    nums_deque.rotate(-k)
    nums[:] = nums_deque
    return nums

print(rotate(nums, k))
print(nums)  # Output: [3, 4, 5, 1, 2]

#* DIDNT WORK RECHECK
def rotate(nums, k):
    for _ in range(k):
        nums.insert(0, nums.pop())
    return nums

print(rotate(nums, k))



print('TEST')

# place
# unshift <=>push
# insert     append
# remove
# shift <=> pop
# POP       POP
arr = [1, 2, 3]

# Using insert with a negative index to add 4 at the end of the list
arr.insert(-1, 4)
print(arr)  # Output: [1, 2, 4, 3]

arr.insert(0, 4)
print(arr)  # Output: [1, 2, 4, 3]

# Using append to add 4 to the end of the list
arr.append(4)
print(arr)  # Output: [1, 2, 4, 3, 4]



arr = [1, 2]
arr.insert(0, 0)  # Insert 0 at the beginning
print(arr)  # Output: [0, 1, 2]


arr = [1, 2]
arr = [0] + arr  # Concatenate [0] with arr
print(arr)  # Output: [0, 1, 2]



arr = [1, 2, 3, 4]
first_element = arr.pop(0)  # Remove and return the first element
print(first_element)  # Output: 1
print (arr)
last_element = arr.pop()  # Remove and return the last element
print(last_element)  # Output: 1
print(arr)


