def findmultiplesb(x)
  (1...x).each_with_object([]) do |i, result|  
      if i % 3 == 0 || i % 5 == 0
          p result << i  
      end
  end.inject(:+)
end
p findmultiplesb(10)

def findmultiplesb(x)
  result = (1...x).each_with_object([]) do |i, arr|
    arr << i if i % 3 == 0 || i % 5 == 0
  end
  p result
  result.inject(:+)
end

p findmultiplesb(1000)

p 999 * 996

def findlargestpal
  pal=11

  (0..997003).each do |i|
    pal = i if i.to_s.reverse == i.to_s && Math.sqrt(i) == Math.sqrt(i).to_i
  end
  return pal
end
p findlargestpal

def find_largest_palindrome
  largest_palindrome = 0

  (100..999).each do |i|
    (i..999).each do |j|
      product = i * j
      if product.to_s == product.to_s.reverse && product > largest_palindrome
        largest_palindrome = product
      end
    end
  end

  largest_palindrome
end

p find_largest_palindrome


def find_first_ten_digits_sum(numbers)
  # Sum all the numbers
  sum = numbers.reduce(0) { |acc, num| acc + num.to_i }

  # Convert the sum to string and take the first ten digits
  first_ten_digits_sum = sum.to_s[0..9]

  first_ten_digits_sum
end

# Define the list of 100-digit numbers as an array of strings
numbers = [
  "37107287533902102798797998220837590246510135740250",
  "46376937677490009712648124896970078050417018260538",
  "74324986199524741059474233309513058123726617309629",
  # Add the remaining numbers here...
]

# Call the function with the list of numbers
puts find_first_ten_digits_sum(numbers)

