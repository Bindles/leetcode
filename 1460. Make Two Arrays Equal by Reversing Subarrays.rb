# @param {Integer[]} target
# @param {Integer[]} arr
# @return {Boolean}



# @param {Integer[]} target
# @param {Integer[]} arr
# @return {Boolean}
def can_be_equal(target, arr)
  target_counts = Hash.new(0)
  arr_counts = Hash.new(0)

  target.each { |num| target_counts[num] += 1 }
  arr.each { |num| arr_counts[num] += 1 }

  target_counts == arr_counts
end

def can_be_equal(target, arr)
  target.uniq.all? { |num| target.count(num) == arr.count(num) }
end



def can_be_equal(target, arr)
  target.tally == arr.tally
end

def can_be_equal(target, arr)
  target.sort == arr.sort
end


#TESTING STUFF
def can_be_equal(target = [1,2,3,4], arr = [2,4,1,3])
    p arr.all? { target.include?(_1)}
end

p can_be_equal

p '---'
target = [1, 2, 3, 4]
elements_to_check = [1, 2, 3]

# result = elements_to_check.all? { |element| target.include?(element) }

# puts result

p elements_to_check.all? { |element| target.include?(element) }
p target.all? { |element| p elements_to_check.include?(element) }