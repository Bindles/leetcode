nums = [1, 4, 2, 10, 2, 3, 1, 0, 20]
k = 3
#* RR2
def max_subarray_sum(nums, k)
  return 0 if nums.empty? || k <= 0 || k > nums.length
  maxsum=0;windowsum=0
  #short: maxsum and windowsum += nums[0...k].sum
  windowsum += nums[0...k].sum
  maxsum=windowsum

  (k...nums.length).each do |i|
    p "k #{k}, #{nums[i]} - #{nums[i-k]} | #{nums[i-k+1..i]}"
    windowsum += nums[i] - nums[i-k]
    maxsum =[maxsum, windowsum].max
  end
  maxsum
end

puts "Array: #{nums}, k: #{k} RR2"
puts "Maximum subarray sum of size #{k}: #{max_subarray_sum(nums, k)}"
p '---'


#* RR
def max_subarray_sum(nums, k)
  return 0 if nums.empty? || k <= 0 || k > nums.length
  max_sum = 0;window_sum = 0

  max_sum and window_sum += nums[0...k].sum
  #window_sum += nums[0...k].sum
  p window_sum
  #max_sum = window_sum

  # Slide the window and update max_sum
  (k...nums.length).each do |i|
    window_sum += nums[i] - nums[i - k]
    max_sum = [max_sum, window_sum].max
  end

  max_sum
end

puts "Array: #{nums}, k: #{k} RR"
puts "Maximum subarray sum of size #{k}: #{max_subarray_sum(nums, k)}"

#* SOL 1
def max_subarray_sum(nums, k)
  return 0 if nums.empty? || k <= 0 || k > nums.length

  max_sum = 0
  window_sum = 0

  # Calculate the sum of the first window
  (0...k).each do |i|
    window_sum += nums[i]
  end
  max_sum = window_sum

  # Slide the window and update max_sum
  (k...nums.length).each do |i|
    window_sum += nums[i] - nums[i - k]
    max_sum = [max_sum, window_sum].max
  end

  max_sum
end

puts "Array: #{nums}, k: #{k}"
puts "Maximum subarray sum of size #{k}: #{max_subarray_sum(nums, k)}"

#* SOL 1 | PUTS
def max_subarray_sum(nums, k)
  return 0 if nums.empty? || k <= 0 || k > nums.length

  max_sum = 0
  window_sum = 0

  # Calculate the sum of the first window
  (0...k).each do |i|
    window_sum += nums[i]
  end
  max_sum = window_sum
  puts "Initial window sum: #{window_sum}, max sum: #{max_sum}"

  # Slide the window and update max_sum
  (k...nums.length).each do |i|
    window_sum += nums[i] - nums[i - k]
    max_sum = [max_sum, window_sum].max
    puts "Window sum after adding #{nums[i]} and removing #{nums[i - k]} at index #{i}: #{window_sum}, max sum: #{max_sum}"
  end

  max_sum
end

# Example usage:
nums = [1, 4, 2, 10, 2, 3, 1, 0, 20, 7, 14, 5, 9]
k = 3
puts "Array: #{nums}, k: #{k}"
puts "Maximum subarray sum of size #{k}: #{max_subarray_sum(nums, k)}"


# def max_two_non_overlapping_subarrays(nums, k)
#   return [0, 0] if nums.empty? || k <= 0 || k > nums.length

#   max_sum = 0
#   window_sum = 0
#   max_sums = []

#   # Calculate the sum of the first window
#   (0...k).each do |i|
#     window_sum += nums[i]
#   end
#   max_sum = window_sum

#   # Slide the window and update max_sum
#   (k...nums.length).each do |i|
#     window_sum += nums[i] - nums[i - k]
#     max_sum = [max_sum, window_sum].max
#     max_sums[i] = max_sum
#   end

#   max_sum = 0
#   window_sum = 0
#   max_sum_indices = []

#   # Calculate the sum of the last window
#   (nums.length - 1).downto(nums.length - k).each do |i|
#     window_sum += nums[i]
#   end
#   max_sum = window_sum

#   # Slide the window backwards and update max_sum
#   (nums.length - k - 1).downto(0).each do |i|
#     window_sum += nums[i] - nums[i + k]
#     max_sum = [max_sum, window_sum].max
#     if max_sum + max_sums[i] > max_sum
#       max_sum_indices = [i, nums.length - k]
#       max_sum = max_sum + max_sums[i]
#     end
#   end

#   max_sum_indices
# end

# # Example usage:
# nums = [1, 4, 2, 10, 2, 3, 1, 0, 20, 7, 14, 5, 9]
# k = 3
# puts "Original Array: #{nums}"
# indices = max_two_non_overlapping_subarrays(nums, k)
# puts "Indices of two non-overlapping subarrays: #{indices}"
# puts "Subarray 1: #{nums[indices[0]...(indices[0] + k)]}"
# puts "Subarray 2: #{nums[indices[1]...(indices[1] + k)]}"


#*




s = "xyzzaz"
# @param {String} s
# @return {Integer}
def count_good_substrings(s)
  arr=[]
  (0...s.length).each do |i|
    p s[0..i]
  end
end
p count_good_substrings(s)

(0...k).each do |i|
  p nums[i]
end
p (0...k)

ss = s.split('')

aa = s.chars.any? { |char| s.count(char) > 3}
p aa
aa = ss.any? { |char| ss.count(char) > 3}
p aa

p ss
maxsum=0
windowsum=0;
# windowsum=ss[0...3]
# p windowsum
(0...ss.size).each do |i|
  p ss[i-3+1..i]
  if ss[i-3+1..i].any? && ss[i-3+1..i].uniq.size == ss[i-3+1..i].size
    maxsum+=1
  end
  #maxsum+=1 if ss[i-3+1..i].any? { |char| ss[i-3+1..i].count(char) < 2}
  #windowsum += ss[i] - ss[i-3]
end
# (0...ss.size).each do |i|
#   p maxsum+=1 unless ss[i-3+1..i].any? { |char| ss[i-3+1..i].count(char) > 1}
#   #windowsum += ss[i] - ss[i-3]

# end
p maxsum

def count_good_substrings(s)
  ss = s.split('')
  maxsum=0

  (0...ss.size).each do |i|
      p ss[i-3+1..i]
      if ss[i-3+1..i].any? && ss[i-3+1..i].uniq.size == ss[i-3+1..i].size
          maxsum+=1
      end
  end
  p maxsum
end
p count_good_substrings(s)
