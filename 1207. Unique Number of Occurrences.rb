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
unique_occurrences([1,2,2,1,1,3])
#CONCISE
def unique_occur(arr)
  arruniq, result = arr.uniq,[]
  arruniq.each {|a| result << arr.count(a)} && result.size == result.uniq.size
end
p unique_occur([1,2,2,1,1,3])

#USEHASH BELOW
def unique_occurrences_playground(arr)
  p arr.tally
  p arr.tally.values
  p arr.tally.values.uniq
end

def unique_occurrences(arr)
  arrtally = arr.tally
  arrtally.values.size ==  arrtally.values.uniq.size
end

def unique_occurrencesx(arr)
  arr.uniq.size == arr.tally.values.uniq.size
end 

p unique_occurrencesx([1,2,2,1,1,3])

