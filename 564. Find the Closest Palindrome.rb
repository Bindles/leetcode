#* 564. Find the Closest Palindrome
n ="1213"
# @param {String} n
# @return {String}
#*MY SOL
def nearest_palindromic(n)
    return (n.to_i - 1).to_s if n.length == 1
  
    build = ->(x) { x[0...(x.length + 1) / 2] + x[0...x.length / 2].reverse }
  
    candidates = [
      build.call(n),
      (10**(n.length - 1) - 1).to_s,
      (10**(n.length - 1) + 1).to_s,
      (10**n.length - 1).to_s,
      (10**n.length + 1).to_s,
      build.call((n.to_i - 10**(n.length / 2)).to_s),
      build.call((n.to_i + 10**(n.length / 2)).to_s)
    ]
    
    candidates = candidates.reject { |c| c == n }
    candidates = candidates.map { |c| [ (n.to_i - c.to_i).abs, c.to_i ] }
    min_distance = candidates.min_by { |x| x[0] }[0]
    
    candidates = candidates.select { |x| x[0] == min_distance }
    smallest_candidate = candidates.min_by { |x| x[1] }[1]
    smallest_candidate.to_s
end


#* CONCISE | WORKING ON THIS STILL FAILS END CASE IF BOTH DIST ARE EQUAL
def nearest_palindromic(n)
    return (n.to_i - 1).to_s if n.length == 1
  
    build = ->(x) { x[0...(x.length + 1) / 2] + x[0...x.length / 2].reverse }
  
    cands = [
      build.call(n), # == build[n]
      (10**(n.length - 1) - 1).to_s,
      (10**(n.length - 1) + 1).to_s,
      (10**n.length - 1).to_s,
      (10**n.length + 1).to_s,
      build.call((n.to_i - 10**(n.length / 2)).to_s),
      build.call((n.to_i + 10**(n.length / 2)).to_s)
    ]
    cands.reject{|x|x == n}.map{|x|[(n.to_i - x.to_i).abs, x.to_i] }.min_by{|val|val[0]}[1].to_s
end
  
  
#* WORKING. . .
#* WORKING | TIMEOUT =[
def nearest_palindromic(n)
    res=[]
    count=0
    i=n.to_i
    while i > 0
        i-=1
        if i.to_s == i.to_s.reverse
            res << i
            p count = n.to_i - i
            break
        end
    end
    i=n.to_i
    loop do
        i+=1
        if i.to_s == i.to_s.reverse
            res << i 
            break
        end
    end
    res.min_by{|num| (num - n.to_i).abs}
end
p nearest_palindromic(n)

#* WORKING PUTS
def nearest_palindromic(n)
    res=[]
    i=n.to_i
    p i
    while i > 0
        #num=i.to_i
        #num-1
        i-=1
        if i.to_s == i.to_s.reverse
            res << i 
            break
        end
    end
    p res
    i=n.to_i
    loop do
        p "i #{i}"
        #num=i.to_i
        #num-1
        i+=1
        p "i #{i}"
        if i.to_s == i.to_s.reverse
            p "up"
            res << i 
            break
        end
    end
    p res
    res.min_by{|num| (num - n.to_i).abs}

end
p nearest_palindromic(n)


#* TEST
p n.class