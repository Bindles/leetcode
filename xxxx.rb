# @param {Integer[]} candidates
# @param {Integer} target
# @return {Integer[][]}
def combination_sum(candidates, target)
    candidates.each.with_index do |cand, index|
        p index
        index..3.times do |a|
        p candidates[index]
        end
    end
    
    candidates.each.with_index do |a, ind|
        candidates.each.with_index do |cand, index|
            unless cand == candidates[ind]
                p candidates
            end
        end
    end

end


def combination_sum(candidates, target)
  result = []
  find_combinations(candidates, target, 0, [], result)
  result
end

def find_combinations(candidates, target, start, current, result)
  puts "Target: #{target}, Current: #{current}, Result: #{result}"
  
  if target == 0
    puts "Adding to result: #{current}"
    result << current.dup
    return
  end

  (start...candidates.length).each do |i|
    next if candidates[i] > target

    puts "Adding candidate #{candidates[i]} to current"
    current << candidates[i]
    find_combinations(candidates, target - candidates[i], i, current, result)
    puts "Removing last candidate from current: #{candidates[i]}"
    current.pop
  end
end

# Example usage:
candidates1 = [2, 3, 6, 7]
target1 = 7
puts "Example 1: #{combination_sum(candidates1, target1)}"

candidates2 = [2, 3, 5]
target2 = 8
puts "Example 2: #{combination_sum(candidates2, target2)}"

candidates3 = [2]
target3 = 1
puts "Example 3: #{combination_sum(candidates3, target3)}"
p 123.split('')