def find_non_min_or_max(nums = [3,2,1,4])
  nums.select{|xx| xx != nums.min}.select{|x| x != nums.max}
end
p find_non_min_or_max

nums = [3,2,1,4]
p '!'
p nums.select { |num| !(num.even?) }
p nums.select { |num| !(nums.max) } #returns nothing
p 'best'
p nums.reject{ |num| num == nums.max || num == nums.min}
p nums.reject{_1 == nums.max||_1 == nums.min}
p nums.select { |num| !(nums.max) } #returns nothing; use reject
p nums.select { |num| num != nums.min && num != nums.max }
numz = [3,2,1,4]
p numz.select{ _1.even?}
p nums.select { !(_1.even?) }
p nums.select { _1 != nums.min &&_1 != nums.max }

#* MANY WAYS TO COMPLETE
#* ##=needs to be in function
#return -1 if nums.size < 3
p nums.reject{_1 == nums.max||_1 == nums.min}.sample(1)

#return -1 if nums.size < 3
p nums.reject{_1 == nums.max||_1 == nums.min}.sample(1).join.to_i

#return -1 if nums.size < 3
p nums.reject{_1 == nums.max||_1 == nums.min}.sample

def find_non_min_or_max(nums = [3,2,1,4])
  return -1 if nums.size < 3
  p (nums - nums.minmax).sample
end
p find_non_min_or_max
