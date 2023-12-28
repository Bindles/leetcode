def getl(s, k)
  z=0
  result=""
  char_map_countz = Hash.new(0)
  char_map_countz['a'] = "hi"
  p char_map_countz

  char_map_count= Hash.new(0)
  p s

  s.each_char do |char|
     char_map_count[char]+=1
     p char + " + 1", char_map_count 
  end

  char_map_count.each do |char, count|
    p char
  char_map_count.delete(char) and puts z and z+=1 if char == "b" && z <= 2
    result+="#{char}#{count}"
    char_map_count['a']=""
    p result
  end

end
puts getl(s = "aaabcccd", k = 2)