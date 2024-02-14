# @param {Integer[]} nums
# @return {Integer}

def majority_element(nums)
  nums.tally.max_by {_2}.first
end

def majority_element(nums)
  p nums.tally.map {|k,v| k }[0]
end

def majority_element(nums)
  h = {}

  nums.each do |el|
      h[el] ||= 1; h[el] += 1
  end

  h.max_by{|k,v| v}.first
end

def majority_element(nums)
  a = nums.tally
  p a[nums.tally.values.max]
end

def majority_element(nums)
    nums.tally.each {|n, cnt| return n if cnt > nums.size/2}
end

def majority_element(nums) = nums.sort!.then {|num| num[num.size / 2] }

  def majority_element(nums)
    p nums.tally.max_by {_2}[0]
  end
  def majority_element(nums)
    h=nums.tally
    p index=h.values.index(h.values.max)
  end

p majority_element([3,2,3,6,6,6,9,9,9,9])