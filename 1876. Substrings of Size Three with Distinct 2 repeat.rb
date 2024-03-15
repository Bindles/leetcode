#* 1876. Substrings of Size Three with Distinct
s = "xyzzaz"
# @param {String} s
# @return {Integer}
def count_good_substrings(s)
    result=0
    (s.length-2).times do |i|
        substring = [s[i], s[i+1], s[i+2]].uniq
        p substring
        result +=1 if substring.length == 3
    end
    result
end
p count_good_substrings(s)