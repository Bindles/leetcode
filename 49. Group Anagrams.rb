sts = ["eat", "tea", "eta", "tan", "ate", "nat", "bat"]

result = sts.group_by do |str|
  str.chars.tally  # Generate a sorting key based on character counts
end
p result
p '-'
result.each do |k,v|
  p v
end

sts.group_by do |str|
  str.chars.tally  # Generate a sorting key based on character counts
end.map do |k,v|
  p v
end

a = sts.group_by do |str|
  str.chars.tally  # Generate a sorting key based on character counts
end.map { _2}
p a  

p sts.group_by { _1.chars.tally}.map { _2}

p sts.group_by { _1.chars.tally}.map(&:last)

sts = ["eat", "tea", "eta", "tan", "ate", "nat", "bat"]

result = sts.group_by do |str|
  str.chars.tally  # Generate a sorting key based on character counts
end.map(&:last)  # Using &:last to access the last element of each key-value pair

p result


# @param {String[]} strs
# @return {String[][]}
def group_anagrams(strs)
  dict = {}
  strs.each do |str|
    key = str.chars.sort.join
    dict[key] ||= []
    dict[key] << str
  end

  dict.values
end

def group_anagrams(strs = ["eat", "tea", "tan", "ate", "nat", "bat"])
  dict = {}
  strs.each do |str|
    puts "Current string: #{str}"
    
    key = str.chars.sort.join
    puts "Sorted key: #{key}"
    
    dict[key] ||= []
    puts "Current hash after initialization: #{dict}"
    
    dict[key] << str
    puts "Current hash after appending #{str}: #{dict}"
    
    puts "------------------------------------"
  end

  puts "Final hash: #{dict}"
  puts "Resulting groups of anagrams: #{dict.values}"
  
  dict.values
end

p group_anagrams






arr = []
current_group = []

(1..9).each do |num|
  arr << num
  if num % 3 == 0
    current_group << arr
    arr = []
  end
end

# Add the remaining elements to the current group
current_group << arr unless arr.empty?

p current_group



groups = [[]]  # Initialize groups with an empty array

(1..9).each do |num|
  if num % 3 == 0 && # -!groups.last.empty?
    groups << []  # Start a new group if num is a multiple of 3 and the last group is not empty
  end
  groups.last << num  # Append num to the last group
end

p groups
