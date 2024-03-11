def binary_search(arr, item):
  low = 0 #A
  high = len(arr)-1 #
  steps=0
  
  while low <= high: #B
    steps+=1
    mid = (low + high) // 2 #C
    guess = arr[mid]
    if guess == item: #D
      return (mid, steps)
    elif guess > item: #E
      high = mid - 1
    else: #F
      low = mid + 1

  return (None, steps) #G
my_list = [1, 3, 5, 7, 9] #H
my_range = range(1, 10)  # Example range from 1 to 10
mylist = list(range(1, 33))
#print(mylist)  # Output: [1, 2, 3, 4, 5]

print(binary_search(mylist, 3)) # => 1 #I
print(binary_search(my_list, -1)) # => None #J
#A low and high keep track of which part of the list you’ll search in.
#B While you haven’t narrowed it down to one element ...
#C ... check the middle element.
#D Found the item.
