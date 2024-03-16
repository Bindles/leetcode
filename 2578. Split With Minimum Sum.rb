#* 2578. Split With Minimum Sum
num = 4325
# @param {Integer} num
# @return {Integer}
#* SOL
def split_num(n)
  n.digits.sort!.group_by.with_index{|_,i|i.odd?}.sum{|_,subarray|subarray.join.to_i}
end

def split_num(n)
  n = n.digits.sort!
  2.times.sum{|_i|n[(_i..).step(2)].join.to_i}
end

#* INTERSTING GUYS SOLUTION
def split_num(num)
  num.digits.sort_by(&:~).zip(0..).sum { |d, i| d * 10 ** (i / 2) }
end

#* WORKING...
#* DIDNT GET IT
def split_num(num = 4325)
  a=[]
    num = num.digits.reverse!
    a <<num.min(2)
    a <<num.max(2)
    p a.transpose[0].join.to_i + a.transpose[1].join.to_i
end

p split_num



p Array.superclass

