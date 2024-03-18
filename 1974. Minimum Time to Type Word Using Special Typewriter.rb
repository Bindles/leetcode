#* 1974. Minimum Time to Type Word Using Special Typewriter
word = "zjpc"
# @param {String} word
# @return {Integer}
#* SOL 1
def min_time_to_type(word)
  current_char = 'a'
  time = 0
  word.each_char do |char|
    diff = (char.ord - current_char.ord).abs
    time += [diff, 26 - diff].min + 1
    current_char = char
  end
  time
end

#* WORKING:

a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p,q,r,s,t,u,v,w,x,y,z= (1..26).to_a




  hash = Hash.new(0)
  ('a'..'z').each.with_index{|l,i| hash[l] = i+1}
  p hash

  #zjpc

  #x=>24  ==> a=>1
  p dist = 24 - 1
  p 26 - 24


# @param {String} word
# @return {Integer}
def min_time_to_type(word)
  count=0
  dist=0
  prev=hash['a']
  %w[z j p c].each do |x|

    dist = hash[x] - prev
    p "this #{hash[x]} #{hash[prev]} #{dist}"
    dist = 26 - dist if dist > 13
    p "newdist #{dist}"
    #count += hash[x] - hash[prev]
    p "DDD #{dist}"
    p '-'
    p hash[x]
    prev=hash[x]
    p prev
    p dist

  end
end

def min_time_to_type(word)
  hash = Hash.new(0)
  ('a'..'z').each.with_index { |l, i| hash[l] = i + 1 }
  p hash

  
  count = 0
  prev = 1  
  
  word.each_char do |x|
    dist = (hash[x] - prev).abs
    dist = 26 - dist if dist > 13  
    count += dist + 1  
    prev = hash[x]  
  end

  count
end

puts min_time_to_type("abc")  
puts min_time_to_type("bza")  
puts min_time_to_type("zjpc")  
