#* 2575. Find the Divisibility Array of a String
word = "998244353"; m = 3
# @param {String} word
# @param {Integer} m
# @return {Integer[]}
def divisibility_array(word, m)
    result = []
    remainder = 0
    word.each_char do |char|
      remainder = ( remainder * 10 + char.to_i) % m
      if remainder % m == 0
        result << 1
      else
        result << 0
      end
    end
  result
end
p divisibility_array(word, m)