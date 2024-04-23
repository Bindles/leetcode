#* 2485. Find the Pivot Integer
n = 8
# @param {Integer} n
# @return {Integer}
#* REALLY PROUD OF THIS SOL LOL EASY PROBLEM THO
def pivot_integer(n)
  (1...n).each do |i|
    return i if (1..i).sum == (i..n).sum
  end
  -1
end
p pivot_integer(n)

def pivot_integer(n)
  (1..n).each do |i|
    p "#{i}: #{(1..i).sum} #{(i..n).sum}"
  end
end
p pivot_integer(n)

#*MATH
def pivot_integer(n)
  x = Math.sqrt((n * n + n) / 2)
  x == x.to_i ? x.to_i : -1
end
p pivot_integer(n)

#* TEST
#8*8=64, 64+8=72
#72 / 2 = 36
p Math.sqrt(36)
#8*8=64, 64+8=72   
p Math.sqrt((n * n + n) / 2) 

#* OTHER PPL GOOD SOLS
def pivot_integer(n)
  range = (1..n).to_a
  left = 0
  right = range.sum
  range.each_with_index do |x, i| 
    right -= range[i-1] if i > 0
    left += x
    return x if left == right
  end
  -1
end

#*WORKING
def pivot_integer(n)
  (2...n).each do |num|
    p (1..num).sum
  end
end
p pivot_integer(n)


