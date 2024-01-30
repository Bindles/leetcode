class Book
  attr_accessor :title, :author
  #attr_reader :title, :author
  def initialize(title, author)
    @title  = title
    @author = author
  end
end

deep_dive = Book.new("Ruby Deep Dive", "Jesus Castello")
fun = Book.new("Fun With Programming", "White Cat")

p deep_dive.title