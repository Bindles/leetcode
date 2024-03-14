#* 1876. Substrings of Size Three with Distinct Characters
s = "xyzzaz"
# @param {String} s
# @return {Integer}
#* SOL 1  | 0..s.length-1 == 0...s.length || s.length.times do
def count_good_substrings(s)
    res = 0
    (s.length-2).times do |i|
        p substring = [s[i], s[i+1], s[i+2]].uniq
        res+=1 if substring.length == 3
    end
    res
end
p count_good_substrings(s)
p '-'
#* SOL 2
def count_good_substrings(s)
    (s.size-2).times.count { |i| s[i, 3].chars.uniq.size == 3  }
end
p count_good_substrings(s)
#* SOL 3
def count_good_substrings(s)
    (0..s.size-3).count { |i| s[i, 3].chars.uniq.size == 3  }
end
p count_good_substrings(s)
#* SOL 0 | WORKING | PASSES IN VS CODE BUT GIVES WEIRD ERROR LC
def count_good_substrings(s)
    ss = s.split('')
    maxsum=0

    (0...ss.size).each do |i|
        p ss[i-3+1..i]
        if ss[i-3+1..i].any? && ss[i-3+1..i].uniq.size == ss[i-3+1..i].size
            p maxsum+=1
        end
    end
    p maxsum
end
p count_good_substrings(s)

#* SOL 0.1 | 1 | WORKING | PASSES IN VS CODE BUT  GIVES WEIRD ERROR LC
def count_good_substrings(s)
    ss = s.split('');result=0
    (0...ss.size).each do |i|
        result+=1 if ss[i-3+1..i].any? && ss[i-3+1..i].uniq.size == ss[i-3+1..i].size
    end
    result
end
#* SOL 0.2 | WORKING | PASSES IN VS CODE BUT  GIVES WEIRD ERROR LC
def count_good_substrings(s)
    ss = s.split('');result=0
    (0...ss.size).each do |i|
        result+=1 if ss[i-3+1..i].any? && ss[i-3+1..i].uniq.size == 3
    end
    result
end


#* OTHER SOLS
#* GOOD THINKING
def count_good_substrings(s)
    s.chars.each_cons(3).reject(&:uniq!).count
end

#* TESTS
p [s[1], s[2], s[3]]
p s[1, 3]
i=3
p s[i-3+1..i]