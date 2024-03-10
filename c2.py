import heapq

def maximum_happiness_sum(happiness, k):
    # Convert happiness to negative values to create a max heap
    happiness = [-x for x in happiness]
    heapq.heapify(happiness)
    
    # Select k children and update their happiness values
    for _ in range(k):
        max_happiness = heapq.heappop(happiness)
        if max_happiness < 0:
            break
        heapq.heappush(happiness, max_happiness + 1)
    
    # Calculate the sum of the remaining happiness values
    return sum(-x for x in happiness)

# Test cases
print(maximum_happiness_sum([1,2,3], 2))  # Output: 4
print(maximum_happiness_sum([1,1,1,1], 2))  # Output: 1
print(maximum_happiness_sum([2,3,4,5], 1))  # Output: 5
