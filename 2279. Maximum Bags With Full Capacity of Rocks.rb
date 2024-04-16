#* 2279. Maximum Bags With Full Capacity of Rocks
capacity = [2,3,4,5]; rocks = [1,2,4,4]; additional_rocks = 2
#capacity = [2,3,8,7]; rocks = [1,2,4,4]; additional_rocks = 2
#*LEARN ZIP ARRAYS TO HASH SORT_BY SORT BY RANGE SORT_BY RANGE
#* SORT RANGE x.sort_by
#* HIGHEST{|a| a[0] - a[1]} LOWEST{|a| a[1] - a[0]}
# @param {Integer[]} capacity
# @param {Integer[]} rocks
# @param {Integer} additional_rocks
# @return {Integer}
#* MY SOL
def maximum_bags(capacity, rocks, additional_rocks)
  x = rocks.zip(capacity)
  x.sort_by! {|a| a[1] - a[0]}
  x.each_with_index do |ea, i|
    if ea[0] < ea[1] && additional_rocks >= (ea[1] - ea[0])
      additional_rocks -= (ea[1] - ea[0])
      ea[0] += (ea[1] - ea[0])
    else
      next
    end
  end
  x.count{|a,b| a==b}
  
end
p maximum_bags(capacity, rocks, additional_rocks)
#* OR | return
#* x.count{|pair| pair.first == pair.last}

#* MY SOL | PUTS
def maximum_bags(capacity, rocks, additional_rocks)
  x = rocks.zip(capacity)
  p x
  p x.sort_by {|a| a[1] - a[0]}
  x.each_with_index do |ea, i|
    if ea[0] < ea[1] && additional_rocks >= (ea[1] - ea[0])
      additional_rocks -= (ea[1] - ea[0])
      ea[0] += (ea[1] - ea[0])
    else
      next
    end
  end
  p x.map{|a,b| a==b}
  p x.map{|a,b| 1 if a==b}.compact.sum
end
p maximum_bags(capacity, rocks, additional_rocks)

#* MISC/TEST
arr1 = [1, 3]
arr2 = [2, 4]

result = arr1.zip(arr2).flatten
puts result.inspect  # Output: [1, 2, 3, 4]

resul = rocks.zip(capacity).flatten
puts resul.inspect  # Output: [1, 2, 3, 4]