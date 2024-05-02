#* 2648. Generate Fibonacci Sequence
callCount = 5
#*
def fib_generator
    Fiber.new do
      a, b = 0, 1
      loop do
        Fiber.yield a
        a, b = b, a + b
      end
    end
end

gen = fib_generator
puts gen.resume  # Output: 0
puts gen.resume  # Output: 1

