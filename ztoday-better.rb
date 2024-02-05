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

end

a = %w[hi2 guy3 cool1 snake4]

sorted_a = a.sort_by { |str| str.scan(/\d+/) }
puts sorted_a.inspect
inc=1
result=[]
s = sorted_a.join(' ')
# sorted_a.each do |sa|
#   sa.gsub(inc.to_s, '')
#   inc+=1
# end
(1..4).each do |i|
  result << s.gsub(i.to_s, '')
end
#p sorted_a
p result

p a.select { |str| str.scan(/\d+/) }
sorted_a = a.map { |str| str.scan(/\d+/) }
puts sorted_a.inspect

