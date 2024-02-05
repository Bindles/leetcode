# @param {String} s
# @return {String}
def sort_sentence(s = "is2 sentence4 This1 a3")
    z=["hey", "manzz", "cool"]
    i=1
    z.sort_by {|x| s.split(x).map(&:to_i)}.join(" ")
    # a = s.split(' ')
    # p a
    a=[1,2,3,4]
    #a.sort_by {|xx| -xx.even?}
end

p sort_sentence


s = "is2 sentence4 This1 a3"
i=1
result=[]
p s.split(' ')
while i <= 4
  s.split(' ').each do |sss|
    result << sss.gsub(i.to_s, '') if p sss.include?(i.to_s) 
    i+=1 if sss.include?(i.to_s) 

  end
  p result
end

s = "is2 sentence4 This1 a3"
i=1
result=[]
p s.split(' ')
while i <= 4
  s.split(' ').each do |sss|
    if sss.include?(i.to_s) 
      result << sss.gsub(i.to_s, '') 
      i+=1
    end

  end
  p result
end

#s.split(' ')[0].delete(0)
p s.split(' ')[0]

j="himan"
j+="z"
p j

p [1,2,3] - [1]