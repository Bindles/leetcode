#* 2848. Points That Intersect With Cars
nums = [[3,6],[1,5],[4,7]]
# @param {Integer[][]} nums
# @return {Integer}
#* SOL
def number_of_points(nums)
    nums.flat_map{|a,b|(a..b).to_a}.uniq.length 
end
p number_of_points(nums)

#* INTERESTING SUBMISSIONS ON LEADERBOARDS
#*1
def number_of_points(nums)
    result = []
    nums.each do |num|
        result << (num[0]..num[1]).to_a
    end
    result.flatten.uniq.count
end
p number_of_points(nums)

#*2
def number_of_points(nums)
    (1..100).count { |x| nums.any? { (_1.._2).cover?(x) } }  
end
p number_of_points(nums)