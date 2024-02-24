# @param {String} s
# @return {String}
#*SOL 1
def decode_string(s = "3[a]2[bc]")
  stack = []

  s.each_char do |char|
    stack.push(char)
    next unless char == "]"
    letters ||= []
    amounts ||= []

    letters.unshift(stack.pop) until /\d/.match?(stack.last)
    amounts.unshift(stack.pop) while /\d/.match?(stack.last)
    stack.push(letters[1..-2].join * amounts.join.to_i)
  end
  stack.join
end
p decode_string


#SOL 2 | REGEX
def decode_string(s = "3[a]2[bc]")
  nil while s.gsub!(/(\d+)\[([a-z]+)\]/){ $2 * $1.to_i };s
end
p decode_string


#*EVERYTHING BELOW HERE DOESNT WORK
#WORKING ..
#WARMING UP
def decode_string(s = "3[a]2[bc]")
  numbers = []
  letters = []
  
  s.each_char do |letter|
    numbers << letter.to_i && mv =false if letter.match?(/\d/)
    
    letters << letter if mv == true
    mv = true if letter == "["
  end
  
  puts numbers.inspect
  p letters
  
end
p decode_string

#ALMOST
def decode_string(s = "3[a]2[bc]")
  amounts = []
  letters = []
  mv=false
  ii=-1
  
  s.each_char do |letter|
    amounts << letter.to_i if letter.match?(/\d/)
    mv = false if letter == ']'
    if mv == true
      letters << letter + ii.to_s
    elsif mv == false

    end
    if letter == "["
      mv = true
      ii+=1
    end
  end
  
  p letters
  p amounts
end
p decode_string

#SO CLOSE
def decode_string(s = "3[a]2[bc]")
  amounts = []
  letters = []
  mv=false
  ii=-1
  
  s.each_char do |letter|
    amounts << letter.to_i if letter.match?(/\d/)
    mv = false if letter == ']'
    if mv == true
      letters[ii] ||= "" # Initialize the string if it doesn't exist
      letters[ii] += letter
    elsif mv == false

    end
    if letter == "["
      mv = true
      ii+=1
    end
  end
  
  p letters
  p amounts

  result=[]
  letters.each.with_index do |l, i|
    result << l * amounts[i]
  end
  result.join
end


# a = "abc".split('')
# p a[1]+="c"
# p a