def sumOddLengthSubarrays(arr):
    n = len(arr)
    total_sum = 0

    for i in range(n):
        for j in range(i, n, 2):  # Increment by 2 to maintain odd length
            total_sum += sum(arr[i:j+1])  # Calculate the sum of the subarray

    return total_sum

# Test the function
arr1 = [1,4,2,5,3]
print(sumOddLengthSubarrays(arr1))  # Output: 58

arr2 = [1,2]
print(sumOddLengthSubarrays(arr2))  # Output: 3

arr3 = [10,11,12]
print(sumOddLengthSubarrays(arr3))  # Output: 66


from typing import List

class Solution:
    def sumOddLengthSubarrays(self, arr: List[int]) -> int:
        total_sum = 0
        n = len(arr)
        
        for i in range(n):
            for j in range(i, n, 2):  # Increment by 2 to maintain odd length
                total_sum += sum(arr[i:j+1])  # Calculate the sum of the subarray

        return total_sum

# Test the function
solution = Solution()
arr1 = [1, 4, 2, 5, 3]
print(solution.sumOddLengthSubarrays(arr1))  # Output: 58

arr2 = [1, 2]
print(solution.sumOddLengthSubarrays(arr2))  # Output: 3

arr3 = [10, 11, 12]
print(solution.sumOddLengthSubarrays(arr3))  # Output: 66
