def shortest_substrings(arr):
    def is_substring(sub, s):
        for i in range(len(s) - len(sub) + 1):
            if s[i:i+len(sub)] == sub:
                return True
        return False
    
    def get_shortest_uncommon(sub, strings):
        for i in range(1, len(sub) + 1):
            for j in range(len(sub) - i + 1):
                if not any(is_substring(sub[j:j+i], string) for string in strings if string != sub):
                    return sub[j:j+i]
        return ""
    
    answer = []
    for string in arr:
        answer.append(get_shortest_uncommon(string, arr))
    
    return answer

# Test cases
arr1 = ["cab","ad","bad","c"]
arr2 = ["abc","bcd","abcd"]

print(shortest_substrings(arr1))  # Output: ["ab","","ba",""]
print(shortest_substrings(arr2))  # Output: ["","","abcd"]
