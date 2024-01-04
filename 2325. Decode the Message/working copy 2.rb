# @param {String} key
# @param {String} message
# @return {String}
def decode_message(key = "the quick brown fox jumps over the lazy dog", message = "vkbs bs t suepuv")

  hasher={}
  #hasher["a"]=1
  p hasher
  key = "the quick brown fox jumps over the lazy dog"
  message = "vkbs bs t suepuv"

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
  kookoo=[]
  p message
  message.each_char do |fuk|
    p hasher[fuk]
    #kookoo << hasher[fuk] unless hasher[fuk].nil?
  hasher[fuk].nil? ? (kookoo << " ") : (kookoo << hasher[fuk])
  end
  p kookoo
  p '--'
  p hasher["v"]

  number = 3
  p letter = ('a'.ord + number - 1).chr



end

decode_message