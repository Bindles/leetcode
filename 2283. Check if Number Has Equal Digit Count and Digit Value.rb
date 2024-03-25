#* 2283. Check if Number Has Equal Digit Count and Digit Value
num = "1210"
# @param {String} num
# @return {Boolean}
#* MY SOL
def digit_count(num)
  nums = num.to_i.digits.reverse
  nums.each.with_index do |n,i|
    p "#{n} #{i} #{nums.count(i)}"
    return false unless n == nums.count(i)
  end
  true
end

#* CHECKING IF NEED TO CONVERT TO ARRAY WORKS BUT MEH
def digit_count(num)
  num.each_char.with_index do |char, i|
    digit = char.to_i
    return false unless digit == num.count(i.to_s)
  end
  true
end


p digit_count(num)  

p digit_count(num)