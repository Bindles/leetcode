#* 1338. Reduce Array Size to The Half
arr = [3,3,3,3,5,5,5,2,2,7]
#arr = [1,2,3,4,5,6,7,8,9,10,10]
# @param {Integer[]} arr
# @return {Integer}
def min_set_size(arr)
    cnt=0
    try=[]
    p arr.tally.to_a.sort_by(&:last).reverse.transpose.each {|a,b| p b}
    p arr.tally.to_a.sort_by(&:last).reverse.map(&:last)
    p xxx =arr.tally.to_a.sort_by(&:last).reverse.map(&:last)
      xxx.each do |c|
      p c
      p cnt
      if cnt <= 5
        p cnt = cnt + c
      end
    end

      xxx.each do |c|
      p c
      p cnt
      if try.sum < 8
        p try << c
      end
      p '-'
    end


    
end
p min_set_size(arr)


#*
def min_set_size(arr)
  try=[]
  xxx =arr.tally.to_a.sort_by(&:last).reverse.transpose

  xxx[1].each do |c|
      if try.sum < (arr.size / 2)
          p try << c
      end
  end
  try.size
end


#* 3 PASS
def min_set_size(arr)
  freq = arr.tally.values.sort.reverse
  n = arr.size / 2
  sum = 0
  result = 0
  
  freq.each do |frequency|
      sum += frequency
      result += 1
      break if sum >= n
  end
  result
end

def min_set_size(arr)
  p arr.tally.to_a.sort_by(&:last).reverse.transpose.each {|a,b| p b}
  p arr.tally.to_a.sort_by(&:last).reverse.map(&:last)
  p arr.tally.to_a.sort_by(&:last).reverse.inject([0, 0]) {|(r, total), (v, cnt)|
    return r if total * 2 >= arr.size
    [r + 1, total + cnt]
}
  
end
p min_set_size(arr)

def min_set_size(arr)
    p half = arr.size / 2
    x = arr.tally.to_a.sort_by(&:last).reverse.transpose
    p x[1]
    x[1].inject([]) do |acc, x|
        if acc.sum + x <= half
          acc << x
        else
          break acc
        end
    end.size

end
p min_set_size(arr)



def min_set_size(arr)
    arr.tally.to_a.sort_by(&:last).reverse.inject([0, 0]) {|(r, total), (v, cnt)|
        return r if total * 2 >= arr.size
        [r + 1, total + cnt]
    }.first
end
p min_set_size(arr)


arr = [4, 3, 2, 1]

# Calculate the sum of the array
total = arr.sum

# Take elements from the array until the sum exceeds 5 or sum/2
result = arr.take_while { |x| (total = x) > 2}

puts result.inspect # Output: [4, 3]
puts result.sum # Output: 7


arr = [4, 3, 2, 1]
target_sum = 5

p '-'
result = arr.take_while.with_index do |x, i|
  arr[0...i].sum < 4
end

# xx = arr.inject([0, 0]) {|(r, total), (v, cnt)|
#   return r if total * 2 >= arr.size
#   [r + 1, total + cnt]
# }.
# p xx

puts result.inspect # Output: [4, 3]


# Example frequencies array
frequencies = [5, 3, 2, 1]

# Given values
half_size = 5 / 2 # half_size = 2
sum = 0
set_size = 0

# Using each loop
frequencies.each do |frequency|
    sum += frequency
    set_size += 1
    break if sum >= half_size
end

puts "Each loop: Set size = #{set_size}"

# Reset values for reduce method
sum = 0
set_size = 0

# Using reduce method
set_size = frequencies.reduce(0) do |acc, frequency|
    break acc if acc >= half_size
    sum += frequency
    acc + 1
end

puts "Reduce method: Set size = #{set_size}"


# Example frequencies array
frequencies = [5, 3, 2, 1]

# Given values
half_size = 5 / 2 # half_size = 2
sum = 0
set_size = 0

# Using each loop
frequencies.each do |frequency|
    sum += frequency
    set_size += 1
    break if sum >= half_size
end

puts "Each loop: Set size = #{set_size}"

# Reset values for reduce method
sum = 0
set_size = 0

# Using reduce method
set_size = frequencies.reduce(0) do |acc, frequency|
    sum += frequency
    break acc if sum >= half_size
    acc + 1
end

puts "Reduce method: Set size = #{set_size}"


# Example frequencies array
frequencies = [5, 3, 2, 1]

# Given values
half_size = 5 / 2 # half_size = 2
sum = 0
set_size = 0

# Using each loop
frequencies.each do |frequency|
    sum += frequency
    set_size += 1
    break if sum >= half_size
end

puts "Each loop: Set size = #{set_size}"

# Reset values for reduce method
sum = 0
set_size = 0

# Using reduce method
set_size = frequencies.reduce(0) do |acc, frequency|
    sum += frequency
    break acc + 1 if sum >= half_size
    acc
end

puts "Reduce method: Set size = #{set_size}"

colors = ['red', 'green']
sizes = ['small', 'large']
p combinations = colors.product(sizes)

fruits = %w(apple banana orange)
enum_with_index = fruits.to_enum.with_index
p enum_with_index

enum_with_index.each do |fruit, index|
  puts "Fruit at index #{index}: #{fruit}"
end

