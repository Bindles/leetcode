#PYTHON | CONTEST
#* NICK
class Solution:
    def shortestSubstrings(self, arr: List[str]) -> List[str]:
        def is_unique(sub, arr, index):
            for i, s in enumerate(arr):
                if i != index and sub in s:
                    return False
            return True

        result = []
        for s in arr:
            unique_subs = []
            for i in range(len(s)):
                for j in range(i + 1, len(s) + 1):
                    sub = s[i:j]
                    if is_unique(sub, arr, arr.index(s)):
                        unique_subs.append(sub)
            if not unique_subs:
                result.append("")
            else:
                shortest = min(unique_subs, key=lambda x: (len(x), x))
                result.append(shortest)
        return result
#*ALEX
class Solution:
    def generate_substrings(self, s: str):
        for l in range(1, len(s)+1):
            
            substrings = [s[i:i+l] for i in range(len(s)-l+1)]
            for ss in sorted(substrings):
                yield ss
            
    def shortestSubstrings(self, arr: list[str]) -> list[str]:
        answer = ["" for _ in arr]

        for i, s in enumerate(arr):
            for ss in self.generate_substrings(s):
                if not any(ss in s2 for s2 in (arr[:i] + arr[i+1:])):
                    answer[i] = ss
                    break
        return answer

#*APPLES
class Solution:
    def minimumBoxes(self, apple: List[int], capacity: List[int]) -> int:

        total_capacity = 0
        total_apples = sum(apple)

        for count, c in enumerate(sorted(capacity)[::-1], 1):
            total_capacity += c
            if total_capacity >= total_apples:
                return count

s=Solution()
apple = [5,5,5]
capacity = [2,4,2,7]
print(s.minimumBoxes(apple, capacity))
        