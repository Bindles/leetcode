#* 2053. Kth Distinct String in an Array
arr = ["d","b","c","b","c","a"]
k = 2
# @param {String[]} arr
# @param {Integer} k
# @return {String}
#* MY SOL 1
def kth_distinct(arr, k)
  count_hash = arr.tally
  count_hash.delete_if { |_elem, count| count > 1 }
  count_hash.keys.to_a[k-1] || ""
end
p kth_distinct(arr, k)

#* MY SOL 1 | PUTS
def kth_distinct(arr, k)
  count_hash = arr.tally
  count_hash.delete_if { |_elem, count| count > 1 }
  p count_hash
  p count_hash.keys.to_a
  count_hash.keys.to_a[k-1]
end
p kth_distinct(arr, k)

#* MY SOL 2
def kth_distinct(arr, k)
  count_hash = arr.tally
  selected_elements = count_hash.select { |_elem, count| count < 2 }.keys
  return selected_elements[k-1] || ""
end
p kth_distinct(arr, k)


#* WORKING | NO PASS. . .
def kth_distinct(arr, k)
  arr_set = arr.to_set
  count = 0

  arr_set.each do |elem|
    p elem
    count += 1
    return elem if count == k
  end

  nil  # Return nil if k is out of range
end

