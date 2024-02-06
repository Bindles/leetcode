# @param {String[]} strs
# @return {String[][]}
def group_anagrams(strs = ["eat","tea", "eta", "tan","ate","nat","bat"])
  arr=[]
  res=[]
    
end

#p group_anagrams

# del=[0,1,4,7]
# p a = [0,1,2,3,4,5,6,7,8]
# p a.delete_at(del)
# p a

sts = ["eat","tea","tan","ate","nat","bat"]

i=0
arrind=0
array=[]
res=[]
match=false
while i < 3
  p "comparing #{sts[i]}"
  sts.each.with_index do |st,ind| 
    p "#{sts[ind]} vs #{sts[i]}"
    #put below line in a group_by
    p sts[ind].chars.sort == sts[i].chars.sort && sts[ind] != sts[i]
    array << st and sts.delete_at(ind) and match=true if sts[ind].chars.sort == sts[i].chars.sort && sts[ind] != sts[i]
  end
  p'--'
  p array
  res.push(array)
i+=1
end
p res


sax = [1,2,3,4,5,6]
p sax.group_by{|xxx| xxx.even?}

sts = ["eat", "tea", "eta", "tan", "ate", "nat", "bat"]

result = sts.group_by do |str|
  str.chars.sort.join  # Generate a sorting key for each string
end.transform_values do |strings|
  strings.select { |str| str != strings.first }  # Exclude the first occurrence of each group
end

p result

sts = ["eat", "tea", "eta", "tan", "ate", "nat", "bat"]

# result = sts.group_by do |str|
#   str.chars.tally  # Generate a sorting key based on character counts
# end

# p result
# p '-'
# result.each do |k,v|
#   p v
# end

sts.group_by do |str|
  str.chars.tally  # Generate a sorting key based on character counts
end.map do |k,v|
  p v
end

sts.group_by do |str|
  str.chars.tally  # Generate a sorting key based on character counts
end.map { _2}

p sts.group_by { _1.chars.tally}.map { _2}


#WORKING... SO CLOSE 2HRS lol
sts = ["eat","tea","tan","ate","nat","bat"]
myhash=Hash.new(0)
#myhash[sts[1]]+=1
group=0
i=0
arrind=0
compared=[]
array=[]
res=[]
match=false
while i < 6
  p "coparing #{sts[i]}"
  sts.each.with_index do |st,ind| 
    p "#{sts[ind]} vs #{sts[i]}"
    #put below line in a group_by
    p sts[ind].chars.sort == sts[i].chars.sort && sts[ind] != sts[i]
    #compared << st if sts[ind].chars.sort == sts[i].chars.sort && sts[ind] != sts[i]
    array << st and myhash[st]+=ind unless array.include?(st) if sts[ind].chars.sort == sts[i].chars.sort && sts[ind] != sts[i]
  end

  p'--'
  p compared
  p array

i+=1
end
p res
p myhash
















