#* 1137. N-th Tribonacci Number
n = 6
# @param {Integer} n
# @return {Integer}
#*
def tribonacci(n)
  a,b,c = 0,1,1
  return [a,b,c][n] if n < 3
  (n-2).times {a,b,c = b,c,a+b+c} and c
end
p tribonacci(n)

#* READABLE
def tribonacci(n)
  a,b,c = 0,1,1
  return [a,b,c][n] if n < 3
  (n-2).times do 
    a,b,c = b,c,a+b+c
  end
  c
end
p tribonacci(n)

a,b,c=0,1,1

for x in range(0, n-2):
  a,b,c = b,c,a+b+c

#*
def tribonacci(n)
    t = [0, 1, 1]
    until n < 3
        t.rotate![2] = t.sum
        n -= 1
    end
    t[n]
end
p tribonacci(n)