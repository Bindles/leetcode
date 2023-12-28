def getl(s, k)
char_count = Hash.new(0)

s.each_char do |char|
  char_count[char] += 1
end

p "char count ---"
p char_count
p "---"

z=0
result=""
char_count.each do |char, count|
  puts "#{char} => #{count}"
  p char_count[char]
  p char
  #p char_count.min
  #char_count.delete("b") if char == "b"
  # char_count.delete("b") and puts z and z+=1 if char == "b" && z <= 2
  p char_count
  return result="#{char}#{count}".length if k==0
  if count == char_count.values.min && z < k
    char_count.delete(char)
    p char,"deleted",z,k
    z+=1
  else
  #char_count[char]="" if count <=1
  count != 1 ? result+="#{char}#{count}" : result+=char
  end
  # Remove character with the minimum 
  
  p char_count.values
  p char_count.values.min
  # char_count.delete(char) if count == char_count.values.min
end
p result
result.length
# p char_count
# #char_count.delete("b")
# p char_count
# p char_count.min
end


#puts getl(s = "aaabcccd", k = 2)
puts getl(s = "abc", k = 0)