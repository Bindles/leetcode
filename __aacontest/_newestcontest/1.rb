# @param {Integer} x
# @return {Integer}
def sum_of_the_digits_of_harshad_number(x)
  sum = x.to_s.chars.map(&:to_i).sum
  return sum if x % sum == 0
  return -1
end

puts sum_of_the_digits_of_harshad_number(18) # Output: 9
puts sum_of_the_digits_of_harshad_number(23) # Output: -1
