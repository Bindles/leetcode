# @param {Integer[]} piles
# @return {Integer}
def max_coins(piles = [2,4,1,2,7,8])
  res=[]
  while piles.length > 1
    p piles
    piles.delete_at(piles.index(piles.max))
    b = piles.delete_at(piles.index(piles.max))
    piles.delete_at(piles.index(piles.min))
    res << b
  end
  res.sum
end
p max_coins

def max_coins(piles = [2,4,1,2,7,8])
  sum=0
  while piles.length > 1
    piles.delete_at(piles.index(piles.max))
    b = piles.delete_at(piles.index(piles.max))
    piles.delete_at(piles.index(piles.min))
    sum+=b
  end
  sum
end
p max_coins

def max_coins(piles = [2,4,1,2,7,8])
  sum = 0
  while piles.length > 1
    max_index = piles.index(piles.max)  # use max_index
    piles.delete_at(max_index)
    b = piles.delete_at(piles.index(piles.max))
    piles.delete_at(piles.index(piles.min))
    sum += b
  end
  sum
end
p max_coins

def max_coins(piles = [2,4,1,2,7,8])
  piles.sort!
  sum=0
  (piles.length-2).step(by: 2).each { |i| sum+=piles[i]}
end


def max_coins(piles = [2,4,1,2,7,8])
  piles.sort!  # Sort the array in ascending order
  sum = 0
  p 'st'
  (0...(piles.length - 2)).step(2).each do |i|
    #sum += piles[i]  # Pick every second element from the end
    p piles[i]
  end
  p 's'
  sum
end

p max_coins

# @param {Integer[]} piles
# @return {Integer}
#*SOL 20 LOL | SOL 1 WORKS ALL BELOW WORKS
def max_coins(piles = [2,4,1,2,7,8])
  piles.sort!  # Sort the array in ascending order
  sum = 0
  (piles.length / 3).times do |i|
    sum += piles[piles.length - 2 * (i + 1)]  #pick every second element from the end
  end
  sum
end

#*SOL 2
def max_coins(piles)
  piles.sort!.last(2*piles.size/3).each_slice(2).sum(&:first)
end

#*SOL 2
# @param {Integer[]} piles
# @return {Integer}
def max_coins(piles)
  piles.sort.reverse[0...piles.size*(2.0/3)].each_slice(2).map(&:last).sum
end

# @param {Integer[]} piles
# @return {Integer}
def max_coins(piles)
  piles.sort()[piles.length()/3..].zip([1,0]*(piles.length()/3)).map {|e| e[0]*e[1]}.sum
end

def max_coins(piles) = piles.sort.last(2*piles.size/3).each_slice(2).inject(0) {|res, v| res + v.first }

# @param {Integer[]} piles
# @return {Integer}
def max_coins(piles)
  piles.sort!
  max_for_me = 0
  while (piles.length > 0) do
      piles.pop # alice
      max_for_me += piles.pop
      piles.shift # bob
  end
  max_for_me
end

# @param {Integer[]} piles
# @return {Integer}
def max_coins(piles)
  piles.sort!

  j = 0 
  i = piles.length-2
  sum = 0 

  while(i > j) do 
    sum += piles[i]
    i -= 2
    j += 1 
  end 

  sum 
end

#*END WORKS


# enumerable - [1,2,3,4,5,6]
# enumerable.each_slice(n) { |slice| block }
p 'es'
arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
arr.each_slice(3) { |slice| p slice }


arr=[]
(piles = [2,4,1,2,7,8])
    a = piles.delete piles.max
    p a
    p piles.index(piles.max)
    a = piles.delete_at(piles.index(piles.max))
    p a
    p piles.index(piles.max)
    p '--'
    p piles
    b = piles.delete_at(piles.index(piles.max))
    b = piles.delete_at(piles.index(piles.max))
    p a, b
    arr << a
    arr << b
    p piles
    p arr


array = [2,4,1,2,7,8].sort!

# Divide the array into chunks of size 3
slices = array.each_slice(3).to_a

# Transpose the array of arrays
transposed = slices.transpose

# Select the second and fifth elements from the transposed array
result = [transposed[1], transposed[4]]

p result.compact.flatten.sum
