#* 131. Palindrome Partitioning
s = "aab"
# @param {String} s
# @return {String[][]}
#* SOL 1
def partition(s, index=s.size-1)
  return [[]] if index < 0
  (0..index).sum([]) do |start_index|
    substr = s[start_index..index]
    if substr != substr.reverse
      []
    else
      partition(s, start_index - 1).map { |subarray| subarray << substr }
    end
  end
end
p partition(s)

#* SOL 2
p partition(s)
def partition(s, index=s.size-1)
  return [[]] if index < 0
  (0..index).sum([]) do |start_index|
    substr = s[start_index..index]
    substr == substr.reverse ? partition(s, start_index - 1).map { |subarray| subarray << substr } : []
  end
end
p partition(s)

#* SOL 3 | REDUCE
def partition(s)
  index = s.size - 1
  return [[]] if index < 0
  (0..index).reduce([]) do |result, start_index|
    substr = s[start_index..index]
    substr == substr.reverse ? result + partition(s[0...start_index]).map { |subarray| subarray + [substr] } : result
  end
end
partition(s)

