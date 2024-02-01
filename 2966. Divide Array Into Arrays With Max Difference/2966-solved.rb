#CONCISE
def divide_array(nums = [1,3,4,8,7,9,3,5,1], k = 2)
  nums.sort!
  i, incz, correct_array_amount = 0,0,0
  splittimes = nums.length / 3
  arr = []

  while i < splittimes do
    arr << nums.slice(incz, 3)
    incz += 3
    i += 1
  end

  (0..splittimes-1).each do |splitem|
    next if arr[splitem].nil? # Skip nil elements | DONT THINK I NEED THIS
    correct_array_amount+=1 if arr[splitem].max - arr[splitem].min <= k
  end
  correct_array_amount == splittimes ? (return arr) : (return Array.new)
end



#CONCISEST
def divide_array(nums = [1,3,4,8,7,9,3,5,1], k = 2)
  nums.sort!
  i, incz, correct_array_amount = 0,0,0
  split_times = nums.length / 3
  arr = []

  while i < split_times do
    arr << nums.slice(incz, 3)
    incz += 3
    i += 1
  end

  (0..split_times-1).each {|splitem|correct_array_amount+=1 if arr[splitem].max - arr[splitem].min <= k }
  correct_array_amount == split_times ? (return arr) : (return Array.new)
end