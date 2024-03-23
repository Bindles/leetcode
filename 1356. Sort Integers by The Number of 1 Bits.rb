#* 1356. Sort Integers by The Number of 1 Bits
arr = [0,1,2,3,4,5,6,7,8]
# @param {Integer[]} arr
# @return {Integer[]}
#* MY SOL
def sort_by_bits(arr)
  arr.sort_by{|num| [ num.to_s(2).count('1'), num ]}
end

#* A SOL
def sort_by_bits(arr)
  arr.sort.sort_by{|num|num.to_s(2).count('1')}
end