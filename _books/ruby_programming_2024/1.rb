# Example 35: Loop control statements in Ruby
numbers = [1, 2, 3, 4, 5]
numbers.each do |number|
  next if number == 1
  break if number > 3
  puts "Current number: #{number}"
end

# Example 45: Custom enumerator in Ruby
class Fibonacci
  include Enumerable
    def initialize(limit)
      @limit = limit
    end
    def each
      a, b = 0, 1
      while a <= @limit
        yield a
        a, b = b, a + b
      end
    end
end
fibonacci_sequence = Fibonacci.new(20)
puts fibonacci_sequence.to_a.inspect # Outputs: [0, 1, 1, 2, 3, 5, 8, 13]


# Example 49: Nested loops with conditions in Ruby
rows = 3
columns = 4
(1..rows).each do |row|
  (1..columns).each do |column|
    if row == 2 && column == 3
      puts "Special cell at (#{row}, #{column})"
    else
      puts "Cell at (#{row}, #{column})"
    end
  end
end

#* USE PLAIN NUM
# Example 49: Nested loops with conditions in Ruby
array = [1,2,3,4,5]
count=0
(1..array.size).each do |i|
  (i+1..array.size).each do |j|

    
      puts "NUM at (#{i}, #{j}) | #{count}"
    count+=1
  end
end

#* USE ARRAY FROM PLAIN NUM
# Example 49: Nested loops with conditions in Ruby
array = [1,2,3,4,5]
count=0
(0...array.size).each do |i|
  (i+1...array.size).each do |j|

    
      puts "NUM at (#{array[i]}, #{array[j]}) | #{count}"
    count+=1
  end
end

#* USE ARRAY 1 EACH INDEX
# Example 49: Nested loops with conditions in Ruby
array = [1,2,3,4,5]
count=0
(array).each_index do |i|
  (i+1...array.size).each do |j|

    
      puts "NUM at (#{array[i]}, #{array[j]}) | #{count}"
    count+=1
  end
end

#* USE ARRAY 2 EACH WITH INDEX
# Example 49: Nested loops with conditions in Ruby
array = [1,2,3,4,5]
count=0
(array).each_with_index do |num,i|
  (i+1...array.size).each do |j|
      puts "NUM at (#{num}, #{array[j]}) | #{count}"
    count+=1
  end
end

# Example 49: Nested loops with conditions in Ruby
array = [1,2,3,4,5]
count=0
(0..array.size).each do |i|
  p i
  (i..array.size).each do |j|
    p array[i..j]
    count+=1
  end
end




# Example 51: Code comments for maintenance and debugging in Ruby
def process_order(order)
  # Validate the order data
  unless order.valid?
    # Log an error if the order is not valid
    Rails.logger.error("Invalid order data: #{order.errors.full_messages.join(', ')}")
    return
  end
    # Process the order and update inventory
    OrderProcessor.new(order).process
    # Send a confirmation email to the customer
    CustomerMailer.order_confirmation(order).deliver_now
end
#p process_order(12)

# result = calculate_factorial(5) # Returns 120
#
# Parameters:
# n - The non-negative integer for which the factorial needs to be calculated.
def calculate_factorial(n)
  return 1 if n.zero?
  # Calculate factorial using recursive approach
  n * calculate_factorial(n - 1)
end



# Example 58: Explaining edge cases and assumptions in Ruby
def divide_numbers(a, b)
  # Ensure division is performed only when b is non-zero
  result = b.zero? ? nil : a / b
  # Log a warning if division is performed with a zero divisor
  puts "Warning: Division by zero" if b.zero?
  return result
end
  