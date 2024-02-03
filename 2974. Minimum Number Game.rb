#(AMOUNT/VALUE)
#push/pop last
#unshift/shift first
# @param {Integer[]} nums
# @return {Integer[]}
#MY SOLUTION
def number_game(nums = [5,4,2,3])
  arr=[]
  i = 0
  ii = nums.length / 2
  while i < ii
    a = nums.min(2)
    arr.push(a.reverse)
    nums.delete_at(nums.index(a[0]))
    nums.delete_at(nums.index(a[1]))
    i+=1
  end
  arr.flatten
end


#MY SOLUTION | DEBUG PUTS
def number_game(nums = [5,4,2,3])
  arr=[]
  i = 0
  ii = nums.length / 2
  while i < ii
    p a = nums.min(2)
    p arr.push(a.reverse)
    p nums.delete_at(nums.index(a[0]))
    p nums.delete_at(nums.index(a[1]))
    p '-'
    p nums
    p arr
    i+=1
  end
  p arr.flatten
end
p number_game






#WORKING...
def number_game(nums = [5,4,2,3])
  arr=[]
  i = 0
  ii = nums.length / 2
  while i < ii
    p i
    p nums
    i.even?  ? (p arr.push(nums.pop(2).reverse)) : (p arr.push(nums.pop(2)))
    p nums
    i+=1
  end
  return arr.flatten.join.to_i.digits.reverse
end


def number_game(nums = [5,4,2,3])
  arr=[]
  i = 0
  ii = nums.length / 2
  while i < ii
    p nums
    p arr.push(nums.pop(2).reverse)
    p nums
    i+=1
  end
  return arr.flatten.join.digits.reverse
end


def number_game(nums = [5,4,2,3])
  arr=[]
  i = 0
  ii = nums.length / 2
  while i < ii
    p a = nums.min(2)
    p arr.push(a.reverse)
    p nums.delete(a[0])
    p nums.delete(a[1])
    p '-'
    p nums
    p arr
    i+=1
  end
  p arr.flatten
  #return arr.flatten.join.digits.reverse
end

#p number_game

# aaa = [1,2,3]
# aaa.pop
# p aaa