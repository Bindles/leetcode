#PYTHON
#* 713. Subarray Product Less Than K
nums = [10,5,2,6]; k = 100
from typing import List
#* MY SOL | COUNT
def num_subarray_product_less_than_k(nums, k)
  w = 0
  len = nums.size
  count = 0
  while w < len
    count += (0...len-w).count do |i|
      nums[i, w+1].reduce(:*) < k
    end
    w += 1
  end
  count
end
p num_subarray_product_less_than_k(nums, k)

#* MY SOL | EACH
def num_subarray_product_less_than_k(nums, k)
  w=0
  res=0
  len=nums.size
  while w < len
   (0...len-w).each do |i|
      p nums[i, w+1]
        res+=1 if nums[i, w+1].reduce(:*) < k
    end
  w+=1
  end
  res
end


#* MY SOL | EACH
def num_subarray_product_less_than_k(nums, k):
  w=0
  res=0
  len=len(nums)
  while w < len:
   for i in range(0, len-w)
      print(nums[i, w+1])
      if nums[i, w+1].reduce(:*) < k:
        res+=1 
    w+=1



p '!'

#* MY SOL | FIRST CHECK MAX LENGTH
def num_subarray_product_less_than_k(nums, k)
  w=0
  len=nums.size
  res=0
  max_iter=4
  lo = 9999999
 
  while  lo > k
    p lo
    p lo =nums.min(max_iter).reduce(:*)
    max_iter-=1
  end
  max_iter+=1
  p "length: #{len} max_iter: #{max_iter}"
  
  while w < max_iter
    (0...len-w).each do |i|
       #(i+1...nums.length).each do |j|
       p nums[i, w+1]
         res+=1 if nums[i, w+1].reduce(:*) < k
       #end
     end
   w+=1
  end
  res
    
end
p num_subarray_product_less_than_k(nums, k)


#* WORKING | THESE DONT WORK. . . 
#* ALEXS WAY TESTING
def num_subarray_product_less_than_k(nums, k)
  res=0
  nums.each_index do |i|
    (i+1...nums.length).each do |j|
      p nums[i..j]
      p nums[i..j].reduce(:*)
      res+=1 if nums[i..j].reduce(:*) < k
    end
  end
  (res + nums.count{|num| num < k})
end
p num_subarray_product_less_than_k(nums, k)

#* COMBINATIONS
def num_subarray_product_less_than_k(nums, k)
  i=4
  lo = 99999
 #nums.combination(2).count {|c| c.inject(:*) < k}
 #nums.combination(2).each { p _1}
  while  lo > k
    p lo
    p lo =nums.min(i).reduce(:*)
    i-=1
  end
  i+=1
  res=0
  while i > 0
    nums.combination(i).each {|combo| p combo}
    nums.combination(i).each {|combo| p combo.reduce(:*)  }
    i-=1
  end
  res
    
end
p num_subarray_product_less_than_k(nums, k)


#* ONELINER DOESNT WORK
def num_subarray_product_less_than_k(nums, k)
  len = nums.size
  (0...len).count { |i| (i...len).count { |j| nums[i..j].reduce(:*) < k } }
end

p num_subarray_product_less_than_k(nums, k)