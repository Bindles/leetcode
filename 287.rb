def numbers_equal_to_5(nums, x)
  target=[]
  stepsarr=[]
  steps=0

  array = []
  nums.each.with_index do |_,index|
    nums.combination(index).select { |pair|array << pair if pair.sum == x }
    p array
  end

  #p nums
  p array.uniq! if array != array.uniq
  (nums.length-1).downto(0) do |x| 

    steps+=1
    #p nums[x]
    target<< nums[x]
     #a.each{ p _1 == (nums[x])}
     p "checking #{nums.reverse} vs #{target}"
     p target
     contains_subarray = array.any? { |subarray| subarray.all? { |num| target.include?(num) } }
     p contains_subarray, steps
     stepsarr << steps and break if contains_subarray
  end
  target=[]
  steps = 0

  p "right, steps {#{steps}}"
  nums.each do |num| 
    p "checking #{nums}"
    steps+=1
    p num
    target<< num
     #a.each{ p _1 == (nums[x])}
     p target
     #NEED BETTER WAY TO COMPARE
    # Check if any subarray in array matches target with sort instead
    contains_subarray = array.any? { |subarray| subarray == target.sort }
    stepsarr << steps and break if contains_subarray
  end
  p target
  p stepsarr
  stepsarr.empty? ? -1 : stepsarr.min
end

# Test case
p numbers_equal_to_5([10,1,1,1,1,1], x=5 )
#TRIES THIS AFTER[10,1,1,1,1,1], x=5
#[3,2,20,1,1,3], x = 10
#[1, 1, 4, 2, 3], x=5
# stepsarr.empty? ? -1 : stepsarr.min