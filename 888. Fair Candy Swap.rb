#* 888. Fair Candy Swap
aliceSizes = [1,2]
bobSizes = [2,3]
# @param {Integer[]} alice_sizes
# @param {Integer[]} bob_sizes
# @return {Integer[]}
#* SOL | YIELD SELF
def fair_candy_swap(alice_sizes, bob_sizes)
    s = (alice_sizes.sum - bob_sizes.sum) / 2
    alice_sizes.each_with_object({}) {|x,obj| obj[x - s] = x }.yield_self {|hash|bob_sizes.each{|x|return [hash[x], x] unless hash[x].nil? }}
end
