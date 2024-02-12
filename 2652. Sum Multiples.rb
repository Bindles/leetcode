# @param {Integer} n
# @return {Integer}

#MY SOL|CONCISE
def sum_of_multiples(n)
  (1..n).select{_1 % 3 == 0||_1 % 5 == 0||_1 % 7 == 0}.sum
end

#WORKING SOL
def sum_of_multiples(n)
    for num in (1..n) do
      p num
    end
    #dont use for, change to .each, .each turns to .select
    (1..n).select do |nn|
      nn % 3 == 0 || nn % 5 == 0 || nn % 7 == 0
    end.sum
end
p sum_of_multiples(7)

#REDUCE INSTEAD
def sum_of_multiples(n)
  (1..n).reduce(0){|sum,num|sum + (num % 3 == 0 || num % 5 == 0 || num % 7 == 0 ? num : 0) }
end
#CONCISE
def sum_of_multiples(n)
  (1..n).reduce(0){_1 + (_2 % 3 == 0 || _2 % 5 == 0 || _2 % 7 == 0 ? _2 : 0) }
end

p sum_of_multiples(7)
