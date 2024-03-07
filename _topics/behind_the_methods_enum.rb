#*LEARN
module Enumerable
  def eachz
    index = 0

    while index < size
      yield(self[index])
      index += 1
    end

    self # Return the original collection
  end

  def find
    index = 0

    while index < size
      element = self[index]
      return element if yield(element)
      index += 1
    end

    nil # Return nil if no element satisfies the condition
  end
end

a=[1,2,3]
a.eachz {|aa| p aa}

def greet(name)
  puts "Hello, #{name}!"
  yield(name) if block_given?
  puts "Goodbye, #{name}!"
end

# Calling the method with a block
greet("Alice") do |name|
  puts "How are you today, #{name}?"
end

# Output:
# Hello, Alice!
# How are you today, Alice?
# Goodbye, Alice!
