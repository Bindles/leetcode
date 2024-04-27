#* 2575. Find the Divisibility Array of a String
word = "998244353"; m = 3
# @param {String} word
# @param {Integer} m
# @return {Integer[]}
def divisibility_array(word, m):
  result = []
  rem = 0
  for char in word:
      rem = (rem * 10 +int(char))%m 
      if rem % m == 0:
          result.append(1)
      else:
          result.append(0)
          
  return result

print(divisibility_array(word, m))

        