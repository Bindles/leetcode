

# * Method Kernel#Array:

    p (["a", "b"])             # => ["a", "b"]
    p (1..5)                   # => [1, 2, 3, 4, 5]
    myhash = Hash.new(0)
    myhash["a"]+=2
    arrhash=[]
    arrhash << myhash
    p arrhash
    myhash["a"]+=2
    myhash["b"]+=2
    p arrhash
    #p a = (key: :value)           # => [[:key, :value]]
    p (nil)                    # => []
    p (1)                      # => [1]
    p ab = ({:a => "a", :b => "b"}) # => [[:a, "a"], [:b, "b"]]

# * Method Array.new:

    p ab=Array.new               # => []
    p ab=Array.new(3)            # => [nil, nil, nil]
    p ac=Array.new(4) {Hash.new} # => [{}, {}, {}, {}]
    p ad=Array.new(3, true)      # => [true, true, true]


    # Note that the last example above populates the array with references
    # to the same object. This is recommended only in cases where that
    # object is a natively immutable object such as a symbol, a numeric,
    # nil, true, or false.
  
    # Another way to create an array with various objects, using a block;
    # this usage is safe for mutable objects such as hashes, strings or
    # other arrays:
  
      p make_arr_w_block = Array.new(7) {|i| i.to_s } # => ["0", "1", "2", "3"]
  
    # Here is a way to create a multi-dimensional array:
  
      p multi_arr = Array.new(3) {Array.new(3)}
      # => [[nil, nil, nil], [nil, nil, nil], [nil, nil, nil]]


# = Enumerator < Object

# ------------------------------------------------------------------------
# = Includes:
# Enumerable (from ruby core)

# (from ruby core)
# ------------------------------------------------------------------------
# A class which allows both internal and external iteration.

# An Enumerator can be created by the following methods.
# * Object#to_enum
# * Object#enum_for
# * Enumerator.new

# Most methods have two forms: a block form where the contents are
# evaluated for each item in the enumeration, and a non-block form which
# returns a new Enumerator wrapping the iteration.

  enumerator = %w(one two three).each
  puts enumerator.class # => Enumerator

  enumerator.each do |item|
    puts "#{item}"
  end

  enumerator.each_with_object("foo") do |item, obj|
    puts "#{obj}: #{item}"
  end

#   # foo: one
#   # foo: two
#   # foo: three

#   enum_with_obj = enumerator.each_with_object("foo")
#   puts enum_with_obj.class # => Enumerator

#   enum_with_obj.each do |item, obj|
#     puts "#{obj}: #{item}"
#   end

#   # foo: one
#   # foo: two
#   # foo: three

# This allows you to chain Enumerators together.  For example, you can map
# a list's elements to strings containing the index and the element as a
# string via:

#    puts %w[foo bar baz].map.with_index { |w, i| "#{i}:#{w}" }
#    # => ["0:foo", "1:bar", "2:baz"]

#   == External Iteration

# An Enumerator can also be used as an external iterator. For example,
# Enumerator#next returns the next value of the iterator or raises
# StopIteration if the Enumerator is at the end.

  e = [1,2,3].each   # returns an enumerator object.
  puts e.next   # => 1
  puts e.next   # => 2
  puts e.next   # => 3
  #puts e.next   # raises StopIteration

# next, next_values, peek and peek_values are the only methods which use
# external iteration (and Array#zip(Enumerable-not-Array) which uses
# next).

# These methods do not affect other internal enumeration methods, unless
# the underlying iteration method itself has side-effect, e.g.
# IO#each_line.

# External iteration differs significantly from
# internal iteration due to using a Fiber:
#   - The Fiber adds some overhead compared to internal enumeration.
#   - The stacktrace will only include the stack from the Enumerator, not above.
#   - Fiber-local variables are *not* inherited inside the Enumerator Fiber,
#     which instead starts with no Fiber-local variables.
#   - Fiber storage variables *are* inherited and are designed
#     to handle Enumerator Fibers. Assigning to a Fiber storage variable
#     only affects the current Fiber, so if you want to change state
#     in the caller Fiber of the Enumerator Fiber, you need to use an
#     extra indirection (e.g., use some object in the Fiber storage
#     variable and mutate some ivar of it).

# Concretely:
#    Thread.current[:fiber_local] = 1
#    Fiber[:storage_var] = 1
#    e = Enumerator.new do |y|
#      p Thread.current[:fiber_local] # for external iteration: nil, for internal iteration: 1
#      p Fiber[:storage_var] # => 1, inherited
#      Fiber[:storage_var] += 1
#      y << 42
#    end

#    p e.next # => 42
#    p Fiber[:storage_var] # => 1 (it ran in a different Fiber)

#    e.each { p _1 }
#    p Fiber[:storage_var] # => 2 (it ran in the same Fiber/"stack" as the current Fiber)

