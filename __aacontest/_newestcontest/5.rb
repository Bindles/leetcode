def minimum_distance(points)
  n = points.length
  points.map! { |x, y| [x + y, x - y] }
  points.sort!
  xs = SortedSet.new(points.map(&:first))
  ys = SortedSet.new(points.map(&:last))
  res = Float::INFINITY
  points.each do |x, y|
    xs.delete(x)
    ys.delete(y)
    res = [res, [xs.max - xs.min, ys.max - ys.min].max].min
    xs.add(x)
    ys.add(y)
  end
  res
end
