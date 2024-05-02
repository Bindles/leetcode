#* 1732. Find the Highest Altitude
gain = [-5,1,5,0,-7]
# @param {Integer[]} gain
# @return {Integer}
def largest_altitude(gain)
    
end

#* 
def largest_altitude(gain)
  cur = highest = 0
  gain.each do |x|
    cur += x
    highest = cur if cur > highest
  end
  highest
end
p largest_altitude(gain)


def largest_altitude(gain)
    current = highest = 0
    gain.each do |x|
        current += x
        highest = [highest, current].max
    end
    highest
end
p largest_altitude(gain)

def largest_altitude(gain)
  gain.reduce([0, 0]) { |(current, highest), x| [current + x, [highest, current + x].max] }.last
end

p largest_altitude(gain)


# @param {Integer[]} gain
# @return {Integer}
# 8 : 10
def largest_altitude(gain)
result = [0]
  0.upto(gain.size - 1) do |i|
    result << result[i] + gain[i]
  end
  result.max    
end


# @param {Integer[]} gain
# @return {Integer}
def largest_altitude(gain)
    result = [0]
    gain.each do |val|
        result << result.last + val
    end
    result.max
end


# Leetcode: 1732. Find the Highest Altitude.
# https://leetcode.com/problems/find-the-highest-altitude/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 91 ms, faster than 44.44% of Ruby online submissions for Find the
# Highest Altitude.
# Memory Usage: 211.1 MB, less than 27.78% of Ruby online submissions for Find
# the Highest Altitude.
# 2023.06.19 Daily Challenge.
# @param {Integer[]} gain
# @return {Integer}



def largest_altitude(gain)
    prefix = gain.inject([]) { |acc, value| acc << acc.last.to_i + value.to_i }
    max_gain = prefix.max
    max_gain < 0 ? 0 : max_gain
end
