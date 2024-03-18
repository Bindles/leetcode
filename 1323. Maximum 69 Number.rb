#* 1323. Maximum 69 Number
#* LEARN => SUB DIGITS REVERSE TO_I BREAK EACH.WITH_INDEX ARRAY
num = 66
# @param {Integer} num
# @return {Integer}
#* MY SOL
def maximum69_number(num)
    nums = num.digits.reverse
    nums.each_index do |index|
        if nums[index]==6
            nums[index] = 9
            break
        end
    end
    nums.join.to_i
end

#* CONCISE | SUB
def maximum69_number(num)
    num.to_s.sub('6','9').to_i
end

#* WORKING
#*
def maximum69_number(num)
    numarr = num.digits
    return num if numarr.count(6) == 0 || numarr.count(9) == numarr.length
    numarr.each.with_index do |n,i|
        p numarr
        p n
        if n == 6
            numarr[i] = "9"
            return numarr.join.to_i
        end
    end
end
p maximum69_number(num)


#* TEST
# p num.digits.reverse.join.to_i
# p num
# p num.digits
# b = num.digits
# p b
# p b
