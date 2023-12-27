array = [2,3,6,7]

# Iterate over the array using two nested loops
(0..array.length-3).each do |i|
  (i + 1..array.length - 1).each do |j|
    puts "#{array[i]} plus #{array[j]}"
    # , array[i]
    # p array[i] + array[j]
  end
end

p '--'


array.combination(2).each do |pair|
  p pair
  p "= #{pair[0]+pair[1]}"
  #p "#{pair[0]} #{pair[1]}"
  
end

p '--'

i=2
for i in i..array.length
  array.combination(i).each do |pair|
  p pair
  end
  
end

p '--'

i=2
for i in i..array.length
  array.combination(i).each do |pair|
  p pair
  p pair.sum
  end
  
end

p '--'

array.combination(array.length-1).each do |pair|
  #p "#{pair[0]} #{pair[1]}"
  p pair
end

