#* 442. Find All Duplicates in an Array
#* LEARN => HASH COUNT HASH SIMPLE HASH TRICK HASH DUPLICATE HASHER HASH MASTER
nums = [4,3,2,7,8,2,3,1]
# @param {Integer[]} nums
# @return {Integer[]}
#*MY SOL
def find_duplicates(nums)
    arr=[]
   nums.sort!.each_index{|i| arr << nums[i] if nums[i] == nums[i+1]}
   arr
end


#* INTERESTING SOLS
#*SUPER INTERSTING SUPER IMPORTANT HASH
def find_duplicates(nums)
  hash = {}
  nums.select { |num| hash.key?(num) ? true : hash[num] = false }
end


#*
def find_duplicates(nums)
    result = []
    nums.each do |n|
         result << n.abs if nums[n.abs-1] < 0
        
        nums[n.abs-1] *= -1 
    end
    result
end

n=[1,2,3,3,4,4,4,4]
frequency = 2
hash=Hash.new(0)
p n.select { |element| (hash[element] += 1) == frequency }
hash={}
p n.select { |num| hash.key?(num) ? true : hash[num] = false }

