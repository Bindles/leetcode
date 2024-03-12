#922. Sort Array By Parity II
nums = [4,2,5,7]
# @param {Integer[]} nums
# @return {Integer[]}
#*SOL 
def sort_array_by_parity_ii(nums)
  nums.partition{_1.even?}.transpose.flatten
end
p sort_array_by_parity_ii(nums)

#*WORKING=>GOT IT ^
def sort_array_by_parity_ii(nums)
    part = nums.partition{ _1.even?}
    p part
    a = part.transpose.flatten
    p a
end




#*WORKING..
pairs = [4,2,1,3,6].sort.each_cons(2).map { |a, b| [a, b] if b-a == 1}.compact

p pairs

p [1,2,3].filter(&:even?)