def minimum_deletions(word, k):
    freq = {}
    for char in word:
        freq[char] = freq.get(char, 0) + 1
    print(freq)
    

    counts = sorted(freq.values())
    max_count = max(counts)
    min_deletions = len(word)

    for target in range(max_count + 1):
        current_deletions = 0
        for count in counts:
            diff = abs(count - target)
            if diff <= k:
                print(diff)
                current_deletions += diff
            else:
                current_deletions += count
        min_deletions = min(min_deletions, current_deletions)

    return min_deletions

print(minimum_deletions("aabcaba", 0), 3)     # Output: 3
print(minimum_deletions("dabdcbdcdcd", 2), 2) # Output: 2
print(minimum_deletions("aaabaaa", 2), 1)     # Output: 1
print(minimum_deletions("ahahnhahhah", 2), 1)  
"ahahnhahhah"