#   == Convert External Iteration to Internal Iteration

# You can use an external iterator to implement an internal iterator as
# follows:

  def ext_each(e)
    while true
      begin
        vs = e.next_values
      rescue StopIteration
        return $!.result
      end
      y = yield(*vs)
      e.feed y
    end
  end

  o = Object.new

  def o.each
    puts yield
    puts yield(1)
    puts yield(1, 2)
    3
  end

#   # use o.each as an internal iterator directly.
  puts o.each {|*x| puts x; [:b, *x] }
  # => [], [:b], [1], [:b, 1], [1, 2], [:b, 1, 2], 3

#   # convert o.each to an external iterator for
#   # implementing an internal iterator.
#   puts ext_each(o.to_enum) {|*x| puts x; [:b, *x] }
#   # => [], [:b], [1], [:b, 1], [1, 2], [:b, 1, 2], 3
# ------------------------------------------------------------------------
# = Class methods:

#   new, produce, product

# = Instance methods:

#   +, each, each_with_index, each_with_object, feed, inspect, next,
#   next_values, peek, peek_values, rewind, size, with_index, with_object
title = 'Romeo And Juliet'
case title
when 'War And Peace'
  puts 'Tolstoy'
when 'Romeo And Juliet'
  puts 'Shakespeare'
else
  puts "Don't know"
end

author =case title
  when 'War And Peace'
    'Tolstoy'
  when 'Romeo And Juliet'
    'Shakespeare'
  else
    "Don't know"
  end

  p author



#   Ranges
# A range in Ruby has a starting point and an ending point, like 1..10 is a range from 1 to 10. For it === works like include? which checks if the value on the right happens to be included within the range, or a member of the range:
p (1..10) === 1
# => true

p (1..10).include?(1)
# => true
# Ranges are interesting in that they're not limited to numbers. Strings also work, and that makes range inclusion even more interesting:
p SUPPORTS_PATTERN_MATCH_VERSIONS = '2.7.0'..'3.0.0'
p SUPPORTS_PATTERN_MATCH_VERSIONS === '2.7.5'
# => true

# Regular Expressions
# Regular Expressions are a language for matching against patterns in text, and for === it happens to work very much like match?:
p (/abc/ === 'abcdef')
# => true

p (/abc/.match?('abcdef'))
# => true

p (/din/ === 'dink')
# => true

p (/din/.match?('dink'))
# => true
dinvar=/din/
p (dinvar.match?('dink'))

#HOW CAN I DO THIS BELOW
regs = ["din", "di", "don"]

regs.each do |r|
  regex = Regexp.new(r)
  p "#{r} created. Lets see if 'dink' includes #{r}"  # Creating a regex object from the string
  p regex.match?('dink')
end

p [1,2,3].include?(1)

p %i(The rain in spain falls mainly on the plain)

p %i(The rain in spain falls mainly on the plain).grep(/the/i)
# => ["The", "the"]

# Example 1: Without using the safe navigation operator
person = nil
# If person is nil, calling `name` would result in an error
# puts person.name  # This would raise a NoMethodError

# Using the safe navigation operator (&.)
p person&.name

# @param {Integer} main_tank
# @param {Integer} additional_tank
# @return {Integer}
def distance_traveled(mainTank = 5, additionalTank = 10)
    extra = false
    p exDist = mainTank / 5 * 10
    p dist = mainTank * 10
    dist + exDist
end

# @param {Integer} main_tank
# @param {Integer} additional_tank
# @return {Integer}
#WORKS
def distance_traveled(main_tank = 5, additional_tank = 10)
  dist = 0 
  ex_dist = 0
  #p ex_dist = main_tank / 5 * 10 if additional_tank >= (main_tank / 5 )
  p dist = main_tank * 10
  #dist + ex_dist
  while main_tank >= 5 && additional_tank >= 1
    main_tank -= 4
    additional_tank -= 1
    dist +=10
  end
  return dist
end
p distance_traveled

# @param {Integer} main_tank
# @param {Integer} additional_tank
# @return {Integer}
# @param {Integer} main_tank
# @param {Integer} additional_tank
# @return {Integer}
def distance_traveled(main_tank, additional_tank)
  dist = main_tank * 10
  while main_tank >= 5 && additional_tank >= 1
    main_tank -= 4
    additional_tank -= 1
    dist +=10
  end
  return dist
end


def distance_traveled(main_tank, additional_tank)
  dist = main_tank * 10
  until main_tank < 5 || additional_tank < 1
    main_tank -= 4
    additional_tank -= 1
    dist +=10
  end
  return dist
end





def distance_traveled(main_tank, additional_tank)
  total = main_tank * 10
  while main_tank > 4 && additional_tank > 0
      main_tank -= 4
      additional_tank -= 1
      total += 10
  end
  total
end