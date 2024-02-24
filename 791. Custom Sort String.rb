# @param {String} order
# @param {String} s
# @return {String}

#1-a | SHORT
def custom_sort_string(order, s)
    order = order.split('').select{|char| s.include?(char)}.map{|char|char * s.count(char)}.join('')
    s = s.split('').reject{|char| order.include?(char)}.join('')
    order+s
end

#1-b | COMMENTS
def custom_sort_string(order, s)
    # Split the order string into an array of characters,
    # select only those characters that are present in the string s,
    # and join them back into a single string.
    order = order.split('').select { |char| s.include?(char) }.map { |char| char * s.count(char) }.join('')
    
    # Split the string s into an array of characters,
    # reject those characters that are present in the ordered string,
    # and join the remaining characters back into a single string.
    s = s.split('').reject { |char| order.include?(char) }.join('')
    
    # Concatenate the ordered string and the remaining string,
    # and return the result.
    order + s
end

#1-c | PUTS
def custom_sort_string(order, s)
    order = order.split('').select { |char| s.include?(char) }.map { |char| char * s.count(char) }.join('')
    p "Sorted order string: #{order}"
    s = s.split('').reject { |char| order.include?(char) }.join('')
    p "Sorted input string: #{s}"
    order + s
end


#*******

# @param {String} order
# @param {String} str
# @return {String}

def custom_sort_string(order, s)
    s.chars.sort_by(&order.chars.each_with_index.to_h.tap{_1.default=123}).join  
end

def custom_sort_string(order, str)
    chars_count = str.chars.tally
    result = order.chars.map { |char| char * (chars_count.delete(char) || 0) }.join
    result + chars_count.map { |char, count| char * count }.join
end



