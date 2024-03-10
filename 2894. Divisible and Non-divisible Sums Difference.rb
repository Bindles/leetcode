#*2894. Divisible and Non-divisible Sums Difference
n = 10;m = 3
# @param {Integer} n
# @param {Integer} m
# @return {Integer}
def difference_of_sums(n, m)
    sum_multiples = m * (1 + n / m) * (n / m) / 2
    sum_non_multiples = (1 + n) * n / 2 - sum_multiples
    sum_non_multiples - sum_multiples
end
p difference_of_sums(n, m)

#* SOL
def difference_of_sums(n, m)
    nums = [[], []]
    (1..n).each do |i|
        nums[i % m == 0 ? 1 : 0] << i
    end
    (nums[0].sum - nums[1].sum)
end
p difference_of_sums(n, m)

#* SOL
def difference_of_sums(n, m)
    nums = [[], []]
    (1..n).each do |i|
        i % m == 0 ? nums[1] << i : nums[0] << i
    end
    (nums[0].sum - nums[1].sum)
end
p difference_of_sums(n, m)

#* SOL
def difference_of_sums(n, m)
    num1=[]
    num2=[]
    (1..n).each do |i|
        i % m == 0 ? num2 << i : num1 << i
    end
    (num1.sum - num2.sum)
end
p difference_of_sums(n, m)