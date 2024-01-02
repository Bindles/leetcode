# @param {Integer[]} nums
# @return {Integer[][]}
def find_matrixz(nums = [1,3,4,1,2,3,1])
    myhash, mythash = Hash.new(0), Hash.new(0)
    aa=[]
    a = nums.tally
    p a.each_key
    mythash["a"]+=2
    p mythash


    p "true" if mythash["a"] == 2

    nums.each do |num|
      # myhash[num]+=1
      # p "#{num} => #{myhash[num]}"
      myhash[num] == 0 ? (myhash[num]+=1; p aa << num ): (myhash[num]+=1)
    end
    p myhash
end

def find_matrixa(nums = [1,3,4,1,2,3,1])
  z=nums.tally
  a=Array.new(nums.tally.size)


  p nums.tally.size
  p a.size
  p nums
  p '--'

  a.each do |i|
    p i
    
  end

  p a



end

def find_matrix(nums = [1,3,4,1,2,3,1])
    counts=nums.tally
    matrix = Array.new(counts.size) { [] }

    nums.each.with_index do |num,index|
    matrix[index] << num
  end
end
p find_matrixz

def distribute_numbers(nums)
  counts = nums.tally
  matrix = Array.new(counts.size) { [] }

  nums.each do |num|
    index = counts.keys.index(num)
    matrix[index] << num
  end

  matrix
end

# nums = [1, 3, 4, 1, 2, 3, 1]
# result = distribute_numbers(nums)

# result.each_with_index do |arr, i|
#   puts "Array #{i + 1}: #{arr}"
# end

