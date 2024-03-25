#* 12. Integer to Roman
num = 58
# @param {Integer} num
# @return {String}
def int_to_roman(num)
    
end

def int_to_roman(num)
  digits_to_roman = {1000 => "M", 900 => "CM", 500=> "D", 400=> "CD", 100=> "C", 90=> "XC", 50=> "L", 40=> "XL", 10=> "X", 9=> "IX", 5=> "V", 4=> "IV", 1=> "I"}
  roman = ""
  digits_to_roman.each {|d,r|
    if(num >= d)
      times = num/d
      roman += r*times
      num -= d*times
    end
  }
  roman
end

def int_to_roman(num)
  hash =[1000, 900, 500, 400, 100, 90, 50, 40, 10, 9, 5, 4, 1].zip( %w[M CM D CD C XC L XL X IX V IV I] )
  result = ""
  hash.each do |key,val|
    if num >= key
      times = num / key
      result += val * times
      num -= key * times 
    end
  end
  result
end
p int_to_roman(num)