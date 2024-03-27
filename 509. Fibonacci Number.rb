#* 509. Fibonacci Number
n=2
# @param {Integer} n
# @return {Integer}
def fib(n)
    
end

@fibonacci = { 0 => 0, 1 => 1 }

def fibonacci(n)
  @fibonacci[n] ||= fibonacci(n-1) + fibonacci(n - 2)
end