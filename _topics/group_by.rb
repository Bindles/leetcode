class Person
  attr_accessor :name, :age

  def initialize(name, age)
    @name = name
    @age = age
  end
end

people = [
  Person.new("Alice", 25),
  Person.new("Bob", 30),
  Person.new("Charlie", 25),
  Person.new("David", 40)
]

grouped_people = people.group_by { |person| person.age }

puts grouped_people.inspect
# Output: {25=>[#<Person:0x00007f8c3d8bb2c8 @name="Alice", @age=25>, #<Person:0x00007f8c3d8bb280 @name="Charlie", @age=25>], 30=>[#<Person:0x00007f8c3d8bb0d0 @name="Bob", @age=30>], 40=>[#<Person:0x00007f8c3d8baf88 @name="David", @age=40>]}


grouped_people = people.group_by { |person| person.age }.each { |a,b| p a,b; b.each { |c| p c.name } }

person = Person.new("Alice", 25)
attributes = person.instance_variables.map { |var| person.instance_variable_get(var) }
puts attributes.inspect  # Output: ["Alice", 25]


# p grouped_people.flat_map { |_1, _2| _2.map(&:name) }

# grouped_people.each do |age, people|
#   p age
#   p people.map {|person| person.name}
# end
