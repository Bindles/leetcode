class Stack
  GAMES = [
    "Final Fantasy VII",
    "Crash Bandicoot",
    "Metal Gear Solid",
    "Spyro the Dragon",
    "Resident Evil"
  ]

  def initialize
    @stack = []
  end

  def push(element)
    @stack.push(element)
  end

  def pop
    @stack.pop
  end

  def empty?
    @stack.empty?
  end

  def size
    @stack.size
  end

  def peek
    @stack.last
  end

  def add_random_ps1_game
    @random_game = GAMES.sample
    @stack.push(@random_game)
  end

  def view_as_array
    @stack
  end

end

# Example usage:
stack = Stack.new
stack.add_random_ps1_game
puts stack.peek


stack.push(1)
stack.push(2)
stack.push(3)

puts stack.view_as_array.inspect
puts stack.instance_variable_get(:@stack).inspect
# Access and print the value of @random_game directly using instance_variable_get
puts stack.instance_variable_get(:@random_game)


puts stack.pop  # Output: 3
puts stack.pop  # Output: 2
puts stack.peek # Output: 1

