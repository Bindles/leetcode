#* 1295. Find Numbers with Even Number of Digits
nums = [12,345,2,6,7896]
# @param {Integer[]} nums
# @return {Integer}
#* MY SOL
def find_numbers(nums)
    nums.count{|num| num.digits.size.even? }
end
p find_numbers(nums)
#* MY SOL OPT
def find_numbers(nums)
    nums.count{|num| num.to_s.length.even? }
end
p find_numbers(nums)