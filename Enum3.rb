
# @param {Integer[][]} mat
# @return {Integer[][]}
def diagonal_sort(mats=[[3,3,1,1],[2,2,1,2],[1,1,1,2]])
    

  # Step 1: Creating a Hash to Store Diagonals
  diagonals = Hash.new { |hash, key| hash[key] = [] }
  puts "Step 1: Initialized diagonals hash."

mats.each_with_index do |row, i|
  row.each_with_index do |num, j|
    diagonal_index = i - j
    diagonals[diagonal_index] ||= []  # Ensure the diagonal index exists in the hash
    diagonals[diagonal_index] << num
    puts "Step 2: Added element #{num} to diagonal at index #{diagonal_index}."
  end
end
  puts "Step 2: Finished iterating over the matrix."

  # Step 3: Sorting Each Diagonal
  diagonals.each do |_, diagonal|
    diagonal.sort!
    puts "Step 3: Sorted diagonal: #{diagonal}."
  end
  puts "Step 3: Finished sorting diagonals."

# Step 4: Transposing the Sorted Diagonals
sorted_mat = diagonals.sort.to_h.values
puts "Step 4: Sorted diagonals: #{sorted_mat.inspect}"

# Ensure all rows have the same size
row_sizes = sorted_mat.map(&:size)
puts "Row sizes: #{row_sizes.inspect}"
if row_sizes.uniq.size != 1
  raise "Error: Not all rows have the same size!"
end

sorted_mat = sorted_mat.transpose
puts "Step 4: Transposed sorted diagonals: #{sorted_mat.inspect}"


  # Step 5: Returning the Sorted Matrix
  puts "Step 5: Returning sorted matrix."
  p sorted_mat
end
p diagonal_sort


# def diagonal_sort(mat)
#   # Step 1: Create a hash to store the diagonals
#   diagonals = Hash.new { |hash, key| hash[key] = [] }

#   # Step 2: Iterate over the matrix and store elements in the diagonals hash
#   mat.each_with_index do |row, i|
#     row.each_with_index do |num, j|
#       diagonals[i - j] << num
#     end
#   end

#   # Step 3: Sort each diagonal
#   diagonals.each { |_, diagonal| diagonal.sort! }

#   # Step 4: Transpose the diagonals back into the matrix
#   sorted_mat = diagonals.sort.to_h.values.transpose

#   sorted_mat
# end

# # Test cases
# mat1 = [[3, 3, 1, 1], [2, 2, 1, 2], [1, 1, 1, 2]]
# mat2 = [[11, 25, 66, 1, 69, 7], [23, 55, 17, 45, 15, 52], [75, 31, 36, 44, 58, 8], [22, 27, 33, 25, 68, 4], [84, 28, 14, 11, 5, 50]]

# puts "Original matrix:"
# puts mat1.map(&:inspect)
# puts "\nSorted matrix:"
# puts diagonal_sort(mat1).map(&:inspect)

# puts "\nOriginal matrix:"
# puts mat2.map(&:inspect)
# puts "\nSorted matrix:"
# puts diagonal_sort(mat2).map(&:inspect)
