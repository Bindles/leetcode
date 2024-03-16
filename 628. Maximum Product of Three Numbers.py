#PYTHON
#* 628. Maximum Product of Three Numbers
nums = [1,2,3,4]
#* SOL 1
class Solution:
  def maximumProduct(self, nums):
    nums.sort()
    return max(nums[-1]*nums[-2]*nums[-3],nums[0]*nums[1]*nums[-1])

print(Solution().maximumProduct(nums)) 


#* WORKING...
#* SOL 0
nums = [1,2,3,4]
class Solution:
    def maximumProduct(self, nums):
        arr=[]
        sNums = sorted(nums)
        for i in range(3):  #for i in (0, 1, 2)
            arr.append(sNums.pop())
        prod=1
        for num in arr:
            prod *= num
        return(prod)

print(Solution().maximumProduct(nums))

#* SOL 0 | PUTS
class Solution:
    def maximumProduct(self, nums):
        arr=[]
        sNums = sorted(nums)
        print(sNums)
        for i in range(3):  #for i in (0, 1, 2)
            arr.append(sNums.pop())
        print(arr)
        prod=1
        for num in arr:
            prod *= num
        return(prod)

print(Solution().maximumProduct(nums))