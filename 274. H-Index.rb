# @param {Integer[]} citations
# @return {Integer}
def h_index(citations = [100])
  arr=[]
  citations.each do |i|
    p i
    p a =citations.count{ _1 >= i}
    arr << [i, a] if i[1] >= i[0]

  end
  p arr[0]
  p arr[0][1] >= arr[0][0]
  p arr.each {|x| p "#{x[0]} #{x[1]}" }
  p arr.each {|x| p "#{x[1] >= x[0]}" }
  p arr.max_by{ _1[0]}

  p 'aa'
  highest_subarray = arr.select { |subarray| subarray[1] >= subarray[0] }.max_by { |subarray| subarray[0] }
  puts highest_subarray.inspect
  
  p 'bb'
  p arr.select { |subarray| subarray[1] >= subarray[0] }.max_by { |subarray| subarray[0] } || 1

end
p h_index


def h_index(citations = [3,0,6,1,5])
  arr=[]
  citations.each do |i|
    p i
    p a =citations.count{ _1 >= i}
    arr << [i, a] if i[1] >= i[0]
  end

  p h_index = arr.select { |subarray| subarray[1] >= subarray[0] }.max_by { |subarray| subarray[0] }
  h_index[0]
end
p h_index[0]

subarrays = [[3, 3], [0, 5], [6, 1], [7, 8], [5, 5]]

p 'a'
highest_subarray = subarrays.select { |subarray| subarray[1] >= subarray[0] }.max_by { |subarray| subarray[0] }
puts highest_subarray.inspect