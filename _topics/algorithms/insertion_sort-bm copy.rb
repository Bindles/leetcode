arr = [3, 5, 1, 8, 4, 6]

def quicksort3(arr, low, high)
  return if low >= high

  lt, gt = partition3(arr, low, high)
  quicksort3(arr, low, lt - 1)
  quicksort3(arr, gt + 1, high)
end

def partition3(arr, low, high)
  pivot = arr[low]
  lt = low
  gt = high
  i = low + 1

  while i <= gt
    if arr[i] < pivot
      arr[i], arr[lt] = arr[lt], arr[i]
      lt += 1
      i += 1
    elsif arr[i] > pivot
      arr[i], arr[gt] = arr[gt], arr[i]
      gt -= 1
    else
      i += 1
    end
  end

  [lt, gt]
end

p quicksort3(arr, 0, arr.size - 1)


def partition(arr, low, high)
  pivot = arr[high]
  i = low - 1

  (low..high-1).each do |j|
    if arr[j] < pivot
      i += 1
      arr[i], arr[j] = arr[j], arr[i]
    end
  end

  arr[i + 1], arr[high] = arr[high], arr[i + 1]
  return i + 1
end

def quicksort(arr)
  stack = []
  stack.push(0)
  stack.push(arr.length - 1)

  while !stack.empty?
    high = stack.pop
    low = stack.pop

    p = partition(arr, low, high)

    stack.push(low)
    stack.push(p - 1) if p - 1 > low
    stack.push(p + 1) if p + 1 < high
  end

  return arr
end

# Example usage:
arr = [5, 3, 8, 4, 2, 7, 1]
puts "Original Array: #{arr}"
puts "Sorted Array: #{quicksort(arr.clone)}"

