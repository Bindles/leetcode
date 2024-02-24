# @param {Integer[]} heights
# @param {Integer} bricks
# @param {Integer} ladders
# @return {Integer}
def furthest_building(heights = [4,2,7,6,9,14,12], bricks = 5, ladders = 1)

  max_pair = heights.each_cons(2).with_index.max_by{ |pair, index| pair[1] - pair[0] }
  p max_pair
  p max_pair[0][1]
  (0...heights.size).each do |i|
    if i < heights.size - 1

        
      p "#{heights[i]} vs #{heights[i+1]}"
      if heights[i] < heights[i+1] && ((bricks >= heights[i+1]-heights[i]) || (ladders >= heights[i+1]-heights[i]))
        p "need bricks or ladders => #{bricks} #{ladders}"
        p  heights[i] =  max_pair[0][1]
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

