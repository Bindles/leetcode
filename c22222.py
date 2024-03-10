def aa(happiness, k):
        output = []

        for _ in range(k):
            print(happiness)
            best_choice = max(happiness)

            output.append(best_choice)
            happiness.remove(best_choice)
            happiness = [h - 1 for h in happiness]

        return sum(output)

# Example usage:
happiness1 = [1, 2, 3]
k1 = 2
print(aa(happiness1, k1))  # Output: 4

happiness2 = [1, 1, 1, 1]
k2 = 2
print(aa(happiness2, k2))  # Output: 1

happiness3 = [2, 3, 4, 5]
k3 = 1
print(aa(happiness3, k3))  # Output: 5
