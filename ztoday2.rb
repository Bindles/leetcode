a = %w[2, 3, 1, 4]
p a
i=3
sorted_a = a.sort_by { |xx| -(xx.include?(i.to_s) ? 1 : 0); }
puts sorted_a.inspect
# Output: [2, 4, 1, 3]


a.each do |aa|
  p aa
  p aa.include?("1")
end
