# @param {Integer[]} nums
# @return {Integer[]}

#GAVE UP=>:P
def find_error_nums(nums = [1,2,2,4])
  a=[]
  skipnumber = false;
    nums.each.with_index do |num,ind|
      p num, nums[ind+1]
      if num == nums[ind+1] || skipnumber == true
        p "change", num
        p a << num
        p a << (num+1)
        return a


      else

        p num
        skipnumber = false if skipnumber == true
      end
    end
end

p find_error_nums

def find_error_nums(nums)
  sum = nums.sum
  uniq = nums.uniq.sum
  ideal = (1+nums.size)*nums.size/2
  [sum - uniq, ideal - uniq]
end


def find_error_nums(nums)
  ideal = (1 + nums.size) * nums.size / 2
  [nums.sum - nums.uniq.sum, ideal - nums.uniq.sum]
end

#ONE-LINER
def find_error_nums(nums)
  [nums.sum - nums.uniq.sum, (1 + nums.size) * nums.size / 2 - nums.uniq.sum]
end