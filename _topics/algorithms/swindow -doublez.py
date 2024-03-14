def max_two_non_overlapping_subarrays(nums, k):
    if not nums or k <= 0 or k > len(nums):
        return 0
    
    n = len(nums)
    max_sum = 0

    # Calculate the maximum sum of a subarray of size k from left to right
    left_max = [0] * n
    window_sum = 0
    for i in range(n):
        window_sum += nums[i]
        if i >= k:
            window_sum -= nums[i - k]
        if i >= k - 1:
            left_max[i] = max(window_sum, left_max[i - 1] if i > 0 else 0)

    # Calculate the maximum sum of a subarray of size k from right to left
    right_max = [0] * n
    window_sum = 0
    for i in range(n - 1, -1, -1):
        window_sum += nums[i]
        if i + k < n:
            window_sum -= nums[i + k]
        if i + k <= n - 1:
            right_max[i] = max(window_sum, right_max[i + 1] if i < n - 1 else 0)

    # Find the maximum sum of two non-overlapping subarrays
    for i in range(k - 1, n - k):
        max_sum = max(max_sum, left_max[i] + right_max[i + 1])

    return max_sum

# Example usage:
nums = [1, 4, 2, 10, 2, 3, 1, 0, 20, 7, 14, 5, 9]
k = 3
print("Original Array:", nums)
print("Maximum sum of two non-overlapping subarrays:", max_two_non_overlapping_subarrays(nums, k))
