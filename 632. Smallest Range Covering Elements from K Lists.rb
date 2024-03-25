#* 632. Smallest Range Covering Elements from K Lists
nums = [[4,10,15,24,26],[0,9,12,20],[5,18,22,30]]
# @param {Integer[][]} nums
# @return {Integer[]}
#* MY SOL
def smallest_range(nums)
  min_heap = MinHeap.new
  start = 0
  end_range = Float::INFINITY
  max_so_far = -Float::INFINITY

  nums.each do |list|
    min_heap.push([list[0], 0, list])
    max_so_far = [max_so_far, list[0]].max
  end

  while min_heap.size == nums.length
    num, i, list = min_heap.pop
    if end_range - start > max_so_far - num
      start = num
      end_range = max_so_far
    end

    if list.length > i + 1
      min_heap.push([list[i + 1], i + 1, list])
      max_so_far = [max_so_far, list[i + 1]].max
    end
  end

  [start, end_range]
end

class MinHeap
  def initialize
    @heap = []
  end

  def push(item)
    @heap.push(item)
    bubble_up(@heap.size - 1)
  end

  def pop
    return nil if @heap.empty?

    swap(0, @heap.size - 1)
    popped_item = @heap.pop
    bubble_down(0)
    popped_item
  end

  def size
    @heap.size
  end

  private

  def bubble_up(index)
    parent_index = (index - 1) / 2
    return if parent_index < 0 || @heap[index][0] >= @heap[parent_index][0]

    swap(index, parent_index)
    bubble_up(parent_index)
  end

  def bubble_down(index)
    left_child_index = index * 2 + 1
    right_child_index = index * 2 + 2
    min_index = index

    min_index = left_child_index if left_child_index < @heap.size && @heap[left_child_index][0] < @heap[min_index][0]
    min_index = right_child_index if right_child_index < @heap.size && @heap[right_child_index][0] < @heap[min_index][0]

    return if min_index == index

    swap(index, min_index)
    bubble_down(min_index)
  end

  def swap(i, j)
    @heap[i], @heap[j] = @heap[j], @heap[i]
  end
end


#*TIMOUT
# @param {Integer[][]} nums
# @return {Integer[]}
def smallest_range(nums)
  min_heap = []
  start = 0
  end_range = Float::INFINITY
  max_so_far = -Float::INFINITY
  
  nums.each do |num|
    min_heap << [num[0], 0, num]
    max_so_far = [max_so_far, num[0]].max
  end
  
  min_heap.sort_by! { |a| a[0] }

  while min_heap.size == nums.length
    num, i, list = min_heap.shift
    if end_range - start > max_so_far - num
      start = num
      end_range = max_so_far
    end
    
    if list.length > i + 1
      min_heap << [list[i + 1], i + 1, list]
      max_so_far = [max_so_far, list[i + 1]].max
      min_heap.sort_by! { |a| a[0] }
    end
  end
  [start, end_range]
end


#* DONT WORK TIMOUT
def smallest_range(nums)
  min_heap = []
  start = 0
  end_range = Float::INFINITY
  max_so_far = -Float::INFINITY
  
  nums.each do |num|
    min_heap << [num[0], 0, num]
    max_so_far = [max_so_far, num[0]].max
  end

  while min_heap.size == nums.length
    num, i, list = min_heap.min_by { |entry| entry[0] }
    min_heap.delete([num, i, list])
    
    if end_range - start > max_so_far - num
      start = num
      end_range = max_so_far
    end
    
    if list.length > i + 1
      min_heap << [list[i + 1], i + 1, list]
      max_so_far = [max_so_far, list[i + 1]].max
    end
  end
  [start, end_range]
end
