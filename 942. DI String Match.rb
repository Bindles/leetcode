#* 942. DI String Match
s = "IDID"
# @param {String} s
# @return {Integer[]}
def di_string_match(s)
    source = (0..s.size).to_a
    res = []
    s.chars.each do |char|
        char == 'I' ? res.push(source.shift) : res.push(source.pop)
    end
    res.push(source.pop)
    res
end
p di_string_match(s)