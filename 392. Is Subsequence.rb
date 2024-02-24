# @param {String} s
# @param {String} t
# @return {Boolean}
#*SOL 1 | 2 POINTER
def is_subsequence(s = "abc", t = "ahbgdc")
  s_pointer = 0
  t_pointer = 0
  
  while s_pointer < s.length && t_pointer < t.length
    if s[s_pointer] == t[t_pointer]
      s_pointer += 1
    end
    t_pointer += 1
  end
  s_pointer == s.length
end

#SOL 1 | 2 POINTER | PUTS
def is_subsequence(s = "abxc", t = "ahbgdc")
  s_pointer = 0
  t_pointer = 0
  
  while s_pointer < s.length && t_pointer < t.length
    puts "Comparing #{s[s_pointer]} at index #{s_pointer} in s with #{t[t_pointer]} at index #{t_pointer} in t"
    if s[s_pointer] == t[t_pointer]
      puts "Characters #{s[s_pointer]} match, moving s_pointer forward by 1"
      s_pointer += 1
    end
    puts "Moving t_pointer forward by 1"
    t_pointer += 1
  end
  
  if s_pointer == s.length
    puts "s is a subsequence of t"
    return true
  else
    puts "s is not a subsequence of t"
    return false
  end
end
p is_subsequence

#SOL 2 | ONELINER
def is_subsequence(s = "abc", t = "ahbgdc")
  s.chars.all?{t.slice! /.*?#{_1}/}
end
p is_subsequence


#WORKING | DIDNT WORK
def is_subsequence(s = "abc", t = "ahbgdc")
  a=Hash.new(0)
    t.chars.each_with_index do |char, index|
      p "#{char} #{index}" if s.include?(char)
      a[char] = index if s.include?(char)
    end
end
p is_subsequence