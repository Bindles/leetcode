#PYTHON
#* 1295. Find Numbers with Even Number of Digits
nums = [12,345,2,6,7896]
#* MY SOL
def find_numbers(nums):
    #return sum(1 for num in nums if len(str(num)) % 2 == 0)
    return [num for num in nums if len(str(num)) % 2 == 0]

print(find_numbers(nums))  # Output: 2


#* FOR FUN / LEARNING. . .
#* MODIFY CONDITION => RETURN ARRAY OF ELEMS
def find_numbers(nums):
    return [num for num in nums if len(str(num)) % 2 == 0]

print(find_numbers(nums))  # Output: 2

#* MODIFY CONDITION => RETURN ARRAY OF ELEMS * 10
def find_numbers(nums):
    return [num * 10 for num in nums if len(str(num)) % 2 == 0]

print(find_numbers(nums))  # Output: [120, 78960]

#* MODIFY CONDITION => RETURN ARRAY OF ELEMS, SEPERATELY .MAP ELEM * ELEM
def find_numbers(nums):               #num * num == num**2
    filtered_nums = [num for num in nums if len(str(num)) % 2 == 0]
    mapped_nums = list(map(lambda num: num * num, filtered_nums))
    return mapped_nums

print(find_numbers(nums))  # Output: [144, 62346816]

#* ONE LINE AGAIN
def find_numbers(nums):
    return [num * num for num in nums if len(str(num)) % 2 == 0]

print(find_numbers(nums))  # Output: [144, 62346816]






