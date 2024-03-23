#* 1647. Minimum Deletions to Make Character Frequencies Unique
s = "aaabbbcc"
# @param {String} s
# @return {Integer}
#*
def min_deletions(s)
  t = Float::INFINITY
  s.chars.tally.values.sort.reverse.sum { |x| [x - t, 0].max.tap { t = [x + ~_1, 0].max } }
end
p min_deletions(s)

#*
def min_deletions(s)
  t=1/0.0 and s.chars.tally.values.sort.reverse.sum{|x|[x-t,0].max.tap{ t = [x+~_1,0].max } }
end
p min_deletions(s)

#*
def min_deletions(s)
    count = 0
    h = Hash.new {|h, k| h[k] = 0}

    for i in(0).upto(s.size - 1)
        key = s[i]
        h[key] += 1
    end

    arr = h.values.sort
    until arr.empty?
        num = arr[-1]
        if arr.count(num) > 1
            num -= 1
            count += 1
            arr.insert(0, num) unless num.zero?
            arr.sort!
        end
        arr.pop
    end
    count
end
p min_deletions(s)

#*
def min_deletions(s)
  aux(s.chars.tally.values.tally)
end

# @param {Hash} ff, frequency of the frequencies of chars in s
def aux(ff)
  keys = ff.keys.select{ |k| ff[k] > 1 }
  return 0 if keys.empty?

  max_key = keys.max
  ff[max_key] -= 1
  if max_key > 1
    ff[max_key - 1] ||= 0
    ff[max_key - 1] += 1
  end
  1 + aux(ff)
end
p min_deletions(s)