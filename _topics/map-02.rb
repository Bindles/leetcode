#Map( elemnent, index)
def final_value_after_operations(operations = ["--X","X++","X++","X++"]) 
  operations.map { |op| op.include?("++") ?  1 : -1}.sum
end
p final_value_after_operations
p'--'

def final_value_after_operations(operations = ["--X","X++","X++","X++"]) 
  p abc =operations.map { |op| op.include?("++") ?  1 : -1}
  abc.sum
end
p final_value_after_operations


def final_value_after_operations(operations = ["--X","X++","X++","X++"]) 
  operations.map { |op| op.include?("++") ? (p 1) : (p (-1))}.sum
end
p'--'
p final_value_after_operations

def final_value_after_operations(operations = ["--X","X++","X++","X++"]) 
  operations.map { |op| op.include?("++") ?  1 : -1 }.tap { |result| puts result }.sum
end

final_value_after_operations

class Car
  attr_accessor :model, :mileage
  def initialize(model, mileage)
    @model = model
    @mileage = mileage
  end
end

cars = [
  Car.new("Toyota", 35),
  Car.new("Honda", 28),
  Car.new("Ford", 32),
  Car.new("Chevrolet", 25),
  Car.new("Tesla", 50)
]

# Complex Example
fuel_efficient_cars = cars.select { |car| car.mileage > 30 }

puts fuel_efficient_cars.map(&:model)
# Output: ["Toyota", "Ford", "Tesla"]
puts cars[1].model
puts fuel_efficient_cars[0].mileage
p cars.map(&:model)


array=[1,2,3,4]
p array.map(&:even?)
p array.map {|i| i+1}
arrayz=["A","b"]
p arrayz.map { |string| string.upcase }
arrayx = ["11", "21", "5"]
p arrayx.map { |str| str.to_i }
# [11, 21, 5]
p array.each { |n| p n+n}
# [1, 2, 3]
p array.map { |n| n * 2 }
# [2, 4, 6]
p arraya = %w(a b c)
p arraya.map.with_index { |ch, idx| p [ch, idx] }
p arraya.each.with_index { |ch, idx| p  [ch, idx] }
p [1,"orange", "apple", "banana"].map(&:class)

