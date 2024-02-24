#* 201. Bitwise AND of Numbers Range
# @param {Integer} left
# @param {Integer} right
# @return {Integer}
#*MY SOL 1 | SIMPLE
def range_bitwise_and(left, right)
  shift = 0
  while left != right
    left >>= 1
    right >>= 1
    shift += 1
  end
  left << shift
end

#MY SOL 1.5 | CONCISE
def range_bitwise_and(left, right)
  while left < right
    right = right & (right - 1)
  end
  left&right
end

#*ONE LINERS
#MY SOL 1.5 | ONELINER
def range_bitwise_and(left, right)
  right = right & (right - 1) while left < right; left & right
end

def range_bitwise_and(m, n)
  !m or m.to_s(2).length < n.to_s(2).length ? 0 : (m..n).reduce(:&)
end



#OTHER GUYS SOL
def range_bitwise_and(left, right)
    diff = right - left
    r = right.to_s(2).rjust(32, '0').reverse
    l = left.to_s(2).rjust(32, '0').reverse
    
    32.times.map do |i|
        r[i] == '0' || l[i] == '0' || diff > 2**i ? '0' : '1'
    end.reverse.join.to_i(2)
end

left=2
p left >>=3



