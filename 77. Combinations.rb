#* 77. Combinations
n = 4; k = 2
# @param {Integer} n
# @param {Integer} k
# @return {Integer[][]}
#* TEST
p (1..n).to_a
p (1..n).to_a.combination(k).to_a

#* MY SOL
def combine(n, k)
    (1..n).to_a.combination(k).to_a
end
p combine(n, k)