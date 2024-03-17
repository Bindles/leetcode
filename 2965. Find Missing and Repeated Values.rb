#* 2965. Find Missing and Repeated Values
#grid = [[1,3],[2,2]]
grid = [[9,1,7],[8,9,2],[3,4,6]]
# @param {Integer[][]} grid
# @return {Integer[]}
#* SOL 1 | HAD TO GET HELP | MADE THESE 2 FROM THE INTERESTING SOLUTIONS
def find_missing_and_repeated_values(grid)
  flattened_grid = grid.flatten
  grid_size = grid.size
  repeated_value = flattened_grid.tally.find {|_k, v| v == 2 }[0]
  all_values = (1..grid_size**2).to_a
  missing_values = all_values - flattened_grid
  [repeated_value, *missing_values]
end
p find_missing_and_repeated_values(grid)
#* SOL 2
def find_missing_and_repeated_values(grid)
  flat_grid = grid.flatten
  tally = flat_grid.tally
  repeated = tally.key(2)
  missing = (1..flat_grid.length).find { |i| !tally[i] }
  [repeated, missing]
end
p find_missing_and_repeated_values(grid)

#* INTERESTING SOLUTIONS
#*1
def find_missing_and_repeated_values(grid)
  [grid.flatten.tally.find { _2 == 2 }[0], *(1..grid.size**2).to_a - grid.flatten]  
end
#* 2
def find_missing_and_repeated_values(grid)
  hash = {}
  repeated, missing = nil
  flat_grid = grid.flatten

  flat_grid.each do |element|
    hash[element] = (hash[element] || 0) + 1 #* INFO BELOW
    repeated = element if hash[element] > 1
  end

  (1..flat_grid.length).each do |i|
    missing = i unless hash[i]
  end
  [repeated, missing]
end
p find_missing_and_repeated_values(grid)

# flat_grid.each do |element|
#hash[element] = (hash[element] || 0) + 1 IS THE SAME AS ?

#   hash[element] ||= 0  # This line is unnecessary if you're sure each element exists at least once
#   hash[element] += 1
#   repeated = element if hash[element] > 1
# end

