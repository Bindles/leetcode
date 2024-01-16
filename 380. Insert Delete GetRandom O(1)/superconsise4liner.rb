class RandomizedSet
  attr_accessor :x  and def initialize = @x = {}
  def insert(val) = x[val] ? false : (x[val] = true; true)
  def remove(val) = x[val] ? (x.delete(val); true) : false
  def get_random = x.keys.sample
end