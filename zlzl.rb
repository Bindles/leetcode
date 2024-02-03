# @param {Integer[]} nums
# @return {Integer[]}

# Using inject
numbers = [1, 2, 3, 4, 5]
sum = numbers.inject(0) { |accumulator, num| p accumulator + num }
puts sum  # Output: 15


def running_sum(nums = [1,2,3,4])
  nums.inject([]) {|sum, num| p sum << sum.last.to_i + num}
end
# p running_sum

def running_sum(nums = [1,2,3,4])
  nums.inject([]) {|sum, num| p sum << sum.last.to_i + num}
end
# p running_sum


def running_sum(nums = [1,2,3,4])
  isum = 0
  sumarray=[]
  start = nums.length-1
  while start >= 0 do
   start.downto(0) do |a|
    p nums[a]
    p isum += nums[a]
   end
   sumarray << isum
   p "sum #{isum}"
   p sumarray
   isum=0
   start-=1
  end
  return sumarray.reverse
end
#running_sum

def running_sum(nums = [1,2,3,4])
  sum = 0; nums.map{|num| sum += num}
end

p running_sum