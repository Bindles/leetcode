#* 1769. Minimum Number of Operations to Move All Balls to Each Box
boxes = "110"
# @param {String} boxes
# @return {Integer[]}
#* MY SOL | SLOW
def min_operations(boxes)
    n = boxes.size
    result = Array.new(n, 0)
    
    boxes.chars.each_index do |i|
      if boxes[i] == "1"
        (0...n).each do |j|
          next if j == i
          result[j] += (i - j).abs
        end
      end
    end
    result
end
p min_operations(boxes)
  
#* FAST SOL | 88 MS
def min_operations(boxes)
    n = boxes.size
    left_count = 0
    right_count = boxes.count("1")
    total = 0
    res = []

    n.times do |i|
        total = total + i if boxes[i] == '1'
    end
    res.push(total)
    (1...n).each do |i|
        if(boxes[i - 1] == "1")
            left_count = left_count + 1
            right_count = right_count - 1
        end
        total = total + left_count - right_count
        res.push(total)
    end
    res
end
p min_operations(boxes)