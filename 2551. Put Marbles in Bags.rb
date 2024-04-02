#* 2551. Put Marbles in Bags
weights = [1,3,5,1]; k = 2
# @param {Integer[]} weights
# @param {Integer} k
# @return {Integer}
def put_marbles(weights, k)
    w = weights.each_cons(2).collect(&:sum).sort
    w.last(k-1).sum - w.first(k-1).sum
end
p put_marbles(weights, k)