#* 6. Zigzag Conversion
# @param {String} s
# @param {Integer} num_rows
# @return {String}
#*SOL 1
def convert(s = "PAYPALISHIRING", numRows = 3)
    x = (0...num_rows).to_a + (num_rows-2).downto(1).to_a
    s.chars.each_with_index.each_with_object(Array.new(num_rows) {String.new} ) {|(c, index), res|
        res[x[index % x.size]] += c
    }.sum('')
end