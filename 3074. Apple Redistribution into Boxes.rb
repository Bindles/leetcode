#*3074. Apple Redistribution into Boxes
apple = [1,3,2]
capacity = [4,3,1,5,2]
# @param {Integer[]} apple
# @param {Integer[]} capacity
# @return {Integer}
def minimum_boxes(apple, capacity)
  p sumz = apple.sum
  p capacity.sort!.reverse.take_while{|x| sumz -= apple.delete_at(0) if sumz > x}.length
end

def minimum_boxes(apple, capacity)
  sum = apple.sum
  capacity.sort!.reverse.each_with_index do |box_capacity, index|
    sum -= apple.shift if sum > box_capacity
    return index + 1 if sum <= 0
  end
  capacity.length
end

# def minimum_boxes(apple, capacity)
#   p sumz = apple.sum
#   p capacity.sort!.reverse.each |do| box
# end

apple = [1, 3, 2]
capacity = [4, 3, 1, 5, 2]
puts minimum_boxes(apple, capacity) # Output: 2

p minimum_boxes(apple, capacity)
p minimum_boxes([5,5,5], [2,4,2,7])

def minimum_boxes(apple, capacity)
  sum = apple.sum
  capacity.sort.reverse.reduce(0) do |count, box_capacity|
    sum -= apple.shift while sum >= box_capacity
    break count + 1 if sum <= 0
    count + 1
  end
end

def minimum_boxes(apple, capacity)
  result = []
  sum = apple.sum
  p capacity.sort!.reverse
  capacity.sort!.reverse!.each do |x|
    p x
    result << x if sum < x
    p result
    return result.length if result.sum >= sum

  end
end

def minimum_boxes(apple, capacity)
  capacity.sort!.reverse!
  sum = apple.sum
  box_count=0

  while sum > 0
    sum -= capacity[box_count]
    box_count+=1
  end
  box_count
end



apple = [1, 3, 2]
capacity = [4, 3, 1, 5, 2]
puts minimum_boxes(apple, capacity) # Output: 2
puts minimum_boxes([6,2,1], [8,6,10,5,2,6,2,8,1]) 

def minimum_boxes(apple, capacity)
  capacity.sort!
  sum = apple.sum
  box_count=0

  while sum > 0
    sum -= capacity.pop
    box_count+=1
  end
  box_count
end
puts minimum_boxes(apple, capacity) # Output: 2






# @param {Integer[]} apple
# @param {Integer[]} capacity
# @return {Integer}
def minimum_boxes(apple, capacity)
  s = apple.sum; capacity.sort_by(&:~).find_index { (s -= _1) <= 0 } + 1  
end



