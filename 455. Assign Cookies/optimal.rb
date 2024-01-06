#optimal-not mine:
def find_content_children(g, s)
  g.sort!
  s.sort.inject(0) {|count,size|
    break count if !g[count]
    count +=1 if size >= g[count]
    count
}
end

def find_content_children(g, s)
  g.sort!
  s.sort.reject{|size| size < g[0]}.inject(0) {|count,size|
    break count if !g[count]
    count +=1 if size >= g[count]
    count
  }
end