# @param {Integer[]} nums
# @return {Integer}

#MY SOL 1
def majority_element(nums)
  nums.tally.max_by {_2}[0] # or .first
end

#AKA
def majority_element(nums)
  nums.tally.key(nums.tally.values.max)
end

#SOL 3 | NO TALLY | LONG WAY
def majority_element(nums)
  hash = {}

  nums.each do |num|
    hash[num] ||= 0
    hash[num] += 1
  end

  hash.max_by {|_, v| v}[0]
end

#SOL 4
def majority_element(nums)
  nums.sort[nums.size / 2]
end

p majority_element([3,2,3])

#WORKING.. NO GOOD:
def majority_element(nums)
  p nums.tally.map {|k,v| k }[0]
end



# #OTHERS WORK TO LOOK AT:
# def majority_element(nums)
#   h=nums.tally
#   p index=h.values.index(h.values.max)
#   return h.keys[index]
# end