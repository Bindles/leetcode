#* 283. Move Zeroes
nums = [0,1,0,3,12]
# @param {Integer[]} nums
# @return {Void} Do not return anything, modify nums in-place instead.
#*
nums = [0,1,0,3,12]
def move_zeroes(nums)
  i = 0
  (0...nums.size).each do |j|
      p "#{nums[j]}(#{j}) #{nums[j].zero?} | #{nums[i]}(#{i}) <=> #{nums[j]}(#{j})"
      if !nums[j].zero?
          nums[i], nums[j] = nums[j], nums[i]
          i += 1
      end
      p nums
  end
  nums
end
p move_zeroes(nums)

def move_zeroes(nums)
    i = 0
    (0...nums.size).each do |j|
        unless nums[j].zero?
            nums[i], nums[j] = nums[j], nums[i]
            i += 1
        end
    end
    nums
end
p move_zeroes(nums)
p '---'
#*
def move_zeroes(nums)
    c=0
    nums.each_index do |i|
        if nums[i] != 0
        nums[c] = nums[i]
        c+=1
        end
    end
    (c...nums.size).each do |j|
        nums[j] = 0    
    end 
    nums
end
p move_zeroes(nums)
#* REMOVE A REDUNDANCY
def move_zeroes(nums)
    c=0
    nums.each_index do |i|
        if nums[i] != 0
        nums[c] = nums[i]
        c+=1
        end
    end
    (c...nums.size).each do 
        nums[c] = 0    
    end 
    nums
end
p move_zeroes(nums)

def move_zeroes(nums)
    len = nums.size
    nums.delete(0)
    (len - nums.size).times { nums.push(0) }
end
p move_zeroes(nums)


#*
def move_zeroes(nums)
    @ins=0
    nums.reverse_each.with_index do |i,ind|
        if i==0
        nums.push(nums.delete_at((nums.size-1)-ind))
        end   
    end 
    nums
end
p move_zeroes(nums)

def move_zeroes(nums)
    number_of_zeros = nums.select { |a| a if a==0}.count
    nums.delete(0)
    nums.concat(Array.new(number_of_zeros, 0))
end
p move_zeroes(nums)