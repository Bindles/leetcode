numbers = [1,2,3,8,1,3,5]

p numbers.find {|n|n % 2 == 0}

def fruit_index_finder
  words = ["orange", "banana", "apple", "grape", "kiwi"]
  index = words.index { |word| word == "apple" }

  if index
    puts "The index of 'apple' is #{index}"
  else
    puts "'apple' not found in the array."
  end
end

# Call the method
fruit_index_finder

def binarys(nums=[1,3,6,4,3,23,4,54,12], target=23)
   nums.sort.bsearch {|n|n == target }
end

def binarys(nums=[1,3,6,4,3,23,4,54,12], target=23)
  nums.sort.bsearch do |n|
    p n
  end
end

def binarys(nums = [1, 3, 3, 4, 4, 6, 12, 23, 54], target = 23)
  nums.sort.bsearch do |n|
    puts "Searching #{n}"
    if n == target
      puts "Found #{n}"
      true
    else
      false
    end
  end
end

p binarys

def binarysay(nums = [1, 3, 6, 4, 3, 23, 4, 54, 12], target = 23)
  nums.sort.bsearch { |n| puts "Searching #{n}"; n == target && (puts "Found #{n}"; true) }
end

binarysay
