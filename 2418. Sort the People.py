#PYTHON
#*2418. Sort the People
names = ["Mary","John","Emma"]
heights = [180,165,170]

#*SOL 1
class Solution:
    def sortPeople(self, names, heights):
        sp = zip(names, heights)
        sp = sorted(sp, key=lambda x: x[1], reverse=True)
        return [i[0] for i in sp]   
s=Solution()
print(s.sortPeople(names, heights))

#*SOL 1.5 | CONCISE
class Solution:
    def sortPeople(self, names, heights):
        sorted_people = sorted(zip(names, heights), key=lambda x: x[1], reverse=True)
        return [name for name, _ in sorted_people]
s=Solution()
print(s.sortPeople(names, heights))

#* SOL 2
class Solution:
    def sortPeople(self, names, heights):
        _, names = zip(*sorted(zip(heights, names), reverse=True))
        return list(names)
s=Solution()
print(s.sortPeople(names, heights))

#* DONT WORK | FORGOT DOUBLES
class Solution:
    def sortPeople(self, names, heights):
        peopleh = {name: height for name, height in zip(names, heights)}
        print(peopleh)
        sortedPeople = sorted(names, key=lambda name: heights[names.index(name)], reverse=True)
        return sortedPeople

s=Solution()
print(s.sortPeople(names, heights))

class Solution:
    def sortPeople(self, names, heights):
        pairs = list(zip(names, heights))
        sortedPairs = sorted(pairs, key=lambda x: x[1], reverse=True)
        sortedNames, sortedHeights = zip(*sortedPairs)
        return sortedNames

s=Solution()
print(s.sortPeople(names, heights))

#*WARMUP
people = [
    {"name": "Mary", "height": 180},
    {"name": "John", "height": 165},
    {"name": "Emma", "height": 170}
]
sp = sorted(people, key=lambda x: x['height'])
print(sp)

#*PASSED 1 | FORGOT DOUBLE
names = ["Mary", "John", "Emma"]
heights = [180, 165, 170]

# Combine names and heights into a single dictionary
people_heights = {name: height for name, height in zip(names, heights)}

print(people_heights)
sph = dict(sorted(people_heights.items(), key=lambda x: x[1]))
print(sph)
sn = sorted(names, key=lambda name: heights[names.index(name)], reverse=True)
print(sn)

print('2')
#*PASSED 2 | FORGOT DOUBLE
names = ["Mary", "John", "Emma"]
heights = [180, 165, 170]

# Combine names and heights into pairs
pairs = list(zip(names, heights))

# Sort the pairs based on heights
sorted_pairs = sorted(pairs, key=lambda x: x[1], reverse=True)

# Unzip the sorted pairs
sorted_names, sorted_heights = zip(*sorted_pairs)

print(sorted_names)   # Output: ('John', 'Emma', 'Mary')
print(sorted_heights)  # Output: (165, 170, 180)
