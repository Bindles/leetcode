#* 2150. Find All Lonely Numbers in the Array
#* LEARN => HASHMAP TO_H HASHARRAY HASH => ARRAY HASH <=> ARRAY HASH.EACH HASH.REJECT | GT | HASH GT
nums = [10,6,5,8]
# @param {Integer[]} nums
# @return {Integer[]}
#* SHOW DATA
def find_lonely(nums)
  p nums.each_with_index.to_h
  p nums.each_with_index.to_h.to_a
end
p find_lonely(nums)

#*BEST=>2
# @param {Integer[]} nums
# @return {Integer[]}
def find_lonely(nums)
  nums.tally.yield_self {|hmap|hmap.keys.reject{|num|hmap.key?(num - 1) || hmap.key?(num + 1) || hmap[num] > 1}}
end
p find_lonely(nums)

#* BEST=>1.1 | HMAP.KEYS
def find_lonely(nums)
  hmap = nums.tally
  hmap.keys.reject do |num|
    hmap.key?(num - 1) || hmap.key?(num + 1) || hmap[num] > 1
  end
end
p find_lonely(nums)

#* BEST => 1.0
def find_lonely(nums)
  hmap = nums.tally
  hmap.reject do |num, _count|
    hmap.key?(num - 1) || hmap.key?(num + 1) || hmap[num] > 1
  end.keys
end



#*MY SOL 3 | LEARNING EACH WITH OBJ
def find_lonely(nums)
  hmap = nums.each_with_object(Hash.new(0)) { |num, hash| hash[num] += 1 }
  
  hmap.reject do |num, _count|
    hmap.key?(num - 1) || hmap.key?(num + 1) || hmap[num] > 1
  end.keys
end
p find_lonely(nums)

puts 'END'

#* ORIGINAL SOL S)
#* I TRIED SO HARD TO MAKE THESE WORK | NO PASS =(
#* MY SOL
def find_lonely(nums)
  lonely_numbers = []
  num_index_map = nums.each_with_index.to_h

  num_index_map.each do |num, index|
    if !num_index_map.key?(num - 1) && !num_index_map.key?(num + 1)
      lonely_numbers << num
    end
  end
  lonely_numbers
end
p find_lonely(nums)


#* MY SOL 2.1 BETTER | REJECT | CONCISE
def find_lonely(nums)
  num_index_map = nums.each_with_index.to_h

  num_index_map.reject do |num|
    num_index_map.key?(num - 1) || num_index_map.key?(num + 1)
  end.keys
end
p find_lonely(nums)

#* MY SOL 2 BETTER | REJECT
def find_lonely(nums)
  p num_index_map = nums.each_with_index.to_h

  lonely_numbers = num_index_map.reject do |num, _index|
    num_index_map.key?(num - 1) || num_index_map.key?(num + 1)
  end.keys
  lonely_numbers
end
p find_lonely(nums)

#* WORKING | NO PASS
def find_lonely(nums)
  nums.select{|num| nums.count(num) == 1} 
end
def find_lonely(nums)
res=[]
nums.each.with_index do |num,i| 
  if nums.count(num) != 1
    next
  elsif nums.include?(num+1) 
    p num
    p nums.index(num+1), i
    res << num if nums.index(num+1) + 1 != i
    
  elsif nums.include?(num-1)
    p num
    p nums.index(num-1)
  end
end
res
end
p find_lonely(nums)


