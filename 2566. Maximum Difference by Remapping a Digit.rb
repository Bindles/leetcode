#* 2566. Maximum Difference by Remapping a Digit
num = 90
# @param {Integer} num
# @return {Integer}
def min_max_difference(num)
    nums=num.digits.reverse
    p nums
    f=nums[0]
    p f
    replaced = false
    nums.map! { |n| replaced || n != 9 ? n : (replaced = true; 9) }
    high = nums.join.to_i
    
    p '-'
    p high
    #p nums
    low = nums.map{|n| n == nums[0] ? 0 : n}.join.to_i
    p low
    p "#{high} #{low} #{high - low}"
    p high - low
end
p min_max_difference(num)


nums = [9, 0]
nums_str = nums.join('')
nums_str.sub!(/[^9]/, '9')
result = nums_str.chars.map(&:to_i)
p result.join
