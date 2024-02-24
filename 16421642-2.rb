






# @param {Integer[]} heights
# @param {Integer} bricks
# @param {Integer} ladders
# @return {Integer}
def furthest_building(heights, bricks, ladders)
  total = 0
  bricks_needed = []
  
  heights.each_cons(2).with_index do |(prev, curr), ind|
    climb = curr - prev
    
    if climb > 0
      if bricks >= climb
        bricks -= climb
        total += 1
        bricks_needed << climb
      elsif ladders > 0
        if bricks_needed.empty? || climb < bricks_needed.max
          ladders -= 1
          total += 1
        else
          if bricks_needed.max < climb
            bricks -= bricks_needed.max
            bricks_needed.delete_at(bricks_needed.index(bricks_needed.max))
            total += 1
            ladders -= 1
          end
        end
      else
        break
      end
    else
      total += 1
    end
  end
  
  total
end







#PASS
def furthest_building(heights, bricks, ladders)
  counter = 0
  used = Hash.new {0}
  
  heights.each_cons(2) do |h|
      m = h[1]-h[0]
      if m > 0
          if bricks >= m
              bricks -= m
              used[m] += 1
          elsif ladders > 0
              ladders -= 1
              max = used.keys.max
              if !max.nil? && max > m
                  bricks += (max - m)
                  if used[max] > 1
                      used[max] -= 1
                  else
                      used.delete(max)
                  end
                  used[m] += 1
              end
          else
              break;
          end
      end
      counter += 1
  end

  counter
end