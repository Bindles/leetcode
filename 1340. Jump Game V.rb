#* 1340. Jump Game V
arr = [6,4,14,6,8,13,9,7,10,6,12]
d = 2
# @param {Integer[]} arr
# @param {Integer} d
# @return {Integer}
def max_jumps(arr, d)
  n = arr.length
  memo = {}
  
  dp = ->(i) {
    res = 0

    (i - 1).downto([0, i - d].max) do |j|
      break if arr[j] >= arr[i]
      res = [dp.call(j), res].max
    end

    (i + 1).upto([n, i + d + 1].min - 1) do |j|
      break if arr[j] >= arr[i]
      res = [dp.call(j), res].max
    end

    1 + res
  }
  (0...n).map { |i| dp.call(i) }.max
end
p max_jumps(arr, d)