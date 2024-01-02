def find_matrix(nums = [1, 3, 4, 1, 2, 3, 1])
  counts = nums.tally
  matrix = Array.new(counts.size) { [] }

  matrix.size.times do |ind|
    counts.each do |key, value|
      if value > 0
        matrix[ind] << key
        counts[key] -= 1
      end
    end
  end

  p matrix
end

find_matrix