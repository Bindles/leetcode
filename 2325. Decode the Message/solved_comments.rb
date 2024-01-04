# @param {String} key
# @param {String} message
# @return {String}

#HOW TO TURN A NUMBER INTO CORREPSONDING CHAR
#  number = 3
#  p letter = ('a'.ord + number - 1).chr

def decode_message(key = "the quick brown fox jumps over the lazy dog", message = "vkbs bs t suepuv")
  result=[]
  hasher={}

  a=key.split('').uniq
  a.delete(" ")
  b = a.join

  b.each_char.with_index(1) do |z,ind|
    hasher[z]= ('a'.ord + ind - 1).chr
  end
  p hasher
  # hasher.each do |x, y|
  # p "#{x} => #{y}"
  # end
  message.each_char do |fuk|
    #p hasher[fuk]
    #result << hasher[fuk] unless hasher[fuk].nil?
  hasher[fuk].nil? ? (result << " ") : (result << hasher[fuk])
  end
return result.join
end

p decode_message