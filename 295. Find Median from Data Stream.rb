#* 295. Find Median from Data Stream
class MedianFinder
    def initialize()
        @arr = []
    end
=begin
    :type num: Integer
    :rtype: Void
=end
    def add_num(num)
        (i = @arr.bsearch_index { |n| num <= n })? @arr.insert(i, num) : @arr << num
    end
=begin
    :rtype: Float
=end
  def find_median
        n = @arr.size
        n.even? ? (@arr[n / 2] + @arr[n / 2 - 1]) / 2.0 : @arr[n / 2]
  end
end

# Your MedianFinder object will be instantiated and called as such:
# obj = MedianFinder.new()
# obj.add_num(num)
# param_2 = obj.find_median()