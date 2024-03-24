

def min_operations(k)
  m = Math.sqrt(k).ceil
  m - 1 + k / m - (k % m == 0 ? 1 : 0)
end

# Test cases
test_cases = [11, 1, 10, 12, 20]
test_cases.each do |k|
  puts "Input: k = #{k}"
  puts "Output: #{min_operations(k)}"
  puts
end



def min_operations(k)
  sqrt_k = Math.sqrt(k)
  ceiling_sqrt_k = sqrt_k.ceil
  operations_performed = k / ceiling_sqrt_k
  subtract = k % ceiling_sqrt_k == 0 ? 1 : 0

  ceiling_sqrt_k - 1 + operations_performed - subtract
end

# Test cases
test_cases = [11, 1, 10, 12, 20]
test_cases.each do |k|
  puts "Input: k = #{k}"
  puts "Output: #{min_operations(k)}"
  puts
end



def min_operations(k)
  puts "Initial k: #{k}"

  sqrt_k = Math.sqrt(k)
  puts "Square root of k: #{sqrt_k}"

  ceiling_sqrt_k = sqrt_k.ceil
  puts "Ceiling of square root of k: #{ceiling_sqrt_k}"

  puts "- (1) => (#{ceiling_sqrt_k-1}) | +"

  operations_performed = k / ceiling_sqrt_k
  
  puts "Operations performed: #{operations_performed}"
  puts "=> (#{ceiling_sqrt_k-1 + operations_performed}) | -"

  subtract = k % ceiling_sqrt_k == 0 ? 1 : 0
  puts "Subtract: #{subtract}"

  result = ceiling_sqrt_k - 1 + operations_performed - subtract
  puts "Final result: #{result}"

  result
end

# Test cases
test_cases = [11, 1, 10, 12, 20]
test_cases.each do |k|
  puts "Input: k = #{k}"
  puts "Output: #{min_operations(k)}"
  puts
end
