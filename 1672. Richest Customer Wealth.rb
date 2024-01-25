#SOLUTION_MY

# @param {Integer[][]} accounts
# @return {Integer}
def maximum_wealth(accounts = [[1,2,3],[3,2,1]])
  a=[]
  for account in accounts
    p account.sum
    a << account.sum
  end
  a.max
end
maximum_wealth



#IGNORE BELOW
def the_maximum_achievable_x(num = 4, t = 1)
  
    p 
end

p the_maximum_achievable_x


# @param {Integer[]} nums
# @return {Integer[]}
def build_array(nums = [0,2,1,5,3,4])
p [nums[nums[0]]]   
end

