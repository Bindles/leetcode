nums = [0,1,0,3,12]
def move_zeroes(nums)
  i = 0
  (0...nums.size).each do |j|
      p "#{nums[j]}(#{j}) #{nums[j].zero?} | #{nums[i]}(#{i}) <=> #{nums[j]}(#{j})"
      if !nums[j].zero?
          nums[i], nums[j] = nums[j], nums[i]
          i += 1
      end
      p nums
  end
  nums
end
p move_zeroes(nums)

person = {name: "Alice", age: 30, city: "New York"}
person.reverse_each do |key, value|
  puts "#{key}: #{value}"
end
# Output:
# city: New York
# age: 30
# name: Alice
