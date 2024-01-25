# @param {Integer} n
# @return {Integer}
def smallest_even_multiple(n=10)
  return n if n % 2 == 0; return n*2   
end

p smallest_even_multiple