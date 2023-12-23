# @param {String} haystack
# @param {String} needle
# @return {Integer}
def str_str(haystack, needle)
  puts haystack.include?(needle) ?  haystack.index(needle) : -1
end

str_str("sadbuttrue", "sad")