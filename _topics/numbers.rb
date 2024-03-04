def dividerem(a,b)
  div = a / b
  rem = a%b
  p "#{a} % #{b}:"
  p "#{div} rem: #{rem}"
  return [div, rem]
end

p dividerem(10,3)

p (10 / 3).to_f
#OP=> 3.0 | converts too late