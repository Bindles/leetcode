def range_sum_bst(root = [10,5,15,3,7,18], low = 7, high = 15)
  result=[]
    root.each do |r|
      #result << r if r in 7..high
      result << r if r.between?(low,high)
    end
    result.sum
end

p range_sum_bst