#* 3122. Minimum Number of Operations to Satisfy Conditions
grid = [[1,0,2],[1,0,2]]
def minimum_operations(grid)
    colors = [0] * 10
    
    grid.transpose.each do |column|
        frequency = column.each_with_object(Hash.new(0)) { |color, counts| counts[color] += 1 }
        new_colors = Array.new(10, Float::INFINITY)
        
        (0...10).each do |color|
            convert_cost = grid.length - frequency[color]
            new_colors[color] = convert_cost + (0...10).map { |prev_color| color != prev_color ? colors[prev_color] : Float::INFINITY }.min
        end 
        colors = new_colors
        
    end
    colors.min
end
p minimum_operations(grid)