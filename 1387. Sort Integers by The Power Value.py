#PYTHON
#* 1387. Sort Integers by The Power Value
lo = 12
hi = 15
k = 2
#* MY SOL 1
class Solution:
    def getKth(self, lo: int, hi: int, k: int) -> int:
        memo = {}

        def get_steps(num, memo):
            if num == 1:
                return 1
            if num in memo:
                return memo[num]

            if num % 2 == 0:
                memo[num] = get_steps(num // 2, memo) + 1
            else:
                memo[num] = get_steps(num * 3 + 1, memo) + 1

            return memo[num]

        ans = [{'val': i, 'steps': get_steps(i, memo)} for i in range(lo, hi + 1)]
        ans.sort(key=lambda item: (item['steps'], item['val']))

        return ans[k - 1]['val']
    
print(Solution().getKth(lo, hi, k))