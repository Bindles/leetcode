require 'benchmark'
# Bubble sort took 19.184593300000415 seconds
# Insertion sort took 3.170066200000292 seconds

#*
def quicksort_iter(arr)
  stack = [[0, arr.size - 1]]

  while !stack.empty?
    low, high = stack.pop
    next if low >= high

    pivot = arr[low + (high - low) / 2]
    i = low - 1
    j = high + 1

    loop do
      i += 1 while arr[i] < pivot
      j -= 1 while arr[j] > pivot

      break if i >= j

      arr[i], arr[j] = arr[j], arr[i]
    end

    stack.push([low, j], [j + 1, high])
  end

  arr
end


#*
def quicksort(arr)
  return arr if arr.length <= 1

  pivot = arr.sample
  less_than_pivot = arr.select { |x| x < pivot }
  equal_to_pivot = arr.select { |x| x == pivot }
  greater_than_pivot = arr.select { |x| x > pivot }

  quicksort(less_than_pivot) + equal_to_pivot + quicksort(greater_than_pivot)
end

def bubble_sort(arr)
  sorted = arr.dup
  loop do
    swapped = false
    (sorted.length - 1).times do |i|
      if sorted[i] > sorted[i + 1]
        sorted[i], sorted[i + 1] = sorted[i + 1], sorted[i]
        swapped = true
      end
    end
    break unless swapped
  end
  sorted
end

def insertion_sort(arr)
  sorted = arr.dup
  (1...sorted.length).each do |i|
    key = sorted[i]
    j = i - 1

    while j >= 0 && sorted[j] > key
      sorted[j + 1] = sorted[j]
      j -= 1
    end

    sorted[j + 1] = key
  end
  sorted
end







arr = Array.new(40) { rand(1..60) }


quicksort_time = Benchmark.realtime do
  quicksort(arr)
end

puts "Quicksort took #{quicksort_time} seconds"

bubble_sort_time = Benchmark.realtime do
  bubble_sort(arr)
end

puts "Bubble sort took #{bubble_sort_time} seconds"

insertion_sort_time = Benchmark.realtime do
  insertion_sort(arr)
end

puts "Insertion sort took #{insertion_sort_time} seconds"

sort_time = Benchmark.realtime do
  arr.sort!
end

puts "Ruby's built-in sort method took #{sort_time} seconds"
