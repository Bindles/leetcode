#* 11. Container With Most Water
height = [1,8,6,2]
# @param {Integer[]} height
# @return {Integer}
#* LEARN => ij i j i-j dp
#* MY SOL
def max_area(height)
  max_water=0
  left = 0
  right = height.length - 1

  while left < right
    width = right - left
    h = [height[left], height[right]].min
    max_water = [max_water, width * h].max

    if height[left] < height[right]
      left += 1
    else
      right -= 1
    end
  end
  max_water
end
p max_area(height)

#* WORKING. . .
#*
def max_area(height)
  height.each_with_index do |h,i|
    (i+1).times do |j|
      p h, j
    end
  end
end

#*
def max_area(height)
  height.each_with_index do |h, i|
    (height.size - i).times do |j|
      print "#{height[j + i]},"
    end
    puts
  end
end

height = [1, 8, 6, 2, 5, 4, 8, 3, 7]
p max_area(height)




def display_combinations(height)
  (0...height.length).each do |i|
    (i...height.length).each do |j|
      p height[i..j]
    end
  end
end
# height = [1, 2, 3, 4]
display_combinations(height)

def display_combinations(height)
  len = height.length
  (len).times do |i|
    (i...len).each do |j|
      p height[i..j]
      p height[i..j].max(2)
      p "#{height[i]} | #{height[j]}"
      p "#{height}"
    end
  end
end
# height = [1, 2, 3, 4]
display_combinations(height)

def display_combinations(height)
  len = height.length
  (len).times do |i|
    (i...len).each do |j|
      p height[i..j]
      p height[i..j].max(2)
      p "#{height[i]} | #{height[j]}"
      #p "#{height}"
    end
  end
end

height = [1, 2, 3, 4]
display_combinations(height)
#* . . . . . . . . . . . . . . .

#* TEST
p height[0..2]