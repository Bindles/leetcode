#* 923. 3Sum With Multiplicity
arr = [1,1,2,2,3,3,4,4,5,5]
target = 8
# @param {Integer} target
# @return {Integer}
def three_sum_multi(arr, target)
    total=0
    mod = 10**9 + 7
    ones=Hash.new(0)
    twos=Hash.new(0)
    
    arr.each_with_index do |v,t|
        total = (total + twos[target - v]) % mod
        ones.each do |k,c|
            twos[k + v] += c
        end
        ones[v] += 1
    end
    total
end
p three_sum_multi(arr, target)