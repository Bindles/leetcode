#* 1200. Minimum Absolute Difference
arr = [4,2,1,3]
# @param {Integer[]} arr
# @return {Integer[][]}
#* MY SOL | OPTIMIZED 
def minimum_abs_difference(arr)
    sorted_arr = arr.sort!
    min_diff = Float::INFINITY
    result = []
    (0...sorted_arr.length - 1).each do |i|
        diff = (sorted_arr[i] - sorted_arr[i + 1]).abs
        if diff < min_diff
            min_diff = diff
            result = [[sorted_arr[i], sorted_arr[i + 1]]]
        elsif diff == min_diff
            result << [sorted_arr[i], sorted_arr[i + 1]]
        end
    end
    result
end
p minimum_abs_difference(arr)

#* TIMEOUT
def minimum_abs_difference(arr)
    arr.sort!.each_cons(2).map{|pair| [pair, (pair.first - pair.last).abs]}.select{|pair| pair.last == arr.each_cons(2).map{|pair| (pair.first - pair.last).abs}.min}.map(&:first)
end
p minimum_abs_difference(arr)

def minimum_abs_difference(arr)
    arr.sort.each_cons(2).group_by{|a,b| b-a }.then{|h| h[h.keys.min] }  
end
p minimum_abs_difference(arr)


