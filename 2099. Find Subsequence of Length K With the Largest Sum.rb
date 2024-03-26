#* 2099. Find Subsequence of Length K With the Largest Sum
nums = [2,1,3,3]
k = 2
#* LEARN => each_slice each_cons map slice i..k array slice sum max
# @param {Integer[]} nums
# @param {Integer} k
# @return {Integer[]}
#*YET TO SOLVE LOL SOLVED IT WRONG

#* 1
def max_subsequence(nums, k)
    nums.each_slice(k).max_by { |sub| sub.sum }
end
p max_subsequence(nums, k)

#* 2
def max_subsequence(nums, k)
    nums.sort_by{|x|-x}.take(k)
end
p max_subsequence(nums, k)

#* 3
def max_subsequence(nums, k)
    nums.each_cons(k).max_by { |sub| sub.sum }
end
p max_subsequence(nums, k)


#* 4 | YIELD SELF
def max_subsequence(nums, k)
    nums.each_index.max_by { |i| nums[i, k].sum }.yield_self {|sub| nums[sub, k]}
end
p max_subsequence(nums, k)

#* 4.1 | WRITTEN OUT
def max_subsequence(nums, k)
    max_subarray_index = nums.each_index.max_by { |i| nums[i, k].sum }
    nums[max_subarray_index, k]
end
p max_subsequence(nums, k)


#* DID WRONG.....
def max_subsequence(nums, k)
    sum=0
    nums.each_index do |i,ind|
        sum=[nums[i, k].sum, sum].max 
    end
    sum
end
p max_subsequence(nums, k)



def max_subsequence(nums, k)
    nums.each_index.map { |i| nums[i, k].sum }.max
end
def max_subsequence(nums, k)
    nums.each_index.map { |i| nums[i, k] if nums[i, k].sum }.max
end
def max_subsequence(nums, k)
    nums.each_cons(k).map(&:sum).max
end
p max_subsequence(nums, k)
#*..............................


def max_subsequence(nums, k)
    max_subarray = nums.max_by(k) { |subarray| subarray.sum }
    max_subarray
end



p 'OLD'
#*OLD
def max_subsequence(nums, k)
    nums.each_slice(k).map { |sub| sub.sum }.max
end
p max_subsequence(nums, k)
def max_subsequence(nums, k)
    nums.each_slice(k).map(&:sum).max
end
p max_subsequence(nums, k)

def max_subsequence(nums, k)
    nums.each_cons(k).map { |sub| sub.sum }.max
end
p max_subsequence(nums, k)
def max_subsequence(nums, k)
    nums.each_cons(k).map(&:sum).max
end


# @param {Integer[]} nums
# @param {Integer} k
# @return {Integer[]}
def max_subsequence(nums, k)
    # create a sorted variant of nums.
    sorted_nums = nums.sort

    # Place 3 highest value elements in hash with frequency.
    #hash = Hash.new(0)
    hash = sorted_nums[nums.size - k..-1].tally.to_a
    p hash
    p hash.to_a

    # Use hash to create answer array which essentialls is the 3 highest
    # value elements from sorted_nums but in the original order it appears in nums.
    answer = []
    nums.each do |num|
        if hash[num]
            p 'a'
            if hash[num] > 0
                hash[num] -= 1
                answer << num
            end
        else
            break
        end
    end

    answer
end
p max_subsequence(nums, k)
  
