# @param {Integer} n
# @return {String[]}
n=3
def fizz_buzz(n)
  result=[]
  (1..n).each do |num|
    if num % 3 == 0 && num % 5 == 0
        result << "FizzBuzz"
    elsif num % 3 ==0
        result << "Fizz"
    elsif num % 5 == 0
        result << "Buzz"
    else
        result << num.to_s
    end
  end
  result
end
p fizz_buzz(n)

def fizz_buzz(n)
    (1..n).map do |num|
      case
      when num % 3 == 0 && num % 5 == 0 then "FizzBuzz"
      when num % 3 == 0 then "Fizz"
      when num % 5 == 0 then "Buzz"
      else num.to_s
      end
    end
end
p fizz_buzz(n)

# def fizz_buzz(n)
#     (1..n).map do |num|
#       if num % 3 == 0 && num % 5 == 0 then "FizzBuzz"
#       if num % 3 == 0 then "Fizz"
#       if num % 5 == 0 then "Buzz"
#     end
# end
# p fizz_buzz(n)

def fizz_buzz(n)
    result=[]
    (1..n).each do |num|
      if num % 3 == 0 && num % 5 == 0
          result << "FizzBuzz"
      elsif num % 3 ==0
          result << "Fizz"
      elsif num % 5 == 0
          result << "Buzz"
      else
          result << num.to_s
      end
    end
    result
  end
  p fizz_buzz(n)




# @param {Integer} n
# @return {String[]}
def fizz_buzz(n)
    (1..n).map do |i|
        res = ""
        res += "Fizz" if i%3 == 0
        res += "Buzz" if i%5 == 0
        res += i.to_s if res.empty?

        res
    end
end

# @param {Integer} n
# @return {String[]}
def fizz_buzz(n)
    (1..n).map do |i|
        val = "".then {|str| i > 2 && i % 3 == 0 ? "Fizz" : str }
                .then {|str| i > 4 && i % 5 == 0 ? str + "Buzz" : str }
        val.empty? ? i.to_s : val
    end
end

# @param {Integer} n
# @return {String[]}
def fizz_buzz(n)
    Array.new(n) do |index|
        index += 1
        if index % 3 == 0 && index % 5 == 0
            'FizzBuzz'
        elsif index % 3 == 0
            'Fizz'
        elsif index % 5 == 0
            'Buzz'
        else
            index.to_s
        end
    end
end