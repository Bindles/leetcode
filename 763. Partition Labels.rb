#* 763. Partition Labels
s = "ababcbacadefegdehijhklij"
# @param {String} s
# @return {Integer[]}
# * SOL 1
def partition_labels(s)
  res = []
  hash = {}
  set = Set.new()
  count = 0
  hash=s.chars.tally
  s.chars do |c|
    hash[c] -= 1
    count += 1
    set << c
    if hash[c] == 0
      set.delete(c)
      if set.length == 0
        res << count
        count = 0
      end
    end
  end
  res
end
p partition_labels(s)

#* SOL 2 | REDOING QUESTION A FEW WEEKS LATER
def partition_labels(s)
  h = Hash.new(0)
  s.each_char.with_index { |c, i| h[c] = i }
  start, end_, result = 0, 0, []
  
  s.each_char.with_index do |c, i|
    end_ = [end_, h[c]].max
    if end_ == i
      result << end_ - start + 1
      start = i + 1
    end
  end
  result
end
p partition_labels(s)

words = %w[hi bye guy cool guy]
hh = Hash.new(0)
words.each {|word| hh[word] += 1}
p hh


hh = {}
words.each { |word| hh[word] ||= 0; hh[word] += 1 }
p hh

hhh = {}
words.each { |word| hhh[word].nil? ? hhh[word] = 0 : hhh[word]; hhh[word] += 1 }
p hhh

# * NO GOOD
hhhh = {}
words.each { |word| hhhh[word].nil? ? hhhh[word] = 0 : hhhh[word] += 1 }
p hhhh

arr=[1,2,3,3,4,4,4]
# arr.replace(3,9)
# p arr
#[1,2,9,9,4,4,4]

#arr.map! { |x| x == 3 ? 9 : x }
arr.map! {_1==3 ? 9 : _1 }
p arr