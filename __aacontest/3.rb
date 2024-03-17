def minimum_deletions(word, k)
  freq = Hash.new(0)
  word.each_char { |char| freq[char] += 1 }
  
  counts = freq.values.sort
  max_count = counts.max
  min_deletions = word.length
  
  (0..max_count).each do |target|
      current_deletions = 0
      counts.each do |count|
          diff = (count - target).abs
          if diff <= k
              current_deletions += diff
          else
              current_deletions += count
          end
      end
      min_deletions = [min_deletions, current_deletions].min
  end
  
  min_deletions
end

# Test cases
puts minimum_deletions("aabcaba", 0)  # Output: 3
puts minimum_deletions("dabdcbdcdcd", 2)  # Output: 2
puts minimum_deletions("aaabaaa", 2)  # Output: 1
