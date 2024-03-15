require 'benchmark'
nums = [1, 4, 2, 10, 2, 3, 1, 0, 20]
k = 3
#* RR2
def max_subarray_sum(nums, k)
  windowsum=0; maxsum=0;
  windowsum += nums[0...k].sum
  p nums[1...k+1]
  p nums[0...k]
  (k...nums.length).each do |i|
    p nums[i]
    p nums[i-k]
  end
end
# p max_subarray_sum(nums, k)


def max_subarray_sum(nums, k)
  maxsum=0
  p nums[1...k+1]
  p nums[0...k]
  p '-'
  (nums.length-k+1).times do |i|
    p nums[i...k+i]
    maxsum = [maxsum, nums[i...k+i].sum].max
  end
  maxsum
end
# p max_subarray_sum(nums, k)

#* SHORT
def max_subarray_sum1(nums, k)
  maxsum = nums[0...k].sum
  (k...nums.length).each do |i|
    #p nums[i...k+i]
    maxsum = [maxsum, nums[i...k+i].sum].max
  end
  maxsum
end
# p max_subarray_sum(nums, k)

#* SHORT
def max_subarray_sum2(nums, k)
  maxsum = nums[0...k].sum
  (k...nums.length).each{|i|maxsum = [maxsum, nums[i...k+i].sum].max} and maxsum
end
# p max_subarray_sum(nums, k)

#* SHORT
def max_subarray_sum3(nums, k)
  maxsum=0;windowsum=0
  #short: maxsum and windowsum += nums[0...k].sum
  windowsum += nums[0...k].sum
  maxsum=windowsum
  (k...nums.length).each do |i|
    windowsum += nums[i] - nums[i-k]
    maxsum = [maxsum, windowsum].max
  end
  maxsum
end
p max_subarray_sum3(nums,k)


 #* OG
def max_subarray_sum0(nums, k)
  return 0 if nums.empty? || k <= 0 || k > nums.length
  maxsum=0;windowsum=0
  #short: maxsum and windowsum += nums[0...k].sum
  windowsum += nums[0...k].sum
  maxsum=windowsum

  (k...nums.length).each do |i|
    maxsum =[maxsum, windowsum].max
  end
  maxsum
end
# p max_subarray_sum(nums, k)


 #* OG
def max_subarray_sum00(nums, k)
  return 0 if nums.empty? || k <= 0 || k > nums.length
  maxsum=0;windowsum=0
  #short: maxsum and windowsum += nums[0...k].sum
  p windowsum += nums[0...k].sum
  maxsum=windowsum

  (k...nums.length).each do |i|
    p "k #{k}, #{nums[i]} - #{nums[i-k]} | #{nums[i-k+1..i]}"
    p windowsum += nums[i] - nums[i-k]
    maxsum =[maxsum, windowsum].max
  end
  maxsum
end
# p max_subarray_sum00(nums, k)




# nums = Array.new(160) { rand(1..100) }
# k=3

# max_subarray_sum1_time = Benchmark.realtime do
#   max_subarray_sum1(nums, k)
# end
# puts "max_subarray_sum1 took #{max_subarray_sum1_time} seconds"

# max_subarray_sum2_time = Benchmark.realtime do
#   max_subarray_sum2(nums, k)
# end
# puts "max_subarray_sum2 took #{max_subarray_sum2_time} seconds"

# max_subarray_sum3_time = Benchmark.realtime do
#   max_subarray_sum3(nums, k)
# end
# puts "max_subarray_sum3 took #{max_subarray_sum3_time} seconds"

# max_subarray_sum0_time = Benchmark.realtime do
#   max_subarray_sum0(nums, k)
# end
# puts "max_subarray_sum0 took #{max_subarray_sum0_time} seconds"

#* 24.3.15
def sum(nums, k)
  maxsum=0;
  maxsum += nums[0...k].sum
  (k...nums.length).each do |i|
    p nums[i...k+i] 
    maxsum = [maxsum, nums[i...k+i].sum].max
  end
  maxsum
end
p sum(nums,k)

def sum(nums, k)
  maxsum=0;windowsum=0;
  p windowsum += nums[0...k].sum
  (k...nums.length).each do |i|
    p nums[i...k+i] 
    windowsum += nums[i] - nums[i-k]
    maxsum = [maxsum, windowsum].max
  end
  maxsum
end
p sum(nums,k)



