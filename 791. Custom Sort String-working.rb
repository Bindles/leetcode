# @param {String} order
# @param {String} s
# @return {String}

#1-a | SHORT
def custom_sort_string(order, s)
    order = order.split('').select { |char| s.include?(char) }.map { |char| char * (s.count char) }.join('')
    s = s.split('').reject { |char| order.include? char }.join('')
    
    order + s
end

#1-b | CONCISE COMMENTS|
def custom_sort_string(order, s)
    # Split the order string into an array of characters,
    # select only those characters that are present in the string s,
    # and join them back into a single string.
    order = order.split('').select { |char| s.include?(char) }.map { |char| char * (s.count char) }.join('')
    
    # Split the string s into an array of characters,
    # reject those characters that are present in the ordered string,
    # and join the remaining characters back into a single string.
    s = s.split('').reject { |char| order.include? char }.join('')
    
    # Concatenate the ordered string and the remaining string,
    # and return the result.
    order + s
end

#1-c | COMMENTS | PUTS
def custom_sort_string(order, s)
    # Display initial order and input strings
    puts "Initial order string: #{order}"
    puts "Initial input string: #{s}"
    
    # Sort the order string based on characters present in the input string
    order = order.split('').select{|char| s.include?(char) }.map{|char| char * s.count(char) }.join('')
    puts "Sorted order string: #{order}"
    
    # Sort the input string based on the sorted order string
    s = s.split('').reject{|char| order.include?(char) }.join('')
    puts "Sorted input string: #{s}"
    
    # Concatenate the sorted order and input strings to produce the final result
    result = order + s
    puts "Final result: #{result}"
    
    return result
end
#RUN
order = "cba"
s = "abcd"
puts custom_sort_string(order, s)


#1-D | PUTS
def custom_sort_string(order, s)
    puts "Initial order string: #{order}"
    puts "Initial input string: #{s}"
    
    order = order.split('').select { |char| s.include?(char) }.map { |char| char * (s.count char) }.join('')
    p "Sorted order string: #{order}"
    
    s = s.split('').reject { |char| order.include? char }.join('')
    p "Sorted input string: #{s}"
    
    result = order + s
    p "Final result: #{result}"
    return result
end

#2
def custom_sort_string(order, s)
    # Display initial order and input strings
    puts "Initial order string: #{order}"
    puts "Initial input string: #{s}"
    
    # Step 1: Sort the order string based on characters present in the input string
    ordered_chars = order.split('').select { |char| s.include?(char) }
    ordered_str = ordered_chars.map { |char| char * (s.count(char)) }.join('')
    puts "Sorted order string: #{ordered_str}"
    
    # Step 2: Sort the input string based on the sorted order string
    remaining_chars = s.split('').reject { |char| ordered_chars.include?(char) }
    remaining_str = remaining_chars.join('')
    puts "Sorted input string: #{remaining_str}"
    
    # Step 3: Concatenate the sorted order and input strings to produce the final result
    result = ordered_str + remaining_str
    puts "Final result: #{result}"
    
    return result
end

#RUN
# order = "hucg"
# s = "hucgao"
# puts custom_sort_string(order, s)


