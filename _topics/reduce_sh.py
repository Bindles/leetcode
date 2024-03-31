from functools import reduce
import operator

# Equivalent to Ruby's reduce(:+)
nums = [2, 3, 4, 5]
result = reduce(operator.add, nums)
print(result)  # Output: 14 (2 + 3 + 4 + 5 = 14)

# Equivalent to Ruby's reduce(:-)
nums = [2, 3, 4, 5]
result = reduce(operator.sub, nums)
print(result)  # Output: -10 (2 - 3 - 4 - 5 = -10)

# Equivalent to Ruby's reduce(:*)
nums = [2, 3, 4, 5]
result = reduce(operator.mul, nums)
print(result)  # Output: 120 (2 * 3 * 4 * 5 = 120)

# Equivalent to Ruby's reduce(:/)
nums = [100, 10, 2]
result = reduce(operator.truediv, nums)
print(result)  # Output: 5.0 (100 / 10 / 2 = 5.0)

# Equivalent to Ruby's reduce(:%)
nums = [100, 30, 7]
result = reduce(operator.mod, nums)
print(result)  # Output: 2 (100 % 30 % 7 = 2)

# Equivalent to Ruby's reduce(:**)
nums = [2, 3, 4]
result = reduce(operator.pow, nums)
print(result)  # Output: 4096 (2 ** 3 ** 4 = 4096)
