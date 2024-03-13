#* 1043. Partition Array for Maximum Sum
arr = [1,4,1,5,7,3,6,1,9,9,3]
k = 4
# @param {Integer[]} arr
# @param {Integer} k
# @return {Integer}

#* SOL 1 | ITER DP
def max_sum_after_partitioning(arr, k)
  dp = Array.new(arr.length, 0)

  (arr.length - 1).downto(0) do |i|
    max_val=0
    res=0

    (i...[arr.length, i + k].min).each do |j|
      max_val = [max_val, arr[j]].max
      res = [res, (j - i + 1) * max_val + (j + 1 < arr.length ? dp[j + 1] : 0)].max
    end
    dp[i] = res
  end
  dp[0]
end
p max_sum_after_partitioning(arr, k)

#* WORKING | NOT WORK
def max_sum_after_partitioning(arr, k)
    a= arr.sort{ _2 <=> _1}.partition.with_index {|num, index| num if  (index * 3) < arr.length}
    p a
  res=[]
    a[0].each.with_index do |num,index|
      p (arr.length+1)
      p (index + 1) * (3)
      p arr.length
      if (index+1) * (3 )< arr.length
        res << (num.to_s + " ") * 3 
      else
        res << (num.to_s + " ") * (((index + 1) * 3) - (arr.length+1))
      end
    end
    res.join.split(' ').map(&:to_i)
end
#p max_sum_after_partitioning(arr, k)