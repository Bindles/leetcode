#*LEARN => LAMBDA
def triple = ->(x) { x * 3 }
p triple.call(3)  # Output: 9

add = ->(x, y) { x + y }
puts add.call(3, 4)  # Output: 7

def ten_x(x)
  x *  10 
end
p ten_x(1)

# Simple lambda with a short name
double = ->x { x != 7 ? x * 2 : x}
p double.call(14)
arr=[1,4,7,8]
p arr.map(&double) # => [2, 8, 7, 16]
p arr.map{|x| x * 2} # => [2, 8, 14, 16]
p arr.map{|x| x != 7 ? x * 2 : x } # => [2, 8, 7, 16]
p arr.map(&method(:ten_x))

# Corrected lambda with descriptive name
find_users_by_age = ->(users, age) { users.select { |user| user[:age] == age } }

# Usage in context
users = [{ name: 'Alice', age: 30 }, { name: 'Bob', age: 25 }, { name: 'Charlie', age: 30 }]
p find_users_by_age.call(users, 30)


# Define a regular function
def doublez(x)
  x * 2
end

# Testing the function with an array using the map method
arr = [1, 4, 7, 8]
p arr.map { |x| doublez(x) }
p arr.map(&method(:doublez)) # Output: [2, 8, 14, 16]
