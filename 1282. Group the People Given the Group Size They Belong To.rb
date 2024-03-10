#*1282. Group the People Given the Group Size They Belong To
#*LEARN => zip group_by map transpose each_slice hash to_a array
# @param {Integer[]} group_sizes
# @return {Integer[][]}
#* HELL YES
def group_the_people(group_sizes = [3, 3, 3, 3, 3, 1, 3])
  group_sizes.zip(0..).group_by(&:first).map{|group,indices| indices.transpose.last.each_slice(group).to_a}.sum([])
end
p group_the_people

#*2
def group_the_people(group_sizes = [3, 3, 3, 3, 3, 1, 3])
  groups = group_sizes.each_with_index.group_by {|value, index| value}.transform_values { |value| value.map(&:last) }
  result = []
  groups.each {|k, v| v.each_slice(k) {|a| result << a}}
  result
end
p group_the_people

#* LEARN => ZIP
arr=[1,2,3]
array=[11,12,13]
p arr.zip(array)

names = ["Mary", "John", "Emma"]
heights = [180, 165, 170]

p names.zip(heights).sort_by{ |k,v| -v}
