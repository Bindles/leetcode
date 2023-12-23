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



#LEARN cant << an array into aray had to .dup
