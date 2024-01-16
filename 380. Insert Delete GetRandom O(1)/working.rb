
#ONE
class RandomizedSet
  def initialize
    @val_to_index = {}
    @values = []
  end

  def insert(val)
    return false if @val_to_index.key?(val)

    @val_to_index[val] = @values.length
    @values.push(val)
    true
  end

  def remove(val)
    return false unless @val_to_index.key?(val)

    index_to_remove = @val_to_index[val]
    last_value = @values.last

    @values[index_to_remove] = last_value
    @val_to_index[last_value] = index_to_remove

    @val_to_index.delete(val)
    @values.pop
    true
  end

  def get_random
    @values.sample
  end
end

# **************************
# NOTHING BELOW HERE WORKS *
# **************************


#EFFICIENT
class RandomizedSet
  def initialize
    @val_to_index = {}
    @values = []
    @size = 0
  end

  def insert(val)
    return false if @val_to_index.key?(val)

    @val_to_index[val] = @size
    @values[@size] = val
    @size += 1

    true
  end

  def remove(val)
    return false unless @val_to_index.key?(val)

    index_to_remove = @val_to_index[val]
    last_value = @values[@size - 1]

    @values[index_to_remove] = last_value
    @val_to_index[last_value] = index_to_remove

    @val_to_index.delete(val)
    @size -= 1
    true
  end

  def get_random
    @values.sample
  end
end

#CONCISE
class RandomizedSet
  def initialize
    @val_to_index = {}
    @values = []
  end

  def insert(val)
    return false if @val_to_index.key?(val)
    # ERROR HERE
    # Line 11: no implicit conversion of Integer into Array
    # (TypeError) in solution.rb (-)

    #@val_to_index[val] = @values.push(val) - 1

    @val_to_index[val] = @values.length
    @values.push(val)
    true
  end

  def remove(val)
    return false unless @val_to_index.key?(val)

    @values[@val_to_index.delete(val)] = @values.pop
    true
  end

  def get_random
    @values.sample
  end
end
#CANT GET IT TO WORK :(


#CONCISE-FIXED
class RandomizedSet
  def initialize
    @val_to_index = {}
    @values = []
  end

  def insert(val)
    return false if @val_to_index.key?(val)
    @val_to_index[val] = @values.length
    @values.push(val)
    true
  end

  def remove(val)
    return false unless @val_to_index.key?(val)
    @values[@val_to_index.delete(val)] = @values.pop
    true
  end

  def get_random
    @values.sample
  end
end


