#* 1200. Minimum Absolute Difference
arr = [4,2,1,3]
# @param {Integer[]} arr
# @return {Integer[][]}
#* MY SOL | OPTIMIZED 
class Solution:
    def minimumAbsDifference(self, arr):
        sorted_arr = sorted(arr)
        diffs = [(b - a, (a, b)) for a, b in zip(sorted_arr, sorted_arr[1:])]
        grouped_diffs = {}
        
        for diff, pair in diffs:
            grouped_diffs.setdefault(diff, []).append(pair)
        
        min_diff = min(grouped_diffs.keys())
        return grouped_diffs[min_diff]
    
print(Solution().minimumAbsDifference(arr))



