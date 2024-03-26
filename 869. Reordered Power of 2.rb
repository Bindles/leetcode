#* 869. Reordered Power of 2
n=61
# @param {Integer} n
# @return {Boolean}
#* WORKING ONES
#*SOL WORKS
def reordered_power_of2(n)
  digits = n.digits
  sum = digits.sum
  freq = digits.tally
  return false if sum % 3 == 0
  
  exp = 0.5
  (0..Math.log2(1e9).floor).map do
      exp = (exp * 2).to_i
      exp.digits.tally
  end.include?(freq)
end
p reordered_power_of2(n)

#*HOW TO USE TAP
def reordered_power_of2(n)
  sum = nil
  freq = n.digits.tap { sum = _1.sum }.tally
  
  return false if sum % 3 == 0
  
  exp = 0.5
  (0..Math.log2(1e9).floor).map do
      exp = (exp * 2).to_i
      exp.digits.tally
  end.include?(freq)
end
p reordered_power_of2(n)

#* (0..Math.log2(1e9).floor).map { (exp = (exp * 2).to_i).digits.tally }.include?(freq)
def reordered_power_of2(n)
  digits = n.digits
  sum = digits.sum
  freq = digits.tally
  return false if sum % 3 == 0
  exp = 0.5
  (0..Math.log2(1e9).floor).map { (exp = (exp * 2).to_i).digits.tally }.include?(freq)
end
p reordered_power_of2(n)


#* THESE ALL TIMEOUT =(
def reordered_power_of2(n)
  def power_of_2?(num)
    # Check if num is positive and has only one bit set
    num > 0 && (num & (num - 1)).zero?
  end
    combos = n.digits.reverse.permutation.to_a.map{|num| num unless  num[0] == 0 }.compact.map{|num| num.join.to_i}
    combos.each {|com| return true if power_of_2?(com)} || false
end
p reordered_power_of2(n)

def reordered_power_of2(n)
    power_of_2 = ->(num) { num > 0 && (num & (num - 1)).zero? }
    combos = n.digits.reverse.permutation.to_a.map{|num| num unless  num[0] == 0 }.compact.map{|num| num.join.to_i}
    combos.each {|com| return true if power_of_2[com]}
    false
end
p reordered_power_of2(n)

def reordered_power_of2(n)
  power_of_2 = ->(num) { num > 0 && (num & (num - 1)).zero? }
  combos = n.digits.reverse.permutation.to_a.map{|num| num unless  num[0] == 0 }.compact.map{|num| num.join.to_i}
  combos.any? {|com| return true if power_of_2[com]} || false
end
p reordered_power_of2(n)

def reordered_power_of2(n) 
  power_of_2 = ->(num) { num > 0 && (num & (num - 1)).zero? }
  n.digits.permutation.any? { |perm| perm[0] != 0 && power_of_2[perm.join.to_i] } || false
end
p reordered_power_of2(n)


def reordered_power_of2(n) 
  power_of_2 = ->(num) { num > 0 && (num & (num - 1)).zero? }
  combos = n.digits.permutation.to_a.map{ |num| num unless num[0] == 0 }.compact.map{ |num| num.join.to_i }
  combos.any? { |com| power_of_2[com] }
end
p reordered_power_of2(n)



#* TEST
# Digits
digits = [3, 1, 4]

# Generate permutations
perms = digits.permutation.to_a
p perms

# Print permutations
#perms.each { |perm| puts perm.join }