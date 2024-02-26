# @param {Integer[]} nums
# @return {String[]}
#*SOL 1
def summary_ranges(nums = [0,2,3,4,6,8,9])
    start = 0
    result = []
    
    nums.each_index do |i|
        next if nums[i + 1] == nums[i] + 1
        result.push [nums[start], nums[i]].uniq.join("->")
        start = i + 1
    end    
    result
end

#* ONELINERS
#1
def summary_ranges(nums)
    nums.each_with_index.group_by{|n,i| n-i}.map{|d,r| [r[0][0], r[-1][0]].uniq.join('->')}
end

#2
def summary_ranges(nums)
    nums.chunk_while {|i, j| i+1 == j }.collect {|r| (r.last > r.first) ? "#{r.first}->#{r.last}" : r.last.to_s}
end