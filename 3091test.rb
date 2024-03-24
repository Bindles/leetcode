require 'cmath'
#*
def min_operations(k)
  p = CMath.sqrt(k).to_i
  q = (k + p - 1) / p
  p + q - 2
end

# Test cases
test_cases = [11, 1, 10, 12, 20]
test_cases.each do |k|
  puts "Input: k = #{k}"
  puts "Output: #{min_operations(k)}"
  puts
end



#*
#*require 'cmath'

def min_operations(k)
  Math.sqrt(k).ceil - 1 + k / Math.sqrt(k).ceil - (k % Math.sqrt(k).ceil == 0 ? 1 : 0)
end

# Test cases
test_cases = [11, 1, 10, 12, 20]
test_cases.each do |k|
  puts "Input: k = #{k}"
  puts "Output: #{min_operations(k)}"
  puts
end



def min_operations(k)
  return 0 if k == 1
  min_steps = Float::INFINITY
  
  (1...k).each do |i|
    min_steps = [min_steps, k / i + ((k / i) * i < k ? 1 : 0) + i - 2].min
    puts "#{i} #{min_steps}"
  end
  
  min_steps
end


# Test cases
test_cases = [11, 1, 10, 12, 20]
test_cases.each do |k|
  puts "Input: k = #{k}"
  puts "Output: #{min_operations(k)}"
  puts
end





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