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

  def zzzz(nums = [1,3,4,8,7,9,3,5,1], k = 2)
    nums.sort
    incz = 0
    splittimes = nums.length / 3
    p "splittimes", splittimes
    i = 0
    b = []
  
    while i < splittimes do
      b << nums.slice(incz, 3)
      incz += 3
      i += 1
    end
    p nums
    p b
    p "k", k
  
    (0..splittimes-1).each do |splitem|
      next if b[splitem].nil? # Skip nil elements
      p b[splitem]
      p b[splitem].min
      p b[splitem].max
      p b[splitem].max - b[splitem].min <= k
      p b if b[splitem].max - b[splitem].min <= k
      p '--'
    end
  end
  
  zzzz()
  



end
p zzz