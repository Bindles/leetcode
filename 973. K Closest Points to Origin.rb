#* 973. K Closest Points to Origin
points = [[3,3],[5,-1],[-2,4]]
k = 2
# @param {Integer[][]} points
# @param {Integer} k
# @return {Integer[][]}
#* MY SOL | EASY
def k_closest(points, k)
  points.sort_by{|a,b| (a**2) + (b**2)}[0...k]
end  