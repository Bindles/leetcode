# @param {String} path
# @return {Boolean}
def is_path_crossing(path)
  positions = {'0,0' => true}
  x, y = 0, 0
  
  path.each_char do |char|
    x += 1 if char == 'E' 
    x -= 1 if char == 'W'
    y += 1 if char == 'N'
    y -= 1 if char == 'S'
    
    key = "#{x},#{y}"
    return true if positions[key]
    
    positions[key] = true
  end
  return false
end

def is_path_crossingd(path)
  positions = {'0,0' => true}
  x, y = 0, 0
  
  path.each_char do |char|
    p char
    x += 1 if char == 'E' 
    x -= 1 if char == 'W'
    y += 1 if char == 'N'
    y -= 1 if char == 'S'
    
    key = "#{x},#{y}"
    p key
    p positions
    return true if positions[key]
    
    positions[key] = true
  end
  return false
end

puts is_path_crossingd("NESWW")
p '----'




# @param {String} path
# @return {Boolean}
def is_path_crossing(path)
    x, y = 0, 0
    visited = Hash.new(false)

    visited[[x, y]] = true

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

        return true if visited[[x, y]]
        visited[[x, y]] = true
    end

    false
end


#DEBUG
# @param {String} path
# @return {Boolean}
def is_path_crossingd(path)
    x, y = 0, 0
    visited = Hash.new(false)
    
    visited[[x, y]] = true
    p visited
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

        current_position = [x, y]
        puts "Current position: #{current_position}"

        if visited[current_position]
            puts "Path crossing detected!"
            return true
        end

        visited[current_position] = true
        puts "Marked position as visited: #{current_position} now #{visited}"
    end

    puts "No path crossing found."
    false
end

# Example usage:
path = "NESWW"
result = is_path_crossingd(path)
puts "Result: #{result}"



#LEARN cant << an array into aray had to .dup
