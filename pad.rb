class Book
  STATUS = [:draft, :reviewed, :published].freeze
    attr_reader :status
  def status=(status)
  unless STATUS.include?(status)
    raise "Please specify status correctly"
  end
  end
end

puts Book::STATUS.freeze
puts Book::STATUS = [:reassigned]
p Book::STATUS

module Pa

  def pri
    p 'hi'
  end
end
# class string
#   include pri
# end
# c="ac"
# c.pri

module Quack
  def quack
    puts "Quack quack"
  end
end

class Duck
  include Quack
end
Duck.new.quack

class String
  include Quack
  include Pa
end

puts "ab".pri
