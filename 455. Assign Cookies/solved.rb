def find_content_children(g = [1,2,3], s = [1,1])
  g.sort!
  s.sort!
  i = 0
  result = 0

  s.each do |cookie_size|
    if i < g.length && cookie_size >= g[i]
      result += 1
      i += 1
    end
  end
  return result
end

p find_content_children