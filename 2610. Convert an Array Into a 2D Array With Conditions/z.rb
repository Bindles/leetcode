def find_matrix(nums = [1,3,4,1,2,3,1])
    counts=nums.tally
    matrix = Array.new(counts.size-1) { [] }

    matrix.size.times do |ind|
      counts.each do |key, value|
        if value > 0
          p "#{key} #{value}"  
          matrix[ind] << key
          counts[key]-=1 
        end
        p counts
      end
    end
    p matrix

    # matrix.size.times do |i|
    #   matrix[i] << "full"

    # end 
    # p matrix
end
p find_matrix