#* 2194. Cells in a Range on an Excel Sheet
s = "K1:L2"
# @param {String} s
# @return {String[]}
#* MY SOLUTION
def cells_in_range(s)
  res = (s[0].ord..s[3].ord).flat_map do |c|
    (s[1].to_i..s[4].to_i).map do |r|
      "#{c.chr}#{r}"
    end
  end
  res
end
p cells_in_range(s)


#* INTERSTING SOL OTHERS
#*
def cells_in_range(s)
  x = s.split(":")
  output = []
  for letter in x[0][0]..x[1][0] do
    for number in x[0][1]..x[1][1] do
      output.push("#{letter}#{number}")
    end
  end
  output
end
