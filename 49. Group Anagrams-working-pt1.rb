# @param {String[]} strs
# @return {String[][]}
def group_anagrams(strs = ["eat","tea", "eta", "tan","ate","nat","bat"])
  arr=[]
  res=[]
  #  arr << strs[1].split('').tally
  #  arr << strs[2].split('').tally
   strs.each do |str|
    p str
    arr << str.split('').tally.sort
   end
   p arr
   p '--'
  p arr[0] == arr[2]
  #while arr.size > 1
    # arr.each.with_index do |word,i| 
    #   unless i == 0
    #     puts "#{word} is a match to #{arr[0]}" if word == arr[0]
    #   end
    # end
    p arr
    p arr[0]
    p '-'
    res << arr.each.with_index {|word,del_ind| p res << word  and arr.delete_at(del_ind) if word == arr[0]}
    p arr.size
  #end
  p res
  p '-'
  p arr
    
end

group_anagrams

# del=[0,1,4,7]
# p a = [0,1,2,3,4,5,6,7,8]
# p a.delete_at(del)
# p a

