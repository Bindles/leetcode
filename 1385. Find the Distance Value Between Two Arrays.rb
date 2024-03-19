#* 1385. Find the Distance Value Between Two Arrays
arr1 = [4,5,8]
arr2 = [10,9,1,8]
d = 2
# @param {Integer[]} arr1
# @param {Integer[]} arr2
# @param {Integer} d
# @return {Integer}
#* SOL 1
def find_the_distance_value(arr1, arr2, d)
    count = 0
    arr1.each do |i|
        is_within_distance = false
        arr2.each do |j|
            if (i - j).abs <= d
                is_within_distance = true
                break
            end
        end
        count += 1 unless is_within_distance
    end
    count
end
p find_the_distance_value(arr1, arr2, d)

#* SOL 2 
def find_the_distance_value(arr1, arr2, d)
    arr1.count {|num| arr2.none? {|num2|(num2-num).abs <= d}}
end
p find_the_distance_value(arr1, arr2, d)

#* INTERESTING SOLUTIONS
#*
def find_the_distance_value(arr1, arr2, d)
    count = 0
    arr1.each do |num1|
      count += 1 unless arr2.any? { |num2| (num1 - num2).abs <= d }
    end
    count
end
p find_the_distance_value(arr1, arr2, d)

#*
def find_the_distance_value(arr1, arr2, d)
    arr1.count{|nums| arr2.all?{|nums2| (nums2-nums).abs > d}}
end
p find_the_distance_value(arr1, arr2, d)




#* WORKING
def find_the_distance_value(arr1, arr2, d)
    count=0
    arr1.each do |i|
        arr2.each do |j|
            p "#{i} #{j}"
            (i-j).abs <= d ? count+=1 : (p (i-j).abs)
        end
    end
    p count
end
#p find_the_distance_value(arr1, arr2, d)