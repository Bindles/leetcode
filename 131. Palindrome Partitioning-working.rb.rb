#* WORKING ...
#* 131. Palindrome Partitioning
s = "aab"
# @param {String} s
# @return {String[][]}

def partition(s)
    st=0
    arr=[]
    s.chars.each.with_index do |char,i|
      p i
      p s[st..i]
      if s[st..i] != s[st..i].reverse && s.length > 1
        p s[st..i-1]
        p char
        arr << s[st..i-1]
        st=i
      end
      if i == s.length-1 && s.length > 1
        arr << char
      end
    end
    return [s.split(''), arr]
end


def partition(s)
  end_index=s.size-1
  return [[]] if end_index < 0
  (0..end_index).sum([]) do |start_index|
    substr = s[start_index..end_index]
    if substr != substr.reverse
      []
    else
      partition(s, start_index - 1).map { |subarray| subarray << substr }
    end
  end
end

p partition(s)

arr = ["a", "a", "b", "aa", "b"]
result = arr.chunk_while(&:==).to_a
p result
