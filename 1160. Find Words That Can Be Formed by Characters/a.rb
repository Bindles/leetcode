# @param {String[]} words
# @param {String} chars
# @return {Integer}
def count_characters(words, chars)
a=0
b=[]
chars.split('').sort.join
    for word in words
        # word.split('')
        puts chars.split('').sort.join
        puts "includes?"
        puts word.split('').sort.join
        puts word if words.include?(chars)
        # a += words.length if chars.split('').sort.join.include?(word.split('').sort.join)
        puts chars.split('').sort.join.include?(word.split('').sort.join)
    end
  p 'hi'
  p a
  b = "atach".split('').sort.join.scan?("cat".split('').sort.join)
  c = "atach".split('').sort.join
  d = "cat".split('').sort.join
  
  p b
  p a
  p c, d
  
  #puts "sih".split('').sort.include?("hi").split('').sort
end

count_characters(["cat","bt","hat","tree"], "atach")