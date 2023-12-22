#28. Find the Index of the First Occurrence in a String
# @param {String} haystack
# @param {String} needle
# @return {Integer}
def strstr(haystack, needle)
    if haystack.include?(needle)
        p haystack.index(needle)
        return haystack.index(needle)
    else
        return -1
    end
end


# @param {String} haystack
# @param {String} needle
# @return {Integer}
def str_str(haystack, needle)
  haystack.include?(needle) ?  haystack.index(needle) : -1
end

strstr("sadbutsad", "sad")

#training 028 index 1st occ
#puts length_of_last_word("Hello World")

def strstr(n, h)
  p n
  p h
  p n.index(h)
  n.each_char do |i|
    puts i
  end
end

