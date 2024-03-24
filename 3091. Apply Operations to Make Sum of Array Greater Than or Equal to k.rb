#* 3091. Apply Operations to Make Sum of Array Greater Than or Equal to k
k = 11
# @param {Integer} k
# @return {Integer}
#* SOL 1
def min_operations(k)
    sqrt_k = Math.sqrt(k)
    ceiling_sqrt_k = sqrt_k.ceil
    operations_performed = k / ceiling_sqrt_k
    subtract = k % ceiling_sqrt_k == 0 ? 1 : 0

    ceiling_sqrt_k - 1 + operations_performed - subtract
end


test_cases = [11, 1, 10, 12, 20]
test_cases.each do |k|
puts "Input: k = #{k}"
puts "Output: #{min_operations(k)}"
puts
end
  
  
#* SOL 1.1 | PUTS
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


test_cases = [11, 1, 10, 12, 20]
test_cases.each do |k|
puts "Input: k = #{k}"
puts "Output: #{min_operations(k)}"
puts
end


#* SOL 2 CONCISE
def min_operations(k)
    m = Math.sqrt(k).ceil
    m - 1 + k / m - (k % m == 0 ? 1 : 0)
end
  

test_cases = [11, 1, 10, 12, 20]
test_cases.each do |k|
puts "Input: k = #{k}"
puts "Output: #{min_operations(k)}"
puts
end










#* WORKING DONT WORK
def min_operations(k)
  return k - 1 if k <= 2

  count = 0
  sum = 1

  while sum < k
      sum *= 2
      count += 1
  end

  if sum == k
      return count
  else
      return count + 1
  end
end


