#* 2465. Number of Distinct Averages
nums = [4,1,4,0,3,5]
# @param {Integer[]} nums
# @return {Integer}
#* 
def distinct_averages(nums)
  res=[]
  nums.sort!
  res << ((nums.shift + nums.pop) / 2.0) until nums.empty?
  res.uniq.size
end
p distinct_averages(nums)

#*
def distinct_averages(nums)
  res=[]
    until nums.empty?
      p "#{nums.min} #{nums.max}"
      res << ((nums.min + nums.max) / 2.0)
        nums.delete_at(nums.index(nums.min))
        nums.delete_at(nums.index(nums.max))
    end
    res.uniq.size
end
p distinct_averages([4,1,4,0,3,5])

#*
def distinct_averages(nums)
  res = []
  until nums.empty?
    min_index = nums.index(nums.min)
    max_index = nums.index(nums.max)
    res << (nums[min_index] + nums[max_index]) / 2.0
    nums.delete_at(min_index)
    nums.delete_at(max_index - (max_index > min_index ? 1 : 0))
  end
  res.uniq.size
end
p distinct_averages(nums)

#* A GUSY SICK ONELINER
def distinct_averages(nums)
  nums.sort.zip(nums.sort_by(&:~)).map(&:sum).uniq.size  
end





#* TEST

nz = [3,4,7,5,1]

p nz.max
p nz.index(nz.max)


