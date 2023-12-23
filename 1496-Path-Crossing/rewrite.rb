def is_path_crossing(path)
  patha = path.split('')
  xy = [0, 0]
  pointslog = []
  pointslog << [0, 0]

  patha.each do |pd|
    case pd
    when 'N'
      xy[0] += 1
    when 'S'
      xy[0] -= 1
    when 'E'
      xy[1] += 1
    when 'W'
      xy[1] -= 1
    end

    return true if pointslog.include?(xy)
    pointslog << xy.dup
  end

  false
end

puts is_path_crossing("NESW")

def is_path_crossingo(path)
  xy, pointslog = [0, 0], [] << [0, 0]
  for pd in path.split('')
    case pd
    when 'N'
      xy[0] += 1
    when 'S'
      xy[0] -= 1
    when 'E'
      xy[1] += 1
    when 'W'
      xy[1] -= 1
    end
    return true if pointslog.include?(xy)
    pointslog << xy.dup
  end
  false
end

puts is_path_crossingo("NESW")