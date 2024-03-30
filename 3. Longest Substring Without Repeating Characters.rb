#* 3. Longest Substring Without Repeating Characters
s = "abcabcbb"
# @param {String} s
# @return {Integer}
#* LEARN => ij i j i-j dp
require 'set'
#* MY SOL
def length_of_longest_substring(s)
  chars_seen = Set.new
  max_length = 0
  start = 0
  
  (0...s.length).each do |end_index|
      while chars_seen.include?(s[end_index])
          chars_seen.delete(s[start])
          start += 1
      end
      
      chars_seen.add(s[end_index])
      max_length = [max_length, end_index - start + 1].max
  end
  max_length
end
p length_of_longest_substring(s)

#* PUTS
def length_of_longest_substring(s)
    chars_seen = Set.new
    max_length = 0
    start = 0
    
    (0...s.length).each do |end_index|
        puts "Current character: #{s[end_index]} | full (s[#{start} .. #{end_index}]): \n #{s[start..end_index]}"
        while chars_seen.include?(s[end_index])
            puts "Removing character: #{s[start]}"
            chars_seen.delete(s[start])
            start += 1
        end
        
        puts "Adding character: #{s[end_index]}"
        chars_seen.add(s[end_index])
        max_length = [max_length, end_index - start + 1].max
        puts "Current maximum length: #{max_length}"
        puts "---"
    end
    
    max_length
end

#s2 = "bbbbb"
#s3 = "pwwkew"

p length_of_longest_substring(s)  # Output: 3
#p length_of_longest_substring(s2)  # Output: 1
#p length_of_longest_substring(s3)  # Output: 3

#* MY SOL | MODIFY QUESTION TO RETURN ARRAY
def length_of_longest_substring(s)
  chars_seen = Set.new
  old_max = max_length = 0
  start = 0
  res=[]
  
  (0...s.length).each do |end_index|
      old_max = max_length
      puts "Current character: #{s[end_index]} | full (s[#{start} .. #{end_index}]): \n #{s[start..end_index]}"
      while chars_seen.include?(s[end_index])
          puts "Removing character: #{s[start]}"
          chars_seen.delete(s[start])
          start += 1
      end
      
      puts "Adding character: #{s[end_index]}"
      chars_seen.add(s[end_index])
      max_length = [max_length, end_index - start + 1].max
      puts "Current maximum length: #{max_length}"
      puts "---"

      if max_length > old_max
        puts "ML increased! #{chars_seen}"
        res = chars_seen.to_a
      end

  end
  p res
  max_length
end
p length_of_longest_substring(s)


#*WORKING. . . 
#*
def length_of_longest_substring(s)
  len = s.length
  (len).times do |i|
    (i...len).each do |j|
      p s[i..j]
      #p s[i..j].max(2)
      p "#{s[i]} <=> #{s[j]}"
      #p "#{height}"
    end
  end
end
#p length_of_longest_substring(s)


def display_combinations(height)
  len = height.length
  (len).times do |i|
    (i...len).each do |j|
      p height[i..j]
      p height[i..j].max(2)
      p "#{height[i]} | #{height[j]}"
      #p "#{height}"
    end
  end
end

height = [1, 2, 3, 4]
#p display_combinations(height)
#* . . . . . . . . . . . . . .


#* INTERESTING SOL
def length_of_longest_substring(s)
  char_map = {}
  max_length = 0
  start_index = 0

  s.each_char.with_index do |char, end_index|
    if char_map.key?(char) && char_map[char] >= start_index
      start_index = char_map[char] + 1
    end

    char_map[char] = end_index
    max_length = [max_length, end_index - start_index + 1].max
  end

  max_length
end
p length_of_longest_substring(s)