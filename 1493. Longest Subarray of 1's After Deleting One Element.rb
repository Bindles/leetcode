#* 1493. Longest Subarray of 1's After Deleting One Element
nums = [0,1,1,1,0,1,1,0,1]
# @param {Integer[]} nums
# @return {Integer}
#* SOL 1-3 | BEST
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
p longest_subarray(nums)

#* SOL 2-4
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



#* 3
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

#*
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





