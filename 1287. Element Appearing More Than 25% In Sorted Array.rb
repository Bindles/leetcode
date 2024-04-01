#* 1287. Element Appearing More Than 25% In Sorted Array
arr = [1,2,2,6,6,6,6,7,10] #Output: 6
# @param {Integer[]} arr
# @return {Integer}
def find_special_integer(arr)
    arr.find{|num| arr.count(num) > (arr.size / 4)}
end
p find_special_integer(arr)

def find_special_integer(arr)
    target = (arr.size / 4)
    arr.find{|num| arr.count(num) > target }
end
p find_special_integer(arr)

def find_special_integer(arr)
    tal = arr.tally
    target = (arr.size / 4)
    tal.find{|key, val| tal[key] > target}.first
end
p find_special_integer(arr)

def find_special_integer(arr)
    p arr.group_by(&:itself).transform_values(&:size)
    p arr.tally.sort_by { |_, v| -v }[0][0]   
end
p find_special_integer(arr)

def find_special_integer(arr)
    arr.tally.sort_by { |_, v| -v }[0][0]   
end
p find_special_integer(arr)