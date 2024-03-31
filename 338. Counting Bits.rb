#* 338. Counting Bits
n=5
# @param {Integer} n
# @return {Integer[]}
def count_bits(n)
  (0..n).map{|n| n.to_s(2).count('1')}
end
p count_bits(n)