#2520. Count the Digits That Divide a Number
# @param {Integer} num
# @return {Integer}

#FIRST SOLUTION, DECIDED TO USE SELECT WHICH IS FAIRLY NEW TO ME, AMAZING, 30SEC TOTAL TIME
def count_digits(num= 121)
  num.digits.reverse.select{|a| num % a == 0}.count
end


#TRYIING W.O SELECT FOR COMPARISON
def count_digits(num= 121)
  arr=[];  num.digits.reverse.each {|a| arr << a if num % a == 0} and arr.count
end
p count_digits



#MORE SELECT
p %w[bear cat pigeon ant].select{|a| a.size < 5 }.sort_by(&:size).
  map(&:upcase).join(', ')
# => "CAT, ANT, BEAR"

numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
prime_numbers = numbers.select do |num|
  next if num <= 1
  (2..Math.sqrt(num)).none? { |i| num % i == 0 }
end

p prime_numbers

# Doubling even numbers
numbers = [1, 2, 3, 4, 5]
doubled_even_numbers = numbers.select { |num| num.even? }.map { |num| num * 2 }
p doubled_even_numbers # Outputs [4,  2