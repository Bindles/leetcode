#* 2206. Divide Array Into Equal Pairs
#nums = [3,2,3,2,2,2]
nums=[1,2,3,4]
# @param {Integer[]} nums
# @return {Boolean}
#* SOL
def divide_array(nums)
    nums.tally.each { |_k, v| return false if v.odd?  }
    true
end
p divide_array(nums)

#* SOL
def divide_array(nums)
    nums.tally.values.each {|v| return false if v.odd?  }
    true
end
p divide_array(nums)


# { |n| return n.odd? if false }