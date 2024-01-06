# @param {Integer[]} g
# @param {Integer[]} s
# @return {Integer}
def find_content_childrenz(g = [1,2,3], s = [1,1])
  res=[]
    p g
    p s 
    p res << g.pop
    p res
    a=[5,1,2]
    p [1,2,3].each_cons(a.size).find_index { |subarray| subarray == a }
     
end

# [1,2,3] & [1,1]
# EVAL EACH in [1,1] |sindex|
# vs
# if sindex <= gindex
# g.delete_at(sindex)
# result+1


# @param {Integer[]} g
# @param {Integer[]} s
# @return {Integer}
def find_content_children(g = [1,2,3], s = [1,1])
  i=0
  result=0
    s.each.with_index do |eachs,sindex|
      p "comparing #{eachs}"
      p '--'
      p g[i]
      p eachs
      if g[i] <= eachs
        p "#{g} - #{g[i]} (ind #{i})"
        result+=1 and
        g.delete_at(i)
      end
      p result
      
      i+=1 if i < g.length
    end
  return result

end

 find_content_children