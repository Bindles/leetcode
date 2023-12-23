def is_path_crossing(path)
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