#* 1742. Maximum Number of Balls in a Box
low_limit = 5
high_limit = 15
# @param {Integer} low_limit
# @param {Integer} high_limit
# @return {Integer}
#* SOL
def count_balls(low_limit, high_limit)
    (low_limit..high_limit).map {_1.digits.sum}.tally.values.max
end
p count_balls(low_limit,high_limit)