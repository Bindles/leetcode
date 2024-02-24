# @param {Integer[]} heights
# @param {Integer} bricks
# @param {Integer} ladders
# @return {Integer}
def furthest_building(heights = [4,2,7,6,9,14,12], bricks = 5, ladders = 1)
  (0...heights.size).each do |i|
    if i < heights.size - 1
      p "#{heights[i]} vs #{heights[i+1]}" 
      if heights[i] < heights[i+1] && ((bricks >= heights[i+1]-heights[i]) || (ladders >= heights[i+1]-heights[i]))
        p "need bricks or ladders => #{bricks} #{ladders}"
        bricks -= heights[i+1]-heights[i]
        p "remaining bricks and ladders => #{bricks} #{ladders}"
          if bricks < heights[i+1]-heights[i]
            ladders -= 1
            p "ladder used"
            p ladders
          end

      end

    end
  end
end

p furthest_building

heights = [4, 8, 2, 6, 6, 9, 14, 12]

max_increase = heights.each_cons(2).map { |a, b| b - a }.max
max_increase_index = heights.each_cons(2).map { |a, b| b - a }.index(max_increase) + 1

puts "Number with the highest increase from the previous number: #{heights[max_increase_index]}"
puts "Highest increase: #{max_increase}"



heights = [4, 8, 2, 7, 6, 9, 14, 12]

max_gap_numbers = heights.each_cons(2).max_by { |a, b| b - a }

puts "Numbers with the biggest gap between them: #{max_gap_numbers.join(',')}"
p max_gap_numbers.max

p heights.index(14)

heights = [4, 8, 2, 6, 6, 9, 14, 12,14]

max_increase_index = heights.each_cons(2).each_with_index.max_by { |(a, b), index| b - a }

puts "Index of the number with the biggest increase: #{max_increase_index}"

p heights.find {|a| a + 1 == 9}


# Using a block to find maximum length string
strings = ["apple", "bananp", "oran"]
puts strings.max_by(1) { |str| str.count("p") }# Output: "banana"

p maximum = heights.max_by { |element| element }
p t = heights.select { |element| element == maximum }

p heights.max_by { |element| element }


#index

nums = [1, 2, 3, 6, 4]
indices_of_even_numbers = nums.each_with_index.map {|num, index| index if num.even?}

puts indices_of_even_numbers.inspect

indices_of_even_numbers = nums.each_with_index.select {|num, index| index if num.even?}

puts indices_of_even_numbers.inspect

indices_of_even_numbers = nums.select.with_index {|num, index| index if num.even?}

puts indices_of_even_numbers.inspect

p nums.select(&:odd?)


nums = [1, 2, 3, 4,7,8]
selected_indices = nums.select { |num| num > 2 }.map { |num| nums.index(num) }

puts selected_indices.inspect

module Enumerable
  def custom_maxi(&block)
    max_increase = nil
    max_pair = [nil, nil]

    each_cons(2) do |prev, curr|
      increase = block_given? ? block.call(curr) - block.call(prev) : curr - prev
      
      if max_increase.nil? || increase > max_increase
        max_increase = increase
        max_pair = [prev, curr]
      end
    end

    [max_pair, max_increase]
  end
end


n = [1, 4, 6, 12, 4, 14, 7, 2, 1]
p n.custom_maxi



pair, increase = n.custom_maxi

puts "Pair with maximum increase in squares: #{pair}, Increase: #{increase}"

# p n.each_cons(2).max_by { |prev, curr| curr - prev }
# [max_pair, max_pair[1] - max_pair[0]]

p max_pair = n.each_cons(2).max_by { |prev, curr| curr - prev }
p [max_pair, max_pair[1] - max_pair[0]]

p n.each_cons(2).max_by{_2 - _1}.reduce(:-)
p n.each_cons(2).max_by{_2 - _1}.reverse.reduce(:-)
p max_pair = n.each_cons(2).with_index.max_by { |(prev, curr), index| curr - prev }
#p max_pair = n.each_cons(2).with_index.max_by{_2 - _1}

max_pair = n.each_cons(2).with_index.max_by { |(prev, curr), index| curr - prev }
puts max_pair.inspect  # Output: [[4, 14], 5]

# Using shorthand notation
max_pair = n.each_cons(2).with_index.max_by { |pair, index| pair[1] - pair[0] }
puts max_pair.inspect  # Output: [[4, 14], 5

# max_pair = n.each_cons(2).with_index.max_by {_1[0] - _1[1]}
# puts max_pair.inspect  # Output: [[4, 14], 5

# # Using shorter notation with _1 and _2
# max_pair = n.each_cons(2).with_index.max_by { |pair, index| pair[_2] - pair[_1] }
# puts max_pair.inspect  # Output: [[4, 14], 5

total=0
costs=[]
 heights = [4,2,7,6,9,14,12]
 bricks = 5
 ladder=1
 heights.each_cons(2) do |a,b| 
  puts "#{a} #{b} #{a-b}"
 end

 heights.each_cons(2).with_index do |a,ind|
  if bricks > 0
  puts "#{a[0]} #{a[1]} #{a[1]-a[0]} #{total} | #{ind} | #{bricks} | #{bricks>0} | #{ladder}"
    if (a[1]-a[0]) > 0
      p costs << (a[1]-a[0])
      total+= (a[1]-a[0])
      bricks-=(a[1]-a[0])
    end
  elsif ladder > 0
    bricks+= costs.max
    ladder-=1
  end
 end

 p heights.each_cons(2) {|a,b|b-a }