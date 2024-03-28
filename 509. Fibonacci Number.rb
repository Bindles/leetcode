#* 509. Fibonacci Number
n=5
# @param {Integer} n
# @return {Integer}
def fib(n)
  return n if n <= 1

  a, b = 0, 1
  (2..n).each do
    a, b = b, a + b
  end

  return b
end
p fib(8)
#@fibonacci = { 0 => 0, 1 => 1 }



def fibonacci(n)
  fibonacci = { 0 => 0, 1 => 1 }
  fibonacci[n] ||= fibonacci(n-1) + fibonacci(n - 2)
end
p fibonacci(8)