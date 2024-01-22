numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

# Simple Example
evens = numbers.select { |number| number.even? }

p evens
# Output: [2, 4, 6, 8, 10]

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


def halves_are_alike_x(s = "book")
  def count_vowels(x)
    x.each.select {|char| "aeiouAEIOU".include?(char)}.size
  end
  resulta, resultb =[],[]
  s.each_char.with_index { |char,ind| resulta << char if ind < (s.length / 2)}
  s.each_char.with_index { |char,ind| resultb << char if ind >= (s.length / 2)}
  p resulta, resultb
  p count_vowels(resulta)
  p count_vowels(resultb)
  count_vowels(resulta) == count_vowels(resultb)
end