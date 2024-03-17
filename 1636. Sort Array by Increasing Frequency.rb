#* 1636. Sort Array by Increasing Frequency
nums = [-1,1,-6,4,5,-6,1,4,1]
# @param {Integer[]} nums
# @return {Integer[]}
def frequency_sort(nums)
    nums.sort_by{|num| nums.count(num)}
end
p frequency_sort(nums)

# @param {Integer[]} nums
# @return {Integer[]}
def frequency_sort(nums)
    # First thing is we need to get the frequency, probably by building a hash.
    nums_hash = nums.tally

    # Then we need to sort the array by frequency but apply a secondary sort based on value for the tie-breaker.
    nums.sort_by{|a| [nums_hash[a], -a]}
end
p frequency_sort(nums)

def frequency_sort(nums)
    tally = nums.tally
    nums.sort_by{|x| [tally[x], -x]}
end
p frequency_sort(nums)


#*SORT


words = ["banana", "apple", "cherry", "pear", "apricot", "blueberry"]
p sorted_words = words.sort_by { |word| [word.length, word] }
# Output: ["pear", "apple", "banana", "cherry", "apricot", "blueberry"]
p sorted_words = words.sort_by { |word| [word.length.odd? ? 0 : 1, word] }



p numbers = [5, 12, 7, 8, 3, 10]
p numbers.sort_by { |num| num.odd? ? 0 : 1}
p numbers.sort_by { |num| [num.odd? ? 0 : 1, num] }
p numbers.sort_by { |num| [num.odd? ? 0 : 1, -num] }
#p number.sort {|x| x % 2 == 0}

#sorted_numbers = numbers.sort_by { |num| [num.even?, num] }
#puts sorted_numbers.inspect
# Output: [3, 5, 7, 8, 10, 12]

# Output: [3, 5, 7, 8, 10, 12]