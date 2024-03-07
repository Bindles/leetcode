#*893. Groups of Special-Equivalent Strings
# @param {String[]} words
# @return {Integer}
#*SOL THAT WORKS
def num_special_equiv_groups(words = ["abcd","cdab","cbad","xyzz","zzxy","zzyx"])
  result=[]
  words.each do |word|
    evens = word.chars.select.each_with_index { |_, i| i.even? }.sort!.join
    odds = word.chars.select.each_with_index { |_, i| i.odd? }.sort!.join
    result << evens + "-" + odds
  end and result.uniq.count
end
p num_special_equiv_groups

#*SOL I DID A BIT WRONG MANY FORMATS... ALL BELOW
def num_special_equiv_groups(words = ["abcd","cdab","cbad","xyzz","zzxy","zzyx"])
  words.map{|word|word.chars.tally}.group_by{|tally| tally}.values.map(&:length).max
end
p num_special_equiv_groups

def num_special_equiv_groups(words = ["abcd","cdab","cbad","xyzz","zzxy","zzyx"])
  words.map{|word|word.chars.tally}
  .group_by {|w| w}
  .values.map(&:length).max
end
p num_special_equiv_groups

def num_special_equiv_groups(words = ["abcd","cdab","cbad","xyzz","zzxy","zzyx"])
  words.map do |word|
    word.chars.tally
  end.group_by do |w| 
    w
  end.values.map(&:length).max
end
p num_special_equiv_groups

def num_special_equiv_groups(words = ["abcd","cdab","cbad","xyzz","zzxy","zzyx"])
  b = words.map do |word|
    word.chars.tally
  end
  grouped = b.group_by {|w| w}
  group_counts = grouped.values.map(&:length)
  p group_counts
  p group_counts.max
end
p num_special_equiv_groups

def num_special_equiv_groups(words = ["abc","acb","bac","bca","cab","cba"])
    a = "abc".chars.tally
    p a
    b = words.map do |word|
      word.chars.tally
    end
    p '-'
    p grouped = b.group_by {|w| w}
    p 'g'
    # Iterate over each group
    grouped.each do |key, value|
      # Print the key (character occurrences) and the number of words in the group
      puts "Group: #{key}, Count: #{value.length}"
      # Perform other operations on the group as needed
    end
    group_counts = grouped.values.map(&:length)
    p group_counts
    p group_counts.max
end
p num_special_equiv_groups