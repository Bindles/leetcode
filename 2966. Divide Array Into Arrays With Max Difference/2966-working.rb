# @param {Integer[]} nums
# @param {Integer} k
# @return {Integer[][]}
def divide_array(nums = [1,3,4,8,7,9,3,5,1], k = 2)
    res=[]
     p nums.sort
    # p nums.each_cons(3) {|a| res << a if a.size==3}
     p res
end

p divide_array
incz=0
splittimes= (2)
i=0
a=[1,2,3,4,5,6]
b=[]
while i < splittimes do
  b << a.slice(incz,incz+3)
  incz+=3
  i+=1
end

#b << a.slice(incz,incz+3)
p b

(0..splittimes-1).each do |splitem|
  p b[splitem]
  p b[splitem].min
  p b[splitem].max
  p b[splitem].max - b[splitem].min <=3
  p b if b[splitem].max - b[splitem].min <=3
  p '--'
end

def zzz(nums = [1,3,4,8,7,9,3,5,1], k = 2)

  incz=0
  splittimes= 2
  i=0
  nums=[1,2,3,4,5,6]
  b=[]
  while i < splittimes do
    b << nums.slice(incz,incz+3)
    incz+=3
    i+=1
  end

  #b << nums.slice(incz,incz+3)
  p b
  p "k", k

  (1..splittimes-1).each do |splitem|
    p b[splitem]
    p b[splitem].min
    p b[splitem].max
    p b[splitem].max - b[splitem].min <= k
    p b if b[splitem].max - b[splitem].min <= k
    p '--'
  end


end

  def zzzz(nums = [1,3,4,8,7,9,3,5,1], k = 2)
    nums.sort!
    incz = 0
    cor=0
    splittimes = nums.length / 3
    p "splittimes", splittimes
    i = 0
    b = []
    no=[]
  
    while i < splittimes do
      b << nums.slice(incz, 3)
      incz += 3
      i += 1
    end
    p "nums", nums
    p b
    p "k", k
  
    (0..splittimes-1).each do |splitem|
      next if b[splitem].nil? # Skip nil elements
      p b[splitem]
      p b[splitem].min
      p b[splitem].max
      p b[splitem].max - b[splitem].min <= k
      p "adding =>", b[splitem]
      cor+=1 if b[splitem].max - b[splitem].min <= k
      p '--'
    end
    cor == splittimes ? (return b) : (return no)
  end
  
zzzz



def zzzz(nums = [1,3,4,8,7,9,3,5,1], k = 2)
  nums.sort!
  incz = 0
  cor=0
  splittimes = nums.length / 3
  i = 0
  b = []

  while i < splittimes do
    b << nums.slice(incz, 3)
    incz += 3
    i += 1
  end
  p "nums", nums
  p b
  p "k", k

  (0..splittimes-1).each do |splitem|
    next if b[splitem].nil? # Skip nil elements
    p b[splitem]
    p b[splitem].min
    p b[splitem].max
    p b[splitem].max - b[splitem].min <= k
    p "adding =>", b[splitem]
    cor+=1 if b[splitem].max - b[splitem].min <= k
    p '--'
  end
  cor == splittimes ? (return b) : (return Array.new)
end

zzzz


#ACCEPTED:

# @param {Integer[]} nums
# @param {Integer} k
# @return {Integer[][]}
def divide_array(nums = [1,3,4,8,7,9,3,5,1], k = 2)
  nums.sort!
  incz = 0
  cor=0
  splittimes = nums.length / 3
  i = 0
  b = []

  while i < splittimes do
    b << nums.slice(incz, 3)
    incz += 3
    i += 1
  end

  (0..splittimes-1).each do |splitem|
    next if b[splitem].nil? # Skip nil elements

    cor+=1 if b[splitem].max - b[splitem].min <= k
  end
  cor == splittimes ? (return b) : (return Array.new)
end


#var_name_ch:
#ACCEPTED:
def divide_array(nums = [1,3,4,8,7,9,3,5,1], k = 2)
  nums.sort!
  incz = 0
  correct_array_amount=0
  splittimes = nums.length / 3
  i = 0
  arr = []

  while i < splittimes do
    arr << nums.slice(incz, 3)
    incz += 3
    i += 1
  end

  (0..splittimes-1).each do |splitem|
    next if arr[splitem].nil? # Skip nil elements

    correct_array_amount+=1 if arr[splitem].max - arr[splitem].min <= k
  end
  correct_array_amount == splittimes ? (return arr) : (return Array.new)
end


#CONCISE
def divide_array(nums = [1,3,4,8,7,9,3,5,1], k = 2)
  nums.sort!
  i, incz, correct_array_amount = 0,0,0
  splittimes = nums.length / 3
  arr = []

  while i < splittimes do
    arr << nums.slice(incz, 3)
    incz += 3
    i += 1
  end

  (0..splittimes-1).each do |splitem|
    next if arr[splitem].nil? # Skip nil elements
    correct_array_amount+=1 if arr[splitem].max - arr[splitem].min <= k
  end
  correct_array_amount == splittimes ? (return arr) : (return Array.new)
end


#CONCISE
def divide_array(nums = [1,3,4,8,7,9,3,5,1], k = 2)
  nums.sort!
  i, incz, correct_array_amount = 0,0,0
  split_times = nums.length / 3
  arr = []

  while i < split_times do
    arr << nums.slice(incz, 3)
    incz += 3
    i += 1
  end

  (0..split_times-1).each do |splitem|
    correct_array_amount+=1 if arr[splitem].max - arr[splitem].min <= k
  end
  correct_array_amount == split_times ? (return arr) : (return Array.new)
end

#CONCISE
def divide_array(nums = [1,3,4,8,7,9,3,5,1], k = 2)
  nums.sort!
  i, incz, correct_array_amount = 0,0,0
  split_times = nums.length / 3
  arr = []

  while i < split_times do
    arr << nums.slice(incz, 3)
    incz += 3
    i += 1
  end

  (0..split_times-1).each {|splitem|correct_array_amount+=1 if arr[splitem].max - arr[splitem].min <= k }
  correct_array_amount == split_times ? (return arr) : (return Array.new)
end