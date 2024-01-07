# @param {String} s
# @return {Integer}
def max_length_between_equal_characters(s = "abca")
  s = "abcd"
  current_char = "empty"
  x=0
  i=0
  current_char="empty"
  larr=[]

  s.each_char do |char|
    p "#{char} #{current_char}"
    if current_char != "empty"
        p "ne"
        if current_char == char
            larr << x
            x = 0
        elsif current_char != char
            p "not curr char"
            p x
            p "=>"
            x += 1
            p x
        end
    else
    current_char =  char
    end
    p x
    p larr
    
  end
end


max_length_between_equal_characters