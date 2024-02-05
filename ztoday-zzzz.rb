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
  p s.split(' ').sort_by { |str| str.scan(/\d+/) }

end

# @param {String} s
# @return {String}
def sort_sentence(s = "is2 This1 a3")
  s = s.split()
  sorted_array = s.sort_by {|word| word[/\d/].to_i}
  p res = sorted_array.map { |word| word.gsub(word[/\d/], '') }
  p resa = sorted_array.select { |word| word.gsub(word[/\d/], '') }
  res.join(' ')
end
p sort_sentence

# # @param {String} s
# # @return {String}
# def sort_sentence(s)
#   s.split.sort_by{ |word| word[-1] }.map{ |word| word[0...-1] }.join(" ")
# end


# # @param {String} s
# # @return {String}
# def sort_sentence(s)
#   s.split(" ").sort_by { |s| s[-1] }.map { |s| s[0,s.length-1] }.join(" ")
# end


# # @param {String} s
# # @return {String}
# def sort_sentence(s)
#   s.split.sort { |a, b| a[-1] <=> b[-1] }.map { |a| a[0..-2] }.join(' ')
# end

# # @param {String} s
# # @return {String}
# def sort_sentence(s)
#   s
#     .split
#     .sort { |a, b| a[-1] <=> b[-1] }
#     .map { |a| a[0..-2] }
#     .join(' ')
# end

p sort_sentence

