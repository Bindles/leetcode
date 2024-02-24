# @param {Integer} num
# @return {Integer}
def split_num(num = 4325)
  a=[]
    num = num.digits.reverse!
    a <<num.min(2)
    a <<num.max(2)
    p a.transpose[0].join.to_i + a.transpose[1].join.to_i
end

p split_num

p Array.superclass