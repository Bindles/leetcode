#* 2389. Longest Subsequence With Limited Sum
nums = [4,5,2,1]
queries = [3,10,21]
# @param {Integer[]} nums
# @param {Integer[]} queries
# @return {Integer[]}
#* SOL
def answer_queries(nums, queries)
    nums = nums.sort!.reduce([]) {|res,val| res << (res.last || 0) + val }
    queries.reduce([]){|res,query|res << (nums.bsearch_index{|val|val>query}||nums.size)}
end
p answer_queries(nums,queries)

#* INTERESTING OTHER PPL SOL
def answer_queries(nums, queries)
    sum_arr = sum_arr_of_sorted_arr(nums)
    
    queries.map { |num| find_index_greater_than(num, sum_arr) }
end

def find_index_greater_than(num, arr)
arr.bsearch_index {|val| val > num} || arr.size
end

def sum_arr_of_sorted_arr(arr)
arr.sort.each_with_object([]) { |num, sum_arr| sum_arr << (sum_arr.last || 0) + num }
end
p answer_queries(nums,queries)