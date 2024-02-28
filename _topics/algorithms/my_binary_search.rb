def aa(array, target)
  p mid = array.length / 2
  left = array[0...mid]
  right = array[mid..]
  p right
end
array=(1..31).to_a
target=12
p aa(array, target)

def aa(array, target)
  return "Target not found" if array.empty?

  mid = array.length / 2

  if array[mid] == target
    return "Target #{target} found at index #{mid}"
  elsif array[mid] < target
    left = array[0...mid]
    return aa(left, target)
  else
    right = array[mid+1..]
    return aa(right, target)
  end
end

array = (1..31).to_a
target = 12
puts aa(array, target)


def binary_search(array, target)
  left = 0
  right = array.length - 1

  while left <= right
    mid = (left + right) / 2

    if array[mid] == target
      return mid  # Target found, return the index
    elsif array[mid] < target
      left = mid + 1  # Search the right half
    else
      right = mid - 1  # Search the left half
    end
  end

  return -1  # Target not found
end

# Example usage:
array = [1, 3, 5, 7, 9, 11, 13, 15]
target = 11
index = binary_search(array, target)
if index != -1
  puts "Target #{target} found at index #{index}."
else
  puts "Target #{target} not found in the array."
end



def binary_search(array, target)
  left = 0
  right = array.length - 1
  p array

  while left <= right
    mid = (left + right) / 2

    if array[mid] == target
      return "Target #{target} found at index #{mid}."
    elsif array[mid] < target
      left = mid + 1  # Search the right half
    else
      right = mid - 1  # Search the left half
    end
  end

  return "Target #{target} not found."
end

# Example usage:
array = [1, 3, 5, 7, 9, 11, 13, 15]
puts binary_search(array, 11)
puts binary_search(array, 8)

def binary_search(array, target)
  left = 0
  right = array.length - 1

  while left <= right
    mid = (left + right) / 2

    puts "Left: #{left}, Right: #{right}, Mid: #{mid}"

    if array[mid] == target
      return "Target #{target} found at index #{mid}."
    elsif array[mid] < target
      left = mid + 1  # Search the right half
    else
      right = mid - 1  # Search the left half
    end
  end

  return "Target #{target} not found."
end

# Example usage:
array = [1, 3, 5, 7, 9, 11, 13, 15]
puts binary_search(array, 11)
puts binary_search(array, 8)


def binary_search(array, target)
  left = 0
  right = array.length - 1

  puts "Target: #{target}"
  puts "Array: #{array}"

  while left <= right
    mid = (left + right) / 2

    puts "Mid: #{array[mid]}"

    if array[mid] == target
      puts "Found [#{array[mid]}]!"
      return "Target found: #{target}"
    elsif array[mid] < target
      puts "#{array[mid]} is < #{target}"
      left = mid + 1  # Search the right half
      puts "Tossing left: #{array[0..mid]}"
    else
      puts "#{array[mid]} is > #{target}"
      right = mid - 1  # Search the left half
      puts "Tossing right: #{array[mid..-1]}"
    end
  end

  return "Target not found."
end

# Example usage:
array = [1, 2, 3, 4, 5, 6, 7, 8, 9]
target = 7
puts binary_search(array, target)


def binary_search(array, target)
  left = 0
  right = array.length - 1

  puts "Target: #{target}"
  puts "Array: #{array}"

  while left <= right
    mid = (left + right) / 2

    puts "Mid: #{array[mid]}"

    if array[mid] == target
      puts "Found [#{array[mid]}]!"
      return "Target found: #{target}"
    elsif array[mid] < target
      puts "#{array[mid]} is < #{target}"
      left = mid + 1  # Search the right half
      puts "Tossing left: #{array[0..mid]}"
      puts "*ADD: searching #{array[mid+1..right]}"
    else
      puts "#{array[mid]} is > #{target}"
      right = mid - 1  # Search the left half
      puts "Tossing right: #{array[mid..-1]}"
      puts "*Searching #{array[left..mid-1]}"
    end
  end

  return "Target not found."
end

# Example usage:
array = [1, 2, 3, 4, 5, 6, 7, 8, 9]
target = 6
puts binary_search(array, target)





