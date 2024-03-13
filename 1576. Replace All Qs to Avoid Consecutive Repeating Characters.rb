#* 1576. Replace All ?'s to Avoid Consecutive Repeating Characters
s = "ubv?w"
# @param {String} s
# @return {String}
#* SOL
def modify_string(s)
    return 'a' if s == '?'
    
    s.chars.each_with_index do |char, i|
      if char == '?'
        candidates = ('a'..'c').to_a - [s[i - 1], s[i + 1]]
        s[i] = candidates.first
      end
    end

    if s[-1] == '?'
      candidates = ('a'..'b').to_a - [s[-2]]
      s[-1] = candidates.first
    end
    s
end
p modify_string(s)

