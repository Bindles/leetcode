#* NO COMM
# @param {Integer} n
# @return {Integer}
#* 1L
def fib(n)
  fib=[0,1]; (2..n).each{|i|fib[i] = fib[i-2] + fib[i-1]} and fib[n]
end

#* NORMAL | CONCISE
def fib(n)
  fib=[0,1]

  (2..n).each do |i|
    fib[i] = fib[i-2] + fib[i-1]
  end
  fib[n]
end

#* RETURN IS BLOAT | READABILITY
def fib(n)
  return 0 if n==0
  return 1 if n==0
  fib=[0,1]

  (2..n).each do |i|
    fib[i] = fib[i-2] + fib[i-1]
  end
  return fib[n]
end

def fib(n)
  return n if n == 0 || n == 1 #or if n < 2
  return fib(n - 1) + fib(n - 2)
end

#*RECURSIVE | MEMO
def fib(n)
  @memo ||= { 0 => 0, 1 => 1 }
  @memo[n] ||= fib(n-1) + fib(n-2)
end
def fib(n, memo = {0 => 0, 1 => 1, 2 => 1})
  memo[n] ||= fib(n-1, memo) + fib(n-2, memo)
end
#* RECURSIVE MEMO | CPOMMENTS
# @param {Integer} n - The index of the Fibonacci number to compute.
# @param {Hash} memo - A memoization table to store computed Fibonacci numbers.
# @return {Integer} - The nth Fibonacci number.
def fib(n, memo = {0 => 0, 1 => 1, 2 => 1})
  # If the Fibonacci number for index n is already computed and stored in the memoization table,
  # return it directly to avoid redundant calculations.
  return memo[n] if memo[n]

  # Memoization for n = 0, 1, or 2:
  # The Fibonacci numbers for these indices are predefined.
  # We initialize the memoization table with these values to handle these base cases.
  # If n is 0, return 0; if n is 1 or 2, return 1.
  # This ensures that we have base cases to start the recursive computation.
  # The memoization table will store these predefined values for subsequent recursive calls.
  
  # If the Fibonacci number for index n is not found in the memoization table,
  # recursively compute it by adding the Fibonacci numbers for (n - 1) and (n - 2).
  memo[n] = fib(n-1, memo) + fib(n-2, memo)

  # Return the computed Fibonacci number for index n.
  return memo[n]
end

# # Test the function
# puts fibonacci(5)  # Output: 5
# puts fibonacci(10) # Output: 55
# puts fibonacci(20) 

def fibonacci(n)
  # Base cases
  return 0 if n == 0
  return 1 if n == 1
  
  # Initialize an array to store Fibonacci numbers
  fib = [0, 1]
  
  # Calculate Fibonacci numbers iteratively
  (2..n).each do |i|
    fib[i] = fib[i - 1] + fib[i - 2]
  end
  
  # Return the nth Fibonacci number
  return fib[n]
end

# Test the function
puts fibonacci(5)  # Output: 5
puts fibonacci(10) # Output: 55
puts fibonacci(20) # Output: 6765


def fibonacci(n)
  # Base cases
  puts "Calculating Fibonacci(0) and Fibonacci(1)..."
  return 0 if n == 0
  return 1 if n == 1
  
  # Initialize an array to store Fibonacci numbers
  fib = [0, 1]
  
  # Calculate Fibonacci numbers iteratively
  (2..n).each do |i|
    puts "Calculating Fibonacci(#{i})..."
    fib[i] = fib[i - 2] + fib[i - 1]
    p "fib[i] |[i-2]|[i-1]=>fib[i]"
    p "fib[#{i}]  => #{fib[i - 2]} + #{fib[i - 1]} => (#{fib[i]})"
  end
  
  # Return the nth Fibonacci number
  puts "Fibonacci sequence up to Fibonacci(#{n}): #{fib}"
  fib.each.with_index do |x, index|
    p "#{index} => (#{x})"
  end
  return fib[n]
end

# Test the function
puts "Calculating Fibonacci(5)..."
puts "Fibonacci(5): #{fibonacci(5)}"   # Output: Fibonacci(5): 5
puts "Calculating Fibonacci(10)..."
puts "Fibonacci(10): #{fibonacci(10)}" # Output: Fibonacci(10): 55
puts "Calculating Fibonacci(20)..."
puts "Fibonacci(20): #{fibonacci(20)}" # Output: Fibonacci(20): 6765
