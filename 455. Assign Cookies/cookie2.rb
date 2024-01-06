def find_content_children(g = [1,2,3], s = [1,1])
  i=0
  result=0
  g.sort!
  s.sort!
    s.each.with_index do |eachs,sindex|
      p "comparing #{eachs} vs #{g[i]}"
      if g[i] && g[i] <= eachs
        p "#{g} - #{g[i]} (ind #{i})"
        result+=1 and
        g.delete_at(i)
        p g
      else
        i+=1 if i < g.length
      end
      p result
      
  
    end
  return result
end


def find_content_children(g = [1,2,3], s = [1,1])
  i=0
  result=0
  g.sort!
  s.sort!
    s.each.with_index do |eachs,sindex|
      if g[i] && g[i] <= eachs
        result+=1 and
        g.delete_at(i)

      else
        i+=1 if i < g.length
      end
      p result
      
  
    end
  return result
end



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