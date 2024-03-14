arr = [7,3,1,8,2,4,5,6]
holder=0
p arr
(0..arr.length-2).each do |i|
  p arr[i]
  p arr[i+1]
  p arr[i] > arr[i+1]
  if (arr[i+1] < arr[i])
    holder = arr[i]
    arr[i] = arr[i+1]
    arr[i+1] = holder
  end
  if i >0  && (arr[i-1]>arr[i])
    holder = arr[i]
    arr[i] = arr[i-1]
    arr[i-1] = holder
  end
  p arr
end
p arr
p '-'


  arr = [7,3,1,8,2,4,5,6]
  holder = 0
  p arr
  
  # Repeat the process until the array is sorted
  sorted = false
  until sorted
    sorted = true  # Assume the array is sorted initially
    (0..arr.length-2).each do |i|
      if arr[i+1] > arr[i]
        holder = arr[i]
        arr[i] = arr[i+1]
        arr[i+1] = holder
        sorted = false  # If we perform a swap, the array is not yet sorted
      end
    end
  end
  
  p arr

  arr = [7,3,1,8,2,4,5,6]
  holder = 0
  p arr
  
  # Repeat the process until the array is sorted
  sorted = false
  until sorted
    sorted = true  # Assume the array is sorted initially
    (0..arr.length-2).each do |i|
      if arr[i+1] < arr[i]  # Fix the comparison to sort in ascending order
        holder = arr[i]
        arr[i] = arr[i+1]
        arr[i+1] = holder
        sorted = false  # If we perform a swap, the array is not yet sorted
      end
    end
  end
  
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
  
  

