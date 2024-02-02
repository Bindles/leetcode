# @param {Integer[]} nums
# @return {Integer}
def difference_of_sum(nums = [1,15,6,3])
    p nums.sum
    p nums.join.to_i.digits.reverse.sum
    nums.sum - nums.join.to_i.digits.reverse.sum
end
p difference_of_sum

def difference_of_sum(nums = [1,15,6,3])
  nums.sum - nums.join.to_i.digits.reverse.sum
end

p difference_of_sum







    