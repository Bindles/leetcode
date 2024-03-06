#*57. Insert Interval
# @param {Integer[][]} intervals
# @param {Integer[]} new_interval
# @return {Integer[][]}
#*SOLUTION
def insert(intervals = [[1,3],[6,9]], new_interval = [2,5])
  intervals << new_interval
  intervals.sort!
  
  res = [intervals[0]]
  l, r = res[0]
  
  (intervals.size - 1).times do |i|
    if r >= intervals[i+1][0]
      r = [r, intervals[i+1][1]].max
      res[-1][1] = r
    else
      l, r = intervals[i+1]
      res << [l, r]
    end
  end
  res
end
p insert