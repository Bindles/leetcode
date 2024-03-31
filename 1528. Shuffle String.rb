#* 1528. Shuffle String
s = "codeleet"; indices = [4,5,6,7,0,2,1,3]
# @param {String} s
# @param {Integer[]} indices
# @return {String}
#* SOL 2
def restore_string(s, indices)
  indices.map.with_index { |index, i| s[indices.index(i)] }
end
p restore_string(s, indices)


#*SOL 1 | ORIG | JAN 8
def restore_string(s, indices)
  arr=Array.new(indices.length)
  s.each_char.with_index do |c,i|
      arr[indices[i]]=c 
  end
  return arr.join
end
p restore_string(s, indices)


#* WORKING . . . |DOESNT WORK|
def restore_string(s, indices)
  indices.map.with_index{|num,index| s[num]}
end
p restore_string(s, indices)