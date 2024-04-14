#PYTHON
#* 713. Subarray Product Less Than K
nums = [10,5,2,6]; k = 100
from typing import List
from functools import reduce

class Solution:
    def numSubarrayProductLessThanK(self, nums: List[int], k: int) -> int:
        res = 0
        len_nums = len(nums)
        w = 0
        while w < len_nums:
            for i in range(len_nums - w):
                if reduce(lambda x, y: x * y, nums[i:i+w+1]) < k:
                    res += 1
            w += 1
        return res

print(Solution().numSubarrayProductLessThanK(nums, k))


#from itertools import accumulate
from operator import mul
class Solution:
    def numSubarrayProductLessThanK(self, nums: List[int], k: int) -> int:
        res = 0
        len_nums = len(nums)
        w = 0
        while w < len_nums:
            for i in range(len_nums - w):
                if reduce(mul, nums[i:i+w+1]) < k:
                    res += 1
            w += 1
        return res

print(Solution().numSubarrayProductLessThanK(nums, k))

#* PUTS AND CHECK if nums[i:i+w+1]
class Solution:
    def numSubarrayProductLessThanK(self, nums: List[int], k: int) -> int:
        res = 0
        len_nums = len(nums)
        w = 0
        while w < len_nums:
            for i in range(len_nums - w):
                print(nums[i:i+w+1])
                if nums[i:i+w+1] and reduce(mul, nums[i:i+w+1]) < k:
                    res += 1
            w += 1
        return res

print(Solution().numSubarrayProductLessThanK(nums, k))

#* PUTS AND CHECK if nums[i:i+w+1]
class Solution:
    def numSubarrayProductLessThanK(self, nums: List[int], k: int) -> int:
        res = 0
        len_nums = len(nums)
        w = 0
        while w < len_nums:
            product = 1
            for i in range(len_nums - w):
                product *= nums[i + w]
                if product < k:
                    res += 1
                else:
                    break
            w += 1
        return res
print(Solution().numSubarrayProductLessThanK(nums, k))

# Example usage:
# nums = [10, 2, 5]
# k = 100
print(Solution().numSubarrayProductLessThanK(nums, k))
import math
class Solution(object):
    def numSubarrayProductLessThanK(self, nums, k):
        """
        :type nums: List[int]
        :type k: int
        :rtype: int
        """
        if k <= 1:
            return 0

        result = 0
        left = 0
        log_product = 0

        for right, num in enumerate(nums):
            log_product += math.log(num)
            while log_product >= math.log(k):
                log_product -= math.log(nums[left])
                left += 1
            result += right - left + 1
        return result
print(Solution().numSubarrayProductLessThanK(nums, k))

#* GOOD OTHER
class Solution(object):
    def numSubarrayProductLessThanK(self, nums, k):
        """
        :type nums: List[int]
        :type k: int
        :rtype: int
        """
        if k <=1:
            return 0
        product = 1
        result = 0
        left = 0

        for right, num in enumerate(nums):
            product *= num
            while product >= k:
                product /= nums[left]
                left += 1
            result += right - left + 1
        return result