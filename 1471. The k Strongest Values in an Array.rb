#* 1471. The k Strongest Values in an Array
arr = [1,2,3,4,5]
k = 2
# @param {Integer[]} arr
# @param {Integer} k
# @return {Integer[]}
#* MY SOL 1
def get_strongest(arr, k)
    m = arr.sort[(arr.length - 1) / 2]
    arr.sort_by { |x| [-(x - m).abs, -x] }.first(k)
end
p get_strongest(arr, k)
#* MY SOL 1.1 | YIELD SELF
def get_strongest(arr, k)
    arr.sort[(arr.length - 1) / 2].yield_self{|m|arr.sort_by { |x| [-(x - m).abs, -x] }.first(k)}
end
p get_strongest(arr, k)