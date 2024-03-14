#* 1493. Longest Subarray of 1's After Deleting One Element
nums = [0,1,1,1,0,1,1,0,1]
# @param {Integer[]} nums
# @return {Integer}
def generate_heavy_test_input(size)
    nums = []
    size.times do |i|
      nums << (i % 2 == 0 ? 1 : 0)
    end
    nums
end
  
  # Generate a heavy test input of size 10^6
  test_input = generate_heavy_test_input(10**6)
  p test_input
  
