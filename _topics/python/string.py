name = "Cool Guy"
nam=[1,2,3,4]
print(len(name))
print(name.split())
spname=name.split()
print(name.capitalize())
print("".join(spname))
nam.append("Dude")
print(nam)
arr=[1,2,3,4]
#nam[ {:expression} for {:item} in {:list} if {:conditional} ]

# Example of list comprehension
result = [x * 100 for x in arr if x % 2 == 0]

print(result)  # Output: [4, 6]


#* PRINT STRING IN REVERSE
print('Hello'[::-1])
s="Hello"
print(s[::-1])