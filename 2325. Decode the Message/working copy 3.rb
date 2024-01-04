# @param {String} key
# @param {String} message
# @return {String}
def decode_message(key = "the quick brown fox jumps over the lazy dog", message = "vkbs bs t suepuv")

  hasher={}
  #hasher["a"]=1
  p hasher

  a=key.split('').uniq
  a.delete(" ")
  p a
  b = a.join
  p '--'

  b.each_char.with_index(1) do |z,ind|
    p z
    hasher[z]= ('a'.ord + ind - 1).chr
  end
  p hasher

  hasher.each do |x, y|
  p "#{x} => #{y}"
  end
  result=[]
  p message
  message.each_char do |fuk|
    p hasher[fuk]
    #result << hasher[fuk] unless hasher[fuk].nil?
  hasher[fuk].nil? ? (result << " ") : (result << hasher[fuk])
  end
  p result
  p '--'
  p hasher["v"]

  number = 3
  p letter = ('a'.ord + number - 1).chr



end

decode_message