# @param {Integer[]} nums
# @return {Integer}

#SOL1
def num_identical_pairs(nums = [1,2,3,1,1,3])
  res=0
  nums.each.with_index do |j,i|
    nums[((i+1)..nums.length)].each.with_index do |num,index|
      res+=1 if j == num && i < index+i+1
    end
  end
  res
end

#SOL1 ARRAY
def num_identical_pairs(nums = [1,2,3,1,1,3])
  res=[]
  nums.each.with_index do |j,i|
    nums[((i+1)..nums.length)].each.with_index do |num,index|
      res << [i,index+i+1] if j == num && i < index+i+1
    end
  end
  res.size
end

#SOL1 PUTS
def num_identical_pairs(nums = [1,2,3,1,1,3])
  res=[]
  nums.each.with_index do |j,i|
    nums[((i+1)..nums.length)].each.with_index do |num,index|
      p "#{j} (#{i}) vs #{num} (#{index+i+1 }) #{j == num} #{i < index+i+1 && j == num}"
      res << [i,index+i+1] if j == num && i < index+i+1
    end
  end
  p res
  res.size
end

#SOL1 FULL PUTS
def num_identical_pairs(nums = [1,2,3,1,1,3])
  res=[]
  nums.each.with_index do |j,i|
    #for num in nums[((i+1)..nums.length)] do
    nums[((i+1)..nums.length)].each.with_index do |num,index|
      p "#{j} (#{i}) vs #{num} (#{index+i+1 }) #{j == num} #{i < index+i+1 && j == num}"
      #p "#{i < index+i+1 && j == num}"
      res << [i,index+i+1] if j == num && i < index+i+1
    end
  end
  p res
  p res.size
end

#SOL2 | MAYBE WORSE | EASY READ
def num_identical_pairs(nums = [1,2,3,1,1,3])
  res=0
  (0...nums.size).each do |i|
      (i...nums.size).each do |j|
        p "#{nums[i]} (#{i}) vs #{nums[j]} (#{j}) #{nums[i]==nums[j]} #{i < j && nums[i]==nums[j]}"
          if nums[i]==nums[j] and i<j
              res+=1
          end
      end
  end
  return res
end
p num_identical_pairs

#SOL 3 | NICE | SIMPLE | EASY INTO ONE LINER MANY WAYS
def num_identical_pairs(nums = [1,2,3,1,1,3])
  count = Hash.new(0)
  nums.each { |num| count[num] += 1 }
  
  count.values.sum { |c| c * (c - 1) / 2 }
end

#SOL 3 | ALL CONCISE
def num_identical_pairs(nums = [1,2,3,1,1,3])
  Hash.new(0).tap{|cnt|nums.each {|num|cnt[num]+= 1} }.values.sum{|c| c * (c - 1) / 2} 
end

def num_identical_pairs(nums = [1,2,3,1,1,3])
  Hash.new(0).tap{|cnt|nums.each {|num|cnt[num]+= 1} }.values.sum {_1 * (_1 - 1) / 2}
end

def num_identical_pairs(nums = [1,2,3,1,1,3])
  nums.tally.values.sum { |c| c * (c - 1) / 2 }
end

#SOL 4 SIMPLE HASH
def num_identical_pairs(nums)
  frequency_count = Hash.new(0)
  num_identical_pairs_count = 0
  nums.each do |num|
    num_identical_pairs_count += frequency_count[num]
    frequency_count[num] += 1
  end
  num_identical_pairs_count
end

#SOL 5 | GROUP BY | AND ON ...
def num_identical_pairs(nums = [1,2,3,1,1,3])
  nums.group_by(&:itself).sum { |_num, occurrences| occurrences.size * (occurrences.size - 1) / 2 }
end

def num_identical_pairs(nums = [1,2,3,1,1,3])
  nums.group_by(&:itself).sum {_2.size * (_2.size - 1) / 2 }
end

def num_identical_pairs(nums)
  nums.tally.values.collect {|v| v * (v - 1) / 2 }.sum
end


def num_identical_pairs(nums = [1,2,3,1,1,3])
  nums.each_with_object(Hash.new(0)) { |num, count| count[num] += 1 }
      .values
      .sum { |c| c * (c - 1) / 2 }
end
def num_identical_pairs(nums = [1,2,3,1,1,3])
  nums.each_with_object(Hash.new(0)) { |num, count| count[num] += 1 }
      .values
      .then { |counts| counts.sum { |c| c * (c - 1) / 2 } }
end


#OTHER STUFF
array = [1, 2, 3, 4]

result = array.map do |num|
  num * 2
end.tap do |new_array|
  puts "After mapping: #{new_array.inspect}"
end.select do |num|
  num > 4
end

puts "Final result: #{result.inspect}"

