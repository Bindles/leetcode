def is_power_of_three(n)
  return true if n==3 || n==1
  return false if n%3 != 0 || n.zero?

  is_power_of_three(n/3)
end


def is_power_of_three(n)
  return false if n <= 0
  n /= 3 while n % 3 == 0
  return n == 1
end



def is_power_of_three(n)
  return false if n <1; !!(n.to_s(3).match(/^10*$/))
end


def is_power_of_three(n)
  n>0 && 1162261467 % n == 0
end



p 28 % 6

p 28 % 5
p a = 28 / 5
p c = a * 5
p 28 - c

dividend=28
divisor=5

p q = dividend / divisor
p x = q * divisor
p dividend - x

p '--'
p dividend - (dividend / divisor * divisor) 
p '----'
def findmod(dividend,divisor)
  p dividend - (dividend / divisor * divisor) 
end

findmod(28,5)

def is_power_of_three(n)
  n>0 && findmod(1162261467,n) == 0
end
p is_power_of_three(27)
