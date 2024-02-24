# @param {Integer[]} nums
# @param {Integer} original
# @return {Integer}





def find_final_value(nums, original)
  original *= 2 while nums.include?(original);original
end

def find_final_value(nums, original)
  while nums.include?(original)
      original *= 2
  end
  original
end

def find_final_value(nums = [5,3,6,1,12], original = 3)
    #nums.find(original).each {|n| p original +=10}
    a=0
    until a == nil
      p a = nums.map {|n| n * 2 if n == 3} 
    end
end
p find_final_value