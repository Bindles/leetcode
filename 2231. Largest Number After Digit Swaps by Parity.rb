#* 2231. Largest Number After Digit Swaps by Parity
num = 65875
# @param {Integer} num
# @return {Integer}
#* SOL 1
def largest_integer(num)
    nums = num.digits.reverse
    parity = nums.partition{|x| x.even?}.map(&:sort)
    nums.map do |n|
        if n.even?
            parity[0].pop
        else
            parity[1].pop
        end
    end.join.to_i
end
p largest_integer(num)
#* SOL 1.1 | CONCISE
def largest_integer(num)
    nums = num.digits.reverse
    parity = nums.partition{|x| x.even?}.map(&:sort)
    nums.map do |n|
        n.even? ? parity[0].pop : parity[1].pop
    end.join.to_i
end
p largest_integer(num)

#* SOL 1.2 | SUPER CONCISE
def largest_integer(num)
    nums = num.digits.reverse
    parity = nums.partition{|x| x.even?}.map(&:sort)
    nums.map{|n|n.even? ? parity[0].pop : parity[1].pop}.join.to_i
end
p largest_integer(num)

#* MY SOL | PUTS
def largest_integer(num)
    res = []
    nums = num.digits.reverse
    parity = nums.partition{|x| x.even?}.map(&:sort)
    p parity
    p parity[0]
    p parity[1]
    nums.each do |n|
        if n % 2 == 0
            res << parity[0].pop
        else
            res << parity[1].pop
        end
    end
    res.join.to_i
end
p largest_integer(num)



