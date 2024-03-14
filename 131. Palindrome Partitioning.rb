#* 131. Palindrome Partitioning
s = "aab"
# @param {String} s
# @return {String[][]}
#* SOL 1
def partition(s, index=s.size-1)
  return [[]] if index < 0
  (0..index).sum([]) do |start_index|
    substr = s[start_index..index]
    if substr != substr.reverse
      []
    else
      partition(s, start_index - 1).map { |subarray| subarray << substr }
    end
  end
end
p partition(s)

#* SOL 2
p partition(s)
def partition(s, index=s.size-1)
  return [[]] if index < 0
  (0..index).sum([]) do |start_index|
    substr = s[start_index..index]
    substr == substr.reverse ? partition(s, start_index - 1).map { |subarray| subarray << substr } : []
  end
end
p partition(s)

#* SOL 3 | REDUCE
def partition(s)
  index = s.size - 1
  return [[]] if index < 0
  (0..index).reduce([]) do |result, start_index|
    substr = s[start_index..index]
    substr == substr.reverse ? result + partition(s[0...start_index]).map { |subarray| subarray + [substr] } : result
  end
end
partition(s)

#* OTHER SOL

def longest_subarray(nums)
  ls = nums.chunk(&:itself).collect {|v| [v.first, v.last.size] }
  (hl = ls.collect(&:first).tally).default = 0
  n0, n1 = hl.values_at(0, 1)
  return 0 if n1.zero?
  return ls.filter {|(v, cnt)| v == 1 }.first.last - (n0.zero? ? 1 : 0) if n1 == 1
  ls.filter! {|v| 
      v.first == 1 || (v.first.zero? && v.last > 1) 
  }.collect {|(v, cnt)| 
      v.zero? ? 0 : cnt 
  }.each_cons(2).collect(&:sum).max
end

# @param {Integer[]} nums
# @return {Integer}
def longest_subarray(nums)
  left_w, right_w, longest_arr, k = 0, 0, 0, 1
  
  while right_w < nums.length
      longest_arr = [longest_arr, right_w - left_w].max
      
      right_w += 1 if nums[right_w] == 1
      if nums[right_w] == 0 && k > 0
          right_w += 1
          k -= 1
      end
      
      if nums[right_w] == 0 && k == 0
          k += 1 if nums[left_w] == 0
          left_w += 1
      end
  end
  return longest_arr
end

# @param {Integer[]} nums
# @return {Integer}
def longest_subarray(nums)
left = 0
right = 0
k = 1
max = 0

n = nums.size
while right < n
  if nums[right] == 0
    k -= 1
    while k < 0
      k += 1 if nums[left] == 0
      left += 1
    end
  end
  max = [max, right - left].max
  
  right += 1
end

max
end

# @param {Integer[]} nums
# @return {Integer}
def longest_subarray(nums)
  left_w, right_w, longest_arr, k = 0, 0, 0, 1
  
  while right_w < nums.length
      longest_arr = [longest_arr, right_w - left_w].max
      
      right_w += 1 if nums[right_w] == 1
      if nums[right_w] == 0 && k > 0
          right_w += 1
          k -= 1
      end
      
      if nums[right_w] == 0 && k == 0
          k += 1 if nums[left_w] == 0
          left_w += 1
      end
  end
  return longest_arr
end