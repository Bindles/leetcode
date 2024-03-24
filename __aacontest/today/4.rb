def most_frequent_ids(nums, freq)
  count = Hash.new(0)
  max_count = 0
  max_count_ids = []

  nums.each_with_index do |id, i|
    count[id] += freq[i]
    if count[id] > max_count
      max_count = count[id]
      max_count_ids = [id]
    elsif count[id] == max_count
      max_count_ids << id
    end
  end

  freq.map do |f|
    max_count_ids.empty? ? 0 : max_count
  end
end

def run_tests
  # Test Case 1
  result1 = most_frequent_ids([2,3,2,1], [3,2,-3,1])
  expected1 = [3,3,2,2]
  puts "Test Case 1 Passed? #{result1 == expected1}"

  # Test Case 2
  result2 = most_frequent_ids([5,5,3], [2,-2,1])
  expected2 = [2,0,1]
  puts "Test Case 2 Passed? #{result2 == expected2}"

  # Additional Test Case
  result3 = most_frequent_ids([1,2,3,4], [2,-2,2,-2])
  expected3 = [2,0,2,0]
  puts "Test Case 3 Passed? #{result3 == expected3}"
end

run_tests
