require 'benchmark'
# Bubble sort took 19.184593300000415 seconds
# Insertion sort took 3.170066200000292 seconds

#*
# arr=[5,8,1,3,6,12,19,3,5,11,20,24,7]

def quicksort(arr)
  return arr if arr.length <= 1
  pivot = arr.sample
  less = arr.select{|x| x < pivot}
  equal = arr.select{|x| x == pivot}
  greater = arr.select{|x| x > pivot}

  quicksort(less) + equal + quicksort(greater)
end
#p quicksort(arr)

def quicksort2(arr)
  less = []
  equal =[]
  greater = []
  return arr if arr.length <= 1
  pivot = arr.sample
  arr.each do |x|
    case x <=> pivot
    when -1
      less << x
    when 0
      equal << x
    when 1
      greater << x
    end
  end

  quicksort2(less) + equal + quicksort2(greater)
end
#p quicksort(arr)


arr = Array.new(4000) { rand(1..450) }

quicksort_time = Benchmark.realtime do
  quicksort(arr)
end
puts "Quicksort took #{quicksort_time} seconds"

quicksort2_time = Benchmark.realtime do
  quicksort2(arr)
end
puts "Quicksort took #{quicksort2_time} seconds"