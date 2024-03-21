#* 2657. Find the Prefix Common Array of Two Arrays
a = [1,3,2,4]
b = [3,1,2,4]
# @param {Integer[]} a
# @param {Integer[]} b
# @return {Integer[]}
def find_the_prefix_common_array(a, b)
    (1..a.size).map{|i| (a[...i] & b[...i]).size}
end
p find_the_prefix_common_array(a, b)

def find_the_prefix_common_array(a, b)
  (0...b.size).map{|i| a[..i].count{|a| b[..i].include?(a)}}
end
p find_the_prefix_common_array(a, b)