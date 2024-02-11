def count_matching_subarrays(nums, pattern):
    n = len(nums)
    m = len(pattern)
    count = 0
    
    # Define a function to check if a subarray matches the pattern
    def matches_pattern(subarray):
        for i in range(m):
            if pattern[i] == 1:
                if subarray[i + 1] <= subarray[i]:
                    return False
            elif pattern[i] == -1:
                if subarray[i + 1] >= subarray[i]:
                    return False
            elif pattern[i] == 0:
                if subarray[i + 1] != subarray[i]:
                    return False
        return True
    
    # Initialize the sliding window
    window = nums[:m]
    
    # Check the initial window
    if matches_pattern(window):
        count += 1
    
    # Slide the window and check each subarray
    for i in range(1, n - m + 1):
        window.pop(0)
        window.append(nums[i + m - 1])
        if matches_pattern(window):
            count += 1
    
    return count

# Test cases
print(count_matching_subarrays([1,2,3,4,5,6], [1,1]))  # Output: 4
print(count_matching_subarrays([1,4,4,1,3,5,5,3], [1,0,-1]))  # Output: 2
