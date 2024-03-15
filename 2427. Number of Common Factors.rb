#* 2427. Number of Common Factors
a = 12
b = 6
# @param {Integer} a
# @param {Integer} b
# @return {Integer}
#* SOL 1
def common_factors(a, b)
  res=[]
  min_num=[a,b].min
  (1..min_num).each do |i|
    res << i if a % i == 0 && b % i == 0
  end
  res.size
end
p common_factors(a,b)

#* SOL 2 | ONELINER
def common_factors(a, b)
  (1..[a,b].min).select{|i|a % i == 0 && b % i == 0}.size
end
p common_factors(a,b)

#* SOL 3 | FASTEST
def common_factors(a, b)
  res=1
  (2..[a,b].max).each { |num| res += 1 if a % num == 0 && b % num == 0 }
  res
end
p common_factors(a,b)
