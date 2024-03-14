arr = [7,3,1,8,2,4,5,6]
holder=0
p arr

loop do
  swapped = false
  (arr.length - 1).times do |i|
    if arr[i] > arr[i + 1]
      arr[i], arr[i + 1] = arr[i + 1], arr[i]
      swapped = true
    end
  end
  break unless swapped
end
p arr

def insertion_sort(arr)
  loop do
    swapped = false
    (arr.length - 1).times do |i|
      if arr[i] > arr[i + 1]
        arr[i], arr[i + 1] = arr[i + 1], arr[i]
        swapped = true
      end
    end
    break unless swapped
  end
  p arr
end

def insertion_sort(arr)
  (1...arr.length).each do |i|
    key = arr[i]
    j = i - 1

    while j >= 0 && arr[j] > key
      arr[j + 1] = arr[j]
      j -= 1
    end

    arr[j + 1] = key
  end
  arr
end

# Example usage:
nums = [3, 1, 4, 1, 5, 9, 2, 6, 5, 3, 5]
sorted_nums = insertion_sort(nums)
puts sorted_nums.inspect

  
  

