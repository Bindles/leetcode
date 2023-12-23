# @param {String} path
# @return {Boolean}
def is_path_crossing(path)
    x, y = 0, 0
    visited = []

    visited << [x, y].to_s
    puts "Initial position: #{[x, y]}"

    path.each_char do |dir|
        case dir
        when 'N'
            y += 1
        when 'S'
            y -= 1
        when 'E'
            x += 1
        when 'W'
            x -= 1
        end

        current_position = [x, y].to_s
        puts "Current position: #{current_position}"

        if visited.include?(current_position)
            puts "Path crossing detected!"
            return true
        end

        visited << current_position
        puts "Marked position as visited: #{current_position}"
    end

    puts "No path crossing found."
    false
end

# Example usage:
path = "NES"
result = is_path_crossing(path)
puts "Result: #{result}"
