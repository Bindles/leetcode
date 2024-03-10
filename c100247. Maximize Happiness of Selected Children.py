def maximum_happiness_sum(happiness, k):
    n = len(happiness)
    if k >= n:
        return sum(happiness)
    
    happiness.sort(reverse=True)
    total_happiness = sum(happiness[:k])
    
    decrement = 0
    for i in range(1, k):
        if happiness[i] == happiness[i - 1]:
            decrement += i
    
    return total_happiness - decrement

happiness1 = [1,2,3]
k1 = 2
print(maximum_happiness_sum(happiness1, k1)) 

happiness2 = [1,1,1,1]
k2 = 2
print(maximum_happiness_sum(happiness2, k2))  

happiness3 = [2,3,4,5]
k3 = 1
print(maximum_happiness_sum(happiness3, k3)) 
