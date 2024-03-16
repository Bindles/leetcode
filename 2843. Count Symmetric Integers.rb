#* 2843. Count Symmetric Integers
# @param {Integer} low
# @param {Integer} high
# @return {Integer}
low = 1
high = 100
#* SOL 1
def count_symmetric_integers(low, high)
  count = 0
  (low..high).each do |num|
    next if num.to_s.size.odd?
    digits = num.to_s.chars.map(&:to_i)
    half = digits.size / 2
    sum_left = digits[0...half].sum
    sum_right = digits[half..].sum
    count += 1 if sum_left == sum_right
  end
  count
end
p count_symmetric_integers(low,high)

#*WORKING...
#* THESE DONT WORK | SOL
def count_symmetric_integers(low, high)
  res=[]
  (low..high).each do |i|
    if i.to_s.length > 1
    res << i if i.to_s.reverse == i.to_s
    end
  end
  res
end
p count_symmetric_integers(low,high)
#* SOL 
def count_symmetric_integers(low, high)
  count = 0
  (low..high).each do |i|
    count += 1 if i.to_s.length > 1 && i.to_s.reverse == i.to_s
  end
  count
end
p count_symmetric_integers(low,high)

