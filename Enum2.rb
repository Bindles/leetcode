#2ND
class Spell
  attr_accessor :name, :type, :dmg
  #@@all = []
  @@spells = []

  def initialize(name, type, dmg)
    @name = name
    @type = type
    @dmg = dmg
    self.class.add_spell(self)  # Automatically add the new spell to the spells array
  end

  def self.add_spell(spell)
    #@@all << spell 
    @@spells << spell
  end

  def self.all
   #@@all
   @@spells
  end

  def attributes
    { name: @name, type: @type, dmg: @dmg }
  end
end

# Creating spells
fireball = Spell.new("Fireball", "Fire", 20)
thunderbolt = Spell.new("Thunderbolt", "Electric", 30)


p Spell.all(&:attributes)
p '---'
p Spell.all.first(&:attributes)
p '-'
p Spell.all.map(&:attributes)

# arar=[]
# ar1=[1,2,3]
# ar2=[1,2,3]
# arar.push(ar1)
# arar.push(ar2)
p arar=[[2, 2, 4], [3, 2, 3]]
# p arar.map(_1.sum)
arar.each { p _1.sum}
#arrays=[[1,2,3][4,5,6]]
arrayz=[1,2,3,4,5]
p arrayz.select(&:even?)
p arrayz.map(&:even?)
p arrayz.map {_1.even?}
#p arrays.sum
p '-'
p arar.map(&:sum)
p arar.map(&:sum).all?(&:even?)

#LESSON IN MAP VS EA
p arar.map { _1.select(&:even?) } # == BELOW 2
p arar.each { |sub_array| sub_array.select(&:even?) } #DOESNT WORK NEEDV
arar.each { |sub_array| p sub_array.select(&:even?) }
#p arar.map { |sub_array| sub_array.all?(&:even?) }.all?




# def index_for(word)
#   i = 0
#   words.each do |this_word|
#     return i if word == this_word
#     i += 1
#   end
#   nil
# end

# words=%w[hi bye man the cool]
# p words
# words.each do |w|
#   index_for("hi", words)
#   index_for("bye", words)
# end
# # Ruby has a lovely method which already takes care of this called find_index:
# def index_for(word)
#   words.find_index { |this_word| word == this_word }
# end

#** INDEXING | INDEX | FIND_INDEX

#SELF WRITTEN
words = ["apple", "banana", "orange", "grape"]
def index_for(word, words)
  i = 0
  words.each do |this_word|
    return i if word == this_word
    i += 1
  end
  nil
end

puts index_for("banana", words)  # Output: 1
puts index_for("cherry", words)  # Output: nil

#MORE LIKE RUBYS BUILT IN
def index_forx(word, words)
  words.find_index { |this_word| word == this_word }
end

puts index_forx("banana", words)  # Output: 1
puts index_forx("cherry", words)  # Output: nil

#BUILT-IN
p  words.find_index("banana")
p  words.index("banana")


class Document
  attr_reader :words

  def initialize(words)
    @words = words
  end

  # The initial case, and the way you might approach it
  def average_word_length
    total = 0.0
    words.each { |word| total += word.size }

    total / word_count
  end

  # The same done with reduce
  def average_word_length_reduce
    total = words.reduce(0.0) { |result, word| result + word.size }
    total / word_count
  end

  private

  def word_count
    words.size
  end
end

# Example usage:
document = Document.new(["hello", "world", "ruby"])
puts document.average_word_length  # Output: 4.0
puts document.average_word_length_reduce  # Output: 4.0


[1, 2, 3].reduce(0) do |accumulator, v|
  p accumulator: accumulator, v: v, new_accumulator: accumulator + v
  accumulator + v
end
# {:accumulator=>0, :v=>1, :new_accumulator=>1}
# {:accumulator=>1, :v=>2, :new_accumulator=>3}
# {:accumulator=>3, :v=>3, :new_accumulator=>6}
#  => 6


[1,2,3].each.with_index{ |x, index| p starting: x,  index: index, total: x + index}

