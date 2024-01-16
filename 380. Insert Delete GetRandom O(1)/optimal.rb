class RandomizedSet
  attr_accessor :x  and def initialize = @x = {}
  def insert(val) = x[val] ? false : (x[val] = true; true)
  def remove(val) = x[val] ? (x.delete(val); true) : false
  def get_random = x.keys.sample
end

class RandomizedSet
  attr_accessor :x  
  def initialize = @x = {}
  def insert(val) = x[val] ? false : (x[val] = true; true)
  def remove(val) = x[val] ? (x.delete(val); true) : false
  def get_random = x.keys.sample
end

class RandomizedSet
  attr_accessor :x
  def initialize()
    @x = {}
  end
  def insert(val) = x[val] ? false : (x[val] = true; true)
  def remove(val) = x[val] ? (x.delete(val); true) : false
  def get_random() = x.keys.sample
end

class RandomizedSet
  attr_accessor :x
  def initialize()
    @x = {}
  end
  def insert(val)
    x[val] ? false : (x[val] = true; true)
  end
  def remove(val)
    x[val] ? (x.delete(val); true) : false
  end
  def get_random()
    x.keys.sample
  end
end



class RandomizedSet
  attr_accessor :x
  def initialize()
    @x = {}
  end
  def insert(val)
    false if x[val]
    x[val] = true
    true
  end
  def remove(val)
    if x[val]
      x.delete(val)
      true
    else
      false
    end
  end
  def get_random()
    x.keys.sample
  end
end




