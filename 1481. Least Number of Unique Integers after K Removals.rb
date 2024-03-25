#* 1481. Least Number of Unique Integers after K Removals
arr = [4,3,1,1,3,3,2]
k = 3
# arr=[2,1,1,3,3,3]
# k=3
# arr = [5,5,4]
# arr = [1,1]
# k = 1
# @param {Integer[]} arr
# @param {Integer} k
# @return {Integer}


#* SOL 2
def find_least_num_of_unique_ints(arr, k)
  hash = arr.tally
  count = 0

  hash.each_value.sort.each do |val|
    if k >= val
      k -= val
      count += 1
    else
      break
    end
  end
  hash.size - count
end
p find_least_num_of_unique_ints(arr, k)

#* SOL 2 | EACH_VAL => .VALUES
def find_least_num_of_unique_ints(arr, k)
  hash = arr.tally
  count = 0

  hash.values.sort.each do |val|
    if k >= val
      k -= val
      count += 1
    else
      break
    end
  end
  hash.size - count
end
p find_least_num_of_unique_ints(arr, k)

#* SOL 2.1 | CONCISE
def find_least_num_of_unique_ints(arr, k)
  hash = arr.tally;count=0
  hash.values.sort.each do |val|
    k >= val ? (k -= val and count+=1) : break
  end
  hash.size - count
end
p find_least_num_of_unique_ints(arr, k)

#* WHY NOT JUST USE COUNT THEN?
def find_least_num_of_unique_ints(arr, k)
  hash = arr.tally
  hash.values.sort.count { |val| (k -= val) >= 0 }
end

#* ONELINER
def find_least_num_of_unique_ints(arr, k)
  arr.tally.values.sort.count{|val|0 > k -= val}
end
p find_least_num_of_unique_ints(arr,k)


#* ALL TIMEOUT ............
#* SOL 2
def find_least_num_of_unique_ints(arr, k)
  hash = arr.tally
  hash.values.sort.each do |val|
    if k >= val
      k -= val
      hash.delete(hash.key(val))
    else
      break
    end
  end
  hash.values.count
end
p find_least_num_of_unique_ints(arr, k)

#* SOL 2.1 | CONCISE
def find_least_num_of_unique_ints(arr, k)
  hash = arr.tally
  hash.values.sort.each do |val|
    k >= val ? (k -= val and hash.delete(hash.key(val))) : break
  end
  hash.values.count
end
p find_least_num_of_unique_ints(arr, k)

#* SOL 1 ORIG
def find_least_num_of_unique_ints(arr, k)
  hash = arr.tally
  hash.sort_by{|_key,val|val}.each do |_key,val|
      if k >= val
          k = k - val
          hash[_key] = 0
      else
          break
      end
  end
  hash.select{|_key,val| val >0}.count
end
p find_least_num_of_unique_ints(arr, k)
#* ..................................................


#*FAILED CONVERT TO HASH.VALUES
def find_least_num_of_unique_ints(arr, t)
  hash = arr.tally
  hash.values.sort_by{|val|val}.each do |val|
      if t >= val
          t = t - val
          hash[_key] = 0
      else
          break
      end
  end

  hash.select{|_key,val| val >0}.count
end


#**WORKING...........................
#*DONT WORK 1
def find_least_num_of_unique_ints(arr, k)
  lives = k
  x = arr.tally.to_a.sort_by(&:last)
  while lives > 1 do
    x.each do |nums|
      if nums[1] <= lives
        lives = lives - nums[1]
        x.shift
      else
        break
      end
    p x
    end
  end
  x.map(&:first).size
end
#p find_least_num_of_unique_ints(arr, k)

#* ONT WORK 1 PUTS
def find_least_num_of_unique_ints(arr, k)
  lives = k
  p x = arr.tally.to_a.sort_by(&:last)
  while lives > 0 do
    x.each do |nums|
      p "#{nums} | cost: #{nums[1]} | lives #{lives}"
      if nums[1] <= lives
        p "#{nums} | cost: #{nums[1]} | lives #{lives}"
        p lives = lives - nums[1]
        x.shift
      else
        break
      end
    p x
    end
  end
  p x.size
end

#* ........................................................