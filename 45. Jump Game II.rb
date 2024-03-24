#* 45. Jump Game II
nums = [2,3,1,1,4]
# @param {Integer[]} nums
# @return {Integer}
#* MY SOLUTION | FAST | CONCISE
def jump(nums)
  res = cur = maxr = 0
  (nums.size-1).times do |i|
    cur= [cur, i+nums[i]].max
      maxr = cur and res+=1 if i == maxr
  end
  res
end
p jump(nums)



#* TONS OF GOOD SOLUTIONS TO STUDY:
def jump(nums)
    return 0 if nums.length <= 1

    max_reach = last_jump = i = steps = 0

    while i < nums.length - 1
        max_reach = [max_reach, i + nums[i]].max

        if i == last_jump
            last_jump = max_reach
            steps += 1
        end
        i += 1
    end
    steps
end

def jump(nums)
  return 0 if nums.size <= 1
  count, jump = 1, nums.first
  nums.size.times{ |i| nums[i] += i } 
  jump = nums[0..jump].max and count += 1 while jump < nums.size - 1
  count
end
jump(nums)



def jump(nums)
  i=maxreach=0
  a=nums[..-2].map.with_index{|num,ind| maxreach=[maxreach,num+ind].max }
  (0..).find{ !i=a[i] }
end
p jump(nums)

def jump(nums)

  i=m=0 and a=nums[..-2].map.with_index{ m=[m,_1+_2].max } and (0..).find{ !i=a[i] }

end
p jump(nums)

def jump(nums)
  index = max_reachable = 0 and max_jump = nums[0..-2].map.with_index { |num, i| max_reachable = [max_reachable, i + num].max } and (0..).find { |i| index = max_jump[index] }
end
p jump(nums)




def jump(nums)
  return 0 if nums.count == 1
      
  i, j, k = 0, nums[0], 1

  while j < nums.count - 1
    i, j, k = j, (i+1...j+1).map{|j| j + nums[j]}.max, k + 1
  end
  
  k
end