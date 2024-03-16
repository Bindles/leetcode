#* 2843. Count Symmetric Integers
# @param {Integer} low
# @param {Integer} high
# @return {Integer}
low = 1
high = 100
def count_symmetric_integers(low, high)
  res=[]
  (low..high).each do |i|
    if i.to_s.length > 1
    res << i if i.to_s.reverse == i.to_s
    end
  end
  res
end
p count_symmetric_integers(low,high)