#* 1619. Mean of Array After Removing Some Elements
arr = [6,0,7,0,7,5,7,8,3,4,0,7,8,1,6,8,1,1,2,4,8,1,9,5,4,3,8,5,10,8,6,6,1,0,6,10,8,2,3,4]
# @param {Integer[]} arr
# @return {Float}
#* SOL 2 | CONCISE
def trim_mean(arr)
    arr.sort!
    remove_count = arr.length / 20
    trimmed_arr = arr[remove_count...-remove_count]
    return trimmed_arr.sum / trimmed_arr.length.to_f
end
p trim_mean(arr)

#* SOL 1 | ORIG
def trim_mean(arr)
    multiplier = arr.length / 20
    maxes = arr.max(multiplier)
    mins = arr.min(multiplier)

    maxes.each do |num|
      arr.delete_at(arr.index(num))
    end

    mins.each do |num|
      arr.delete_at(arr.index(num))
    end
    arr.sum.to_f / arr.length.to_f
end
p trim_mean(arr)

p '-'
#* SOL 1.1 | PUTS
def trim_mean(arr)
    p arr
    p arr.length
    p multiplier = arr.length / 20

    maxes = arr.max(multiplier)
    mins = arr.min(multiplier)
    
    p arr[35]
    p arr[28]
    p arr[10]

    maxes.each do |num|
    p arr.delete_at(arr.index(num))
    end

    mins.each do |num|
        p arr.delete_at(arr.index(num))
    end

    p arr.length
    p arr.sum.to_f / arr.length.to_f
end
p trim_mean(arr)



#* WORKING..
# def trim_mean(arr)
#     p arr
#     p arr.length
#     p multiplier = arr.length / 20
#     p arr.max(multiplier)

#     # Get the indices of the two maximum numbers
#     p max_indices = arr.each_with_index.max(multiplier).map(&:last)

    
#     # Get the indices of the two minimum numbers
#     min_indices = arr.each_with_index.min(multiplier).map(&:last)
    

#     p arr[35]
#     p arr[28]
#     p arr[10]

#     # Delete elements by index
#     max_indices.each do |index|
#     arr.delete_at(index)
#     end

#     min_indices.each do |index|
#         arr.delete_at(index)
#         end
#     p arr.length
#     p arr.sum.to_f / arr.length.to_f
# end
# p trim_mean(arr)


#* TEST
p arr = [1,3,2,44,5,44]
p arr.delete_at(arr.index(44))
p arr