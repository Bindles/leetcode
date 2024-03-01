array = [1, 2, 3, 4, 5]
result = []

array.each_with_index do |_, index|
  p array[0..index]
end

array.each_with_index do |_, index|
  result << array[0..index]
end

result.each { |subarray| p subarray }
