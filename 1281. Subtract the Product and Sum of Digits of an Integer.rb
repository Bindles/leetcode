# @param {Integer} n
# @return {Integer}
def subtract_product_and_sum(n = 234)
  n.digits.reverse.reduce(:*) - n.digits.reverse.reduce(:+)
end
p subtract_product_and_sum

