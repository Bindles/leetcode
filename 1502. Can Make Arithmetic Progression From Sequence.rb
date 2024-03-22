#* 1502. Can Make Arithmetic Progression From Sequence
arr = [3,5,1]
# @param {Integer[]} arr
# @return {Boolean}
#* MY SOL 1
def can_make_arithmetic_progression(arr)
  arr.sort!
  res = arr.map.with_index{|x,i|(i != arr.length-1) ? (x - arr[i+1]).abs : nil}.compact
  res.uniq.size == 1
end
p can_make_arithmetic_progression(arr)

#* SOL 1.1 | CONCISE
def can_make_arithmetic_progression(arr)
  arr.sort!
  arr.map.with_index{|x,i|(i != arr.length-1) ? (x - arr[i+1]).abs : nil}.compact.uniq.size == 1
end
p can_make_arithmetic_progression(arr)

#* TYPED OUT
def can_make_arithmetic_progression(arr)
  arr.sort!
  i = 0
  diff = (arr[i] - arr[i+1])
  while (i+1) < arr.length
      return false if diff != (arr[i] - arr[i+1])
      i += 1
  end
  true
end
p can_make_arithmetic_progression(arr)

#* WORKING. . . [works]
def can_make_arithmetic_progression(arr)
    arr.sort!
    a = arr.map.with_index{|x,i|(i != arr.length-1) ? (x - arr[i+1]).abs : nil}.compact
    #arr.map.with_index{|x,i|x == arr[-1]}
    a.uniq.size == 1
end
p can_make_arithmetic_progression(arr)