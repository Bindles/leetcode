#MY_SOLUTION 
def convert_temperature(celsius)
  res=[]; res << celsius + 273.15; res << celsius * 1.80 + 32.00 and res
end


p 123456.digits.select  {|i| i % 3 == 0} 
p 123.digits.find  {|i| i % 3 == 0} 
p [1,2,3].map  {|i| i % 3 == 0}
p [1,2,3].map(&:even?)
p [1,2,3].map(&:class)    # MY SOLUTION