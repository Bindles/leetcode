# @param {String} s
# @return {Integer}
def max_length_between_equal_characters(s = "xabca")
  current_char = "empty"
  x=0
  i=0
  current_char="empty"
  larr=[]

  s.each_char do |char|
        p char, "vs"
        p current_char
        x+=1 if current_char == "empty"
        next current_char = char if current_char == "empty"
        #p "ne"
        if current_char == char
            larr << x
            x = 0
        elsif current_char != char
            p "not curr char #{current_char}"
            p x
            p "=>"
            x += 1
            p x
        end
    end
    p x
    p larr
    
end

def max_length_between_equal_characters(s = "xabca")
  char_indices = {}
  max_length = -1
  
end


def max_length_between_equal_characters(s = "xabca")
  char_indices = {}
  max_length = -1

  s.each_char.with_index do |char, index|
    puts "Processing character '#{char}' at index #{index}"

    if char_indices.key?(char)
      puts "  Repeating character '#{char}' found at index #{char_indices[char]}"
      current_length = index - char_indices[char] - 1
      puts "  Current length between two equal characters: #{current_length}"
      max_length = [max_length, current_length].max
      puts "  Updated max_length: #{max_length}"
    else
      puts "  First occurrence of character '#{char}', storing its index: #{index}"
      char_indices[char] = index
    end

    puts "-----------------------------------------"
  end

  puts "Final max_length: #{max_length}"
  max_length
end

max_length_between_equal_characters


def max_length_between_equal_characters(s = "xabca")
  charmaphash = {}
  maxLen = -1

  s.each_char.with_index do |char, index|
    if charmaphash.key?(char)
      curLen = index - charmaphash[char] -1
      maxLen = [maxLen, curLen].max
    else
      charmaphash[char] = index
    end
  end
  
  return maxLen
end

max_length_between_equal_characters