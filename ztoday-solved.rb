# s = "is2 sentence4 This1 a3"
# i=1
# result=[]
# p s.split(' ')
# while i <= 4
#   s.split(' ').each do |sss|
#     if sss.include?(i.to_s) 
#       result << sss.gsub(i.to_s, '') 
#       i+=1
#     end

#   end
#   p result
#   p result.join(' ')
# end

# @param {String} s
# @return {String}
def sort_sentence(s)
  i=1
  result=[]
  len = s.split(' ').length
  p len
  while i <= len
    s.split(' ').each do |sss|
        if sss.include?(i.to_s) 
        result << sss.gsub(i.to_s, '') 
        i+=1
        end
    end
  end
  return result.join(' ')
end


p '----'
# @param {String} s
# @return {String}
def sort_sentence(s = "is2 This1 a3")
  i=1
  result=[]
  s.split(' ')
  len = s.split(' ').length
  p len
  while i <= len
    s.split(' ').each do |sss|
        if sss.include?(i.to_s) 
        result << sss.gsub(i.to_s, '') 
        i+=1
        end

    end
  end
  p result.join(' ')
end

sort_sentence

ssss ="pTY1"
p ssss.split(' ').class
ssss.split(' ').each do |ea|
  p ea
end
