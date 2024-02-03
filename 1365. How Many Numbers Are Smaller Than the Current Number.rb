# @param {Integer[]} nums
# @return {Integer[]}
def smaller_numbers_than_current(nums = [8,1,2,2,3])
  a = nums.sort
  resultarr=[]
  p a
  p nums
  nums.each do |n|
   p  "#{n} #{a.index(n)}"
   resultarr << a.index(n)
  end
  resultarr
end

p smaller_numbers_than_current