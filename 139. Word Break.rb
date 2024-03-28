#* 139. Word Break
s = "leetcode"
word_dict = ["leet","code"]
# @param {String} s
# @param {String[]} word_dict
# @return {Boolean}
#* MY SOL | CONCISE
def word_break(s, word_dict)
    len = s.length 
    words = word_dict.each_with_index.to_h
    table = Array.new(len+1, false) and table[0] = true

    (1..len).each do |i| 
        (0...i).each do |j|
            table[i] = true if words.has_key?(s[j...i]) and table[j] 
        end 
    end 
    table[len]
end
p word_break(s, word_dict)