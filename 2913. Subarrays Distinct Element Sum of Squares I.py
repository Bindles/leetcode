def sum_counts(nums):
    tsum = 0
    for i in range(len(nums)):
        distinct_count = {}
        for j in range(i, len(nums)):
            distinct_count[nums[j]] = distinct_count.get(nums[j], 0) + 1
            tsum += len(distinct_count) ** 2
    return tsum
print(sum_counts([1,2,1]))