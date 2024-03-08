#3005. Count Elements With Maximum Frequency
# @param {Integer[]} nums
# @return {Integer}
#*ONELINER | OPTIMIZED
def max_frequency_elements(nums = [1,2,3,4,5])
  p nums.tally.values.tally.max.inject(&:*)
end
p max_frequency_elements

#* HASH AND COUNT | OPTIMIZED OVER BELOW SOL
def max_frequency_elements(nums = [1,2,2,3,1,4])
  p max_count = nums.tally.values.max 
  nums.select{|num|nums.count(num) == max_count}.size
end
p max_frequency_elements

#*COUNT*******
#*INITIAL SOL
def max_frequency_elements(nums = [1,2,2,3,1,4])
    p max_count = nums.map{|num|nums.count(num)}.max
    p nums.select{|num|nums.count(num) == max_count} #.size  for completion
end
p max_frequency_elements
#*INITIAL SOL | ONELINER | BAD PERF
def max_frequency_elements(nums = [1,2,2,3,1,4])
  nums.select{|num|nums.count(num) == (nums.map { |num|nums.count(num)}.max)}.size
end
#*************

p 'allhash'
#*HASH | BEATS COUNT-HEAVY OPERATIONS
def max_frequency_elements(nums = [1,2,2,3,1,4])
  p frequencies_hash_values = nums.tally.values 
  p max_value = frequencies_hash_values.max
  frequencies_hash_values.select { _1 == max_value }.sum
end
p max_frequency_elements

#*A SOLUTION I SAW WONDERING WHY MAX_BY[0]
def max_frequency_elements(nums = [1,2,3,4,5])
  p nums.tally.values.tally.max_by(&:first).inject(&:*)
end
p max_frequency_elements





