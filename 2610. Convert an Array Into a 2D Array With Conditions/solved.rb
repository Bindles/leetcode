def find_matrix(nums = [1, 3, 4, 1, 2, 3, 1])
  counts = nums.tally
  matrix = []

  until counts.values.all?(&:zero?)
    current_row = []
    
    counts.each do |key, value|
      if value > 0
        current_row << key
        counts[key] -= 1
      end
    end
    
    matrix << current_row
  end

  p matrix
end

find_matrix