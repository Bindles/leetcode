def remove_duplicates(nums)
  return 0 if nums.empty?

  unique_count = 1

  for i in 1..nums.length - 1
    if nums[i] != nums[i - 1]
      nums[unique_count] = nums[i]
      unique_count += 1
    end
  end

  unique_count
end
