require 'benchmark'
# Bubble sort took 19.184593300000415 seconds
# Insertion sort took 3.170066200000292 seconds

#*
arr=[5,8,1,3,6,12,19,3,5,11,20,24,7]

# def quicksort(arr)
#   return arr if arr.length <= 1

#   pivot = arr.sample
#   p pivot
#   less_than_pivot = arr.select { |x| x < pivot }
#   p arr.count(pivot)
#   arr.count(pivot) 
#   p equal_to_pivot = [pivot]
#   greater_than_pivot = arr.select { |x| x > pivot }

#   quicksort(less_than_pivot) + equal_to_pivot + quicksort(greater_than_pivot)
# end
#p quicksort(arr)

#*
def quicksort(arr)
  return arr if arr.length <= 1

  pivot = arr.sample
  less_than_pivot = arr.select { |x| x < pivot }
  equal_to_pivot = arr.select { |x| x == pivot }
  greater_than_pivot = arr.select { |x| x > pivot }

  quicksort(less_than_pivot) + equal_to_pivot + quicksort(greater_than_pivot)
end



def quicksort2(arr)
  return arr if arr.length <= 1

  pivot = arr.sample
  p pivot
  less_than_pivot = arr.select { |x| x < pivot }
  equal_to_pivot = arr.count(pivot) < 2 ? [pivot] : arr.select { |x| x == pivot }
  greater_than_pivot = arr.select { |x| x > pivot }

  quicksort(less_than_pivot) + equal_to_pivot + quicksort(greater_than_pivot)
end
#p quicksort(arr)

def quicksort3(arr)
  return arr if arr.length <= 1

  # Choose pivot using median-of-three method
  first, last = arr.first, arr.last
  middle_index = arr.length / 2
  middle = arr[middle_index]
  
  pivot = [first, middle, last].sort[1]  # Median of the three values

  less_than_pivot = []
  equal_to_pivot = []
  greater_than_pivot = []

  arr.each do |x|
    case
    when x < pivot
      less_than_pivot << x
    when x == pivot
      equal_to_pivot << x
    when x > pivot
      greater_than_pivot << x
    end
  end

  quicksort(less_than_pivot) + equal_to_pivot + quicksort(greater_than_pivot)
end


def quicksort_iterative(arr)
  return arr if arr.length <= 1

  stack = [[0, arr.size - 1]]

  while !stack.empty?
    low, high = stack.pop

    if low < high
      pivot = arr[low + (high - low) / 2]
      i, j = low, high

      loop do
        i += 1 while arr[i] < pivot
        j -= 1 while arr[j] > pivot

        break if i >= j

        arr[i], arr[j] = arr[j], arr[i]
        i += 1
        j -= 1
      end

      stack.push([low, j])
      stack.push([j + 1, high])
    end
  end

  arr
end

# Example usage:
arr = [3, 5, 1, 8, 4, 6]
puts "Original Array: #{arr}"
puts "Sorted Array: #{quicksort_iterative(arr.clone)}"




# first, last = arr.first, arr.last
# middle_index = arr.length / 2
# p middle = arr[middle_index]





arr = Array.new(4000) { rand(1..450) }

quicksort_time = Benchmark.realtime do
  quicksort(arr)
end
puts "Quicksort took #{quicksort_time} seconds"

quicksort2_time = Benchmark.realtime do
  quicksort2(arr)
end
puts "Quicksort took #{quicksort2_time} seconds"

quicksort3_time = Benchmark.realtime do
  quicksort3(arr)
end
puts "Quicksort took #{quicksort3_time} seconds"

quicksort_iterative_time = Benchmark.realtime do
  quicksort_iterative(arr)
end
puts "Quicksort took #{quicksort_iterative_time} seconds"


