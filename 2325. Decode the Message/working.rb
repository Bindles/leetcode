# @param {String} key
# @param {String} message
# @return {String}
def decode_message(key, message)
    
end


input_string = "the fox"
result = {}

input_string.downcase.each_char do |char|
  next if char == ' ' # Skip spaces
  result[char.to_sym] = (char.ord - 'a'.ord + 1).to_s
end

puts result
# Output: {:t=>"1", :h=>"8", :e=>"3", :f=>"6", :o=>"15", :x=>"24"}

input_string = "the fox"
result = {}

input_string.downcase.each_char.with_index(1) do |char, index|
  next if char == ' ' # Skip spaces
  result[char.to_sym] = index
end

puts result


input_string = "the fox"
result = {}

input_string.downcase.each_char.with_index(1) do |char, index|
  next if char == ' ' # Skip spaces
  result[char.to_sym] = (index + 'a'.ord - 1).chr
end

puts result
# Output: {:t=>"a"
