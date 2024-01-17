# @param {Integer[]} arr
# @return {Boolean}
def unique_occurrences(arr)
  result=[]
  arruniq = arr.uniq
  arruniq.each do |a|
      p arr.count(a)
      result << arr.count(a)  # <= realize i could have used hash
  end
  p result
  p result.uniq
  p result.size ==  result.uniq.size
end
p unique_occurrences([1,2,2,1,1,3])

def unique_occur(arr)
  arruniq, result = arr.uniq,[]
  arruniq.each {|a| result << arr.count(a)} && result.size == result.uniq.size
end
p unique_occurr([1,2,2,1,1,3])

